#!/usr/bin/python3

from cmath import rect
from matplotlib import pyplot as plt
import numpy as np
import rospy
import tf
import math

from sensor_msgs.msg import LaserScan
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist, Point

from math import atan2, pi, radians, sqrt

class Controller:
    
    def __init__(self) -> None:
        
        rospy.init_node("controller" , anonymous=False)
        
        ## self.laser_subscriber = rospy.Subscriber("/scan" , LaserScan , callback=self.laser_callback)
        sub = rospy.Subscriber("/odometry/filtered", Odometry, self.get_heading)
        self.cmd_publisher = rospy.Publisher('/cmd_vel' , Twist , queue_size=10)

        # getting specified parameters
        self.linear_speed = rospy.get_param("/controller/linear_speed") # m/s
        self.angular_speed = rospy.get_param("/controller/angular_speed") # rad/s
        self.goal_angle = radians(rospy.get_param("/controller/goal_angle")) # rad
        self.stop_distance = rospy.get_param("/controller/stop_distance") # m
        self.epsilon = rospy.get_param("/controller/epsilon")
        self.twist = Twist()
        
        # defining the states of our robot
        self.GO, self.ROTATE = 0, 1
        self.state = self.GO 

        # angle
        self.kp_a = 2
        self.ki_a = 0.03
        self.kd_a = 0.05

        #distance
        self.kp_d = 0.4
        self.ki_d = 0.01
        self.kd_d = 5
        

    # rectangle
    def make_rectangle_path(self):
        rectangle = []
        X3 = np.linspace(2, -2 , 20)
        for x in X3:
            rectangle.append([x,3.0])

        X1 = np.linspace(-2, 2 , 20)
        for x in X1:
            rectangle.append([x,-3.0])

        Y2 = np.linspace(3, -3 , 10)
        for y in Y2:
            rectangle.append([2.0,y])

       
        Y4 = np.linspace(-3, 3 , 10)
        for y in Y4:
            rectangle.append([-2.0,y]) 
        
        self.path = rectangle

    # logarithmic spiral 
    def make_archimedean_spiral_path(self):
        archimedean_spiral = []
        growth_factor = 0.1
        # X , Y = [] , []

        for i in range(400):
            t = i / 20 * math.pi
            dx = (1 + growth_factor * t) * math.cos(t)
            dy = (1 + growth_factor * t) * math.sin(t)
            archimedean_spiral.append([dx,dy])
        
        self.path = archimedean_spiral

    # logarithmic spiral
    def make_logarithmic_spiral(self) :
        logarithmic_spiral = [] 
        a = 0.17
        k = math.tan(a)
        # X , Y = [] , []

        for i in range(150):
            t = i / 20 * math.pi
            dx = a * math.exp(k * t) * math.cos(t)
            dy = a * math.exp(k * t) * math.sin(t)
            # X.append(dx)
            # Y.append(dy)
            logarithmic_spiral.append([dx,dy])
        
        self.path = logarithmic_spiral

    # octagonal
    def make_octagonal(self):
        octagonal = []
        X2 = np.linspace(1, 1 + 2**(1/2) , 10)
        Y2 = - (2**(1/2)) * (X2 - 1) + 3
        for i,x in enumerate(X2):
            octagonal.append([x,Y2[i]])

        Y3 = np.linspace(1, -1 , 10)
        X3 = np.array([1 + 2**(1/2)]*10)
        for i,x in enumerate(X3):
            octagonal.append([x,Y3[i]])

        X4 = np.linspace(1 + 2**(1/2), 1, 10)
        Y4 = (2**(1/2)) * (X4 - 1 - 2**(1/2)) -1 
        for i,x in enumerate(X4):
            octagonal.append([x,Y4[i]])

        X5 = np.linspace(1, -1 , 10)
        for i,x in enumerate(X5):
            octagonal.append([x,-3])

        X6 = np.linspace(-1, -1 - 2**(1/2) , 10)
        Y6 = - (2**(1/2)) * (X6 + 1) - 3 
        for i,x in enumerate(X6):
            octagonal.append([x,Y6[i]])

        Y7 = np.linspace(-1, 1 , 10)
        X7 = np.array([- 1 - 2**(1/2)]*10)
        for i,x in enumerate(X7):
            octagonal.append([x,Y7[i]])

        X8 = np.linspace(-1 - 2**(1/2), -1, 10)
        Y8 = (2**(1/2)) * (X8 + 1 + 2**(1/2)) + 1
        for i,x in enumerate(X8):
            octagonal.append([x,Y8[i]])

        X1 = np.linspace(-1, 1 , 10)
        for x in X1:
            octagonal.append([x,3])

        self.path = octagonal

    def make_circles(self):
        circles = []
        X1 = np.linspace(-6., -2 , 50)
        # Y1 = np.zeros((50,))
        for x in X1:
            circles.append([x, 0.0])

        x_dim, y_dim = 2,2
        t = np.linspace(np.pi, 0, 100)
        for t1 in t:
            circles.append([x_dim * np.cos(t1), y_dim * np.sin(t1)])

        X3 = np.linspace(2, 6 , 50)
        Y3 = np.zeros((50,))
        for x in X3:
            circles.append([x, 0.0])

        x_dim, y_dim = 6,6
        t = np.linspace(np.pi*2, np.pi, 200)
        for t2 in t:
            circles.append([x_dim * np.cos(t2), y_dim * np.sin(t2)])

        self.path = circles

    # heading of the robot 
    def get_heading(self):
        
        # waiting for the most recent message from topic /odom
        msg = rospy.wait_for_message("/odom" , Odometry)
        
        orientation = msg.pose.pose.orientation
        
        # convert quaternion to odom
        roll, pitch, yaw = tf.transformations.euler_from_quaternion((
            orientation.x ,orientation.y ,orientation.z ,orientation.w
        )) 
        
        return yaw        

    def run(self):

        # step 2
        self.make_rectangle_path()
        # step 3
        # self.make_archimedean_spiral_path()
        # self.make_logarithmic_spiral()
        # self.make_octagonal()
        # self.make_circles()

        while not rospy.is_shutdown():
            last_angle = 0
            for xy in self.path:
                self.cmd_publisher.publish(Twist())
                # rospy.sleep(2)

                x = xy[0]
                y = xy[1]

                msg = rospy.wait_for_message("/odom" , Odometry) 
                curr_x = msg.pose.pose.position.x
                curr_y = msg.pose.pose.position.y

                delta_x = x - curr_x
                delta_y = y - curr_y

                distance = sqrt(delta_x**2 + delta_y**2)

                total_distance = 0
                total_angle = 0
                previous_distance = 0
                previous_angle = 0

                while distance > 0.25:
                    current_angle = self.get_heading()
                    msg = rospy.wait_for_message("/odom" , Odometry) 
                    curr_x = msg.pose.pose.position.x
                    curr_y = msg.pose.pose.position.y

                    delta_x = x - curr_x
                    delta_y = y - curr_y

                    path_angle = atan2(delta_y , delta_x) 

                    if last_angle > pi-0.1 and current_angle <= 0:
                        current_angle = 2*pi + current_angle
                    elif last_angle < -pi+0.1 and current_angle > 0:
                        current_angle = -2*pi + current_angle
                        
                    if path_angle < -pi/4 or path_angle > pi/4:
                        if y < 0 and curr_y < y:
                            path_angle = -2*pi + path_angle
                        elif y >= 0 and curr_y > y:
                            path_angle = 2*pi + path_angle


                    distance = sqrt(delta_x**2 + delta_y**2)

                    diff_angle = path_angle - previous_angle
                    diff_distance = distance - previous_distance

                    control_angle = self.kp_a*(path_angle - current_angle)
                    self.twist.angular.z = (control_angle)

                    control_distance = self.kp_d*distance + self.ki_d*total_distance + self.kd_d*diff_distance
                    # control_distance = self.kp_d*distance + self.ki_d*total_distance 
                    self.twist.linear.x = min(control_distance,0.1)

                    if self.twist.angular.z <= 0:
                        self.twist.angular.z = max(self.twist.angular.z, -1.5)
                    else:
                        self.twist.angular.z = min(self.twist.angular.z, 1.5)
                    
                    last_angle = current_angle
                    self.cmd_publisher.publish(self.twist)

                    rospy.sleep(1)
                    total_distance += distance
                    previous_distance = distance
                    total_angle += path_angle
                    previous_angle = path_angle
            # rospy.signal_shutdown()

if __name__ == "__main__":
    controller = Controller()
    controller.run()