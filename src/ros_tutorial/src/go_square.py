#!/usr/bin/python3

from cmath import sqrt
import numpy as np
import math
import matplotlib.pyplot as plt
from multiprocessing import set_forkserver_preload
import rospy, tf
from sensor_msgs.msg import LaserScan
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist
from math import radians


# main rectangle 
X1 = np.linspace(0, 6 , 100)
Y1 = np.array([4]*100)


Y2 = np.linspace(4, 0 , 100)
X2 = np.array([6]*100)

X3 = np.linspace(6, 0, 100)
Y3 = np.array([0]*100)

Y4 = np.linspace(0, 4 , 100)
X4 = np.array([0]*100)

distance = []

class Controller:
    def __init__(self) -> None:
        rospy.init_node("controller", anonymous=False)
        self.laser_subscriber = rospy.Subscriber("/odometry/filtered" , Odometry , self.get_heading)
        self.cmd_publisher = rospy.Publisher('/cmd_vel' , Twist , queue_size=10)
        # getting specified parameters
        self.linear_speed = rospy.get_param("/controller/linear_speed") # m/s
        self.angular_speed = rospy.get_param("/controller/angular_speed") # rad/s
        self.goal_angle = radians(rospy.get_param("/controller/goal_angle")) # rad
        self.epsilon = rospy.get_param("/controller/epsilon")
        self.length = 6 
        self.width = 4
        # defining the states of our robot
        self.GO = 1
        self.GO_LENGTH = 1
        self.round_counter = 0
        self.LINE = 0


    # calculate the min distance between robot and
    # the wanted rectangle
    def error_distance_calculator(self, curr_x, curr_y):

        d1 = min(abs(X1 - curr_x))
        d2 = min(abs(X3 - curr_x))
        d3 = min(abs(Y2 - curr_y))
        d4 = min(abs(Y4 - curr_y))

        minX = min(d1, d2)

        minY = min(d3, d4)

        min_distance = sqrt(minX**2 + minY**2)

        distance.append(min_distance)

    # plot the error, the distance between main rectangle and 
    # robot 
    def plot_error(self):
        y_distance = list(range(len(distance)))
        plt.plot(y_distance, distance)
        plt.xlabel('Run Step')
        plt.ylabel('Error')
        plt.legend()
        plt.title('ROBOT Error')
        plt.show()
 
    # heading of the robot 
    def get_heading(self, euler = True):
        
        # waiting for the most recent message from topic /odom
        msg = rospy.wait_for_message("/odom" , Odometry)
        
        orientation = msg.pose.pose.orientation
        
        # convert quaternion to euler
        roll, pitch, yaw = tf.transformations.euler_from_quaternion((
            orientation.x ,orientation.y ,orientation.z ,orientation.w
        )) 

        if euler:
            return yaw
        return  msg.pose.pose.position
        
    
    # go straight
    def move_forward(self):

        if self.round_counter == 0:
            line_steps = self.length/2
            # self.LINE = 1
        
        elif self.round_counter == 1:
            line_steps = self.width/2
            # self.LINE = 2

        # check robot is in lenghth or windth
        elif self.GO_LENGTH == 1:
            line_steps = self.length
                
        else:
            line_steps = self.width

        msg = rospy.wait_for_message("/odom" , Odometry) 
        x = msg.pose.pose.position.x
        y = msg.pose.pose.position.y
        robot_steps = 0

        # go straight loop
        while line_steps - robot_steps > self.epsilon:
            twist = Twist()
            twist.linear.x = self.linear_speed
            self.cmd_publisher.publish(twist)
            msg = rospy.wait_for_message("/odom" , Odometry) 
            curr_x = msg.pose.pose.position.x
            curr_y = msg.pose.pose.position.y
            robot_steps = abs(x - curr_x) + abs(y - curr_y)  
            self.error_distance_calculator(curr_x, curr_y)
        
        # change the direction
        self.GO_LENGTH ^= 1

    # roate
    def rotate_robot(self):

        self.cmd_publisher.publish(Twist())
            
        rospy.sleep(1)
            
        remaining = self.goal_angle
        prev_angle = self.get_heading()
            
        twist = Twist()
        twist.angular.z = self.angular_speed
        self.cmd_publisher.publish(twist)
            
        # rotation loop
        while remaining >= self.epsilon:
            current_angle = self.get_heading()
            delta = abs(prev_angle - current_angle)
            remaining -= delta
            prev_angle = current_angle
            
        self.cmd_publisher.publish(Twist())

    def run(self):

        while not rospy.is_shutdown():
            self.move_forward()
            self.rotate_robot()
            self.round_counter += 1

            if self.round_counter == 7:
                self.plot_error()
                

              

if __name__ == "__main__":
    controller = Controller()
    controller.run()