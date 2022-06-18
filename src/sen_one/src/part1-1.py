#!/usr/bin/python3

import rospy
import tf
from sen_one.msg import distance_msg
from nav_msgs.msg import Odometry
from math import radians, sqrt

loc = {}
loc["bookshelf"] = (2.64, -1.55)
loc["dumpster"] =	(1.23, -4.57)
loc["barrel"] =	(-2.51, -3.08)
loc["postbox"] = (-4.47, -0.57)
loc["brick_box"] =	(-3.44, 2.75)
loc["cabinet"] = (-0.45, 4.05)
loc["cafe_table"] =	(1.91, 3.37)
loc["fountain"] = (4.08, 1.14)

# heading of the robot 
def get_heading():
        
    # waiting for the most recent message from topic /odom
    msg = rospy.wait_for_message("/odom" , Odometry)
        
    orientation = msg.pose.pose.orientation
        
    # convert quaternion to odom
    roll, pitch, yaw = tf.transformations.euler_from_quaternion((
        orientation.x ,orientation.y ,orientation.z ,orientation.w
    )) 
        
    return  msg.pose.pose.position   

def dictance_calc(x1,y1,x2,y2):
    return sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2).real

def nearest_obj():
    current_pose = get_heading()
    x = current_pose.x
    y = current_pose.y
    distance = {}

    distance["bookshelf"] = dictance_calc(x,y,2.64,-1.55)

    distance["dumpster"] = dictance_calc(x,y,1.23,-4.57)

    distance["barrel"] = dictance_calc(x,y,-2.51,-3.08)

    distance["postbox"] = dictance_calc(x,y,-4.47,-0.57)
        
    distance["brick_box"] = dictance_calc(x,y,-3.44,2.75)

    distance["cabinet"] = dictance_calc(x,y,-0.45,4.05)

    distance["cafe_table"] = dictance_calc(x,y,1.91,3.37)

    distance["fountain"] = dictance_calc(x,y,4.08,1.14)

    d = min(distance.values())
    obj_name = list(distance.keys())[list(distance.values()).index(d)]

    return d, obj_name

def talker():
    student = distance_msg()
    
    pub = rospy.Publisher('ClosestObstacle', distance_msg, queue_size=10)
    rospy.init_node('closest_obstacle', anonymous=True)
    rate = rospy.Rate(1)
    
    while not rospy.is_shutdown():
        obj_d, obj_name = nearest_obj()
        obj = distance_msg()
        obj.obstacle_name = obj_name
        obj.distance = obj_d
        rospy.loginfo('Info: obstacle: {}, distance: {}'.format(obj_name, obj_d))
        pub.publish(obj)
        rate.sleep()
        
if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass