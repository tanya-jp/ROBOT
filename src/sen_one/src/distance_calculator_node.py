#!/usr/bin/python3

import rospy
from nav_msgs.msg import Odometry
from math import sqrt
from sen_one.srv import GetDistance, GetDistanceResponse

class Distance_calculator():
    def __init__(self) -> None:
        self.default = -1
        self.loc = {}
        self.loc["book_shelf"] = (2.64, -1.55)
        self.loc["dumpster"] = (1.23, -4.57)
        self.loc["barrel"] = (-2.51, -3.08)
        self.loc["postbox"] = (-4.47, -0.57)
        self.loc["brick_box"] = (-3.44, 2.75)
        self.loc["cabinet"] = (-0.45, 4.05)
        self.loc["cafe_table"] = (1.91, 3.37)
        self.loc["fountain"] = (4.08, 1.14)
    
    def get_distance(self, req):
        try:
            msg = rospy.wait_for_message("/odom" , Odometry)
            x1 = msg.pose.pose.position.x
            y1 = msg.pose.pose.position.y
            x2 = self.loc[req.obstacle_name][0]
            y2 = self.loc[req.obstacle_name][1]
            distance = dictance_calc(x1,y1,x2,y2)
        except:
            return None
        result = GetDistanceResponse()
        result.distance = distance
        return result  
        
def dictance_calc(x1,y1,x2,y2):
    d = sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2)
    return float(d)
    
def listener():
    rospy.init_node('distance_calculator_node', anonymous=True)
    dc = Distance_calculator()
    s = rospy.Service('/get_distance', GetDistance, dc.get_distance)
    rospy.spin()

if __name__ == '__main__':
    listener()