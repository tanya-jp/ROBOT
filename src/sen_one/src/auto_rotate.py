#!/usr/bin/python3
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist
import numpy as np
import rospy, tf
from nav_msgs.msg import Odometry
from sen_one.msg import distance_msg

class Lidar_rotate():
    def __init__(self) -> None:
        rospy.init_node("rotate_robot", anonymous=False)
        self.linear_speed = 0.4
        self.angular_speed = 0.5
        self.cmd_publisher = rospy.Publisher('/cmd_vel' , Twist , queue_size=10)
       
    def get_heading():
        msg = rospy.wait_for_message("/odom" , Odometry)
            
        orientation = msg.pose.pose.orientation
        roll, pitch, yaw = tf.transformations.euler_from_quaternion((
            orientation.x ,orientation.y ,orientation.z ,orientation.w
        )) 
            
        return  yaw  

    def rotate(self, angle):
        stop_twist = Twist()
        stop_twist.linear.x = 0.0
        stop_twist.angular.z = 0.0
        self.cmd_publisher.publish(stop_twist)

        rospy.sleep(1)

        msg = rospy.wait_for_message("/odom" , Odometry) 
        orientation = msg.pose.pose.orientation
        roll,pitch, prev_angle = tf.transformations.euler_from_quaternion((orientation.x ,orientation.y ,orientation.z ,orientation.w))
        new_angle = prev_angle + angle


        twist = Twist()
        twist.angular.z = self.angular_speed
        self.cmd_publisher.publish(twist)
        curr_angle = prev_angle    

        while new_angle >= abs(prev_angle - curr_angle):
            msg = rospy.wait_for_message("/odom" , Odometry)
            orientation = msg.pose.pose.orientation
            roll, pitch, temp_angle = tf.transformations.euler_from_quaternion((orientation.x ,orientation.y ,orientation.z ,orientation.w))
            if temp_angle < 0:
                curr_angle = temp_angle
            else:
                curr_angle = curr_angle - (abs(abs(temp_angle) - abs(curr_angle)))

        self.cmd_publisher.publish(stop_twist)
        rospy.sleep(1)

    def twist_robot(self, s):
        twist = Twist()
        twist.angular.z = 0.0
        twist.linear.x = s
        self.cmd_publisher.publish(twist)
    
    def robot_angle(self):
        
        data = rospy.wait_for_message("/scan", LaserScan)
        rng = data.ranges
        angle = data.ranges.index(min(rng))//4
        return angle

    def run(self):
        while not rospy.is_shutdown():
            obs = rospy.wait_for_message("/ClosestObstacle", distance_msg)

            if obs.distance >= 1.5:
                self.twist_robot(0.5)

            else:
                self.rotate(np.deg2rad(self.robot_angle()))
                while True :
                    self.twist_robot(0.5)
                    if obs.distance > 1.5:
                        break

if __name__ == '__main__':
    lr = Lidar_rotate()
    lr.run()