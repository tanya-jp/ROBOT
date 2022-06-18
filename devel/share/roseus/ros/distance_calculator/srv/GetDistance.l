;; Auto-generated. Do not edit!


(when (boundp 'distance_calculator::GetDistance)
  (if (not (find-package "DISTANCE_CALCULATOR"))
    (make-package "DISTANCE_CALCULATOR"))
  (shadow 'GetDistance (find-package "DISTANCE_CALCULATOR")))
(unless (find-package "DISTANCE_CALCULATOR::GETDISTANCE")
  (make-package "DISTANCE_CALCULATOR::GETDISTANCE"))
(unless (find-package "DISTANCE_CALCULATOR::GETDISTANCEREQUEST")
  (make-package "DISTANCE_CALCULATOR::GETDISTANCEREQUEST"))
(unless (find-package "DISTANCE_CALCULATOR::GETDISTANCERESPONSE")
  (make-package "DISTANCE_CALCULATOR::GETDISTANCERESPONSE"))

(in-package "ROS")





(defclass distance_calculator::GetDistanceRequest
  :super ros::object
  :slots (_direction_name ))

(defmethod distance_calculator::GetDistanceRequest
  (:init
   (&key
    ((:direction_name __direction_name) "")
    )
   (send-super :init)
   (setq _direction_name (string __direction_name))
   self)
  (:direction_name
   (&optional __direction_name)
   (if __direction_name (setq _direction_name __direction_name)) _direction_name)
  (:serialization-length
   ()
   (+
    ;; string _direction_name
    4 (length _direction_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _direction_name
       (write-long (length _direction_name) s) (princ _direction_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _direction_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass distance_calculator::GetDistanceResponse
  :super ros::object
  :slots (_distance ))

(defmethod distance_calculator::GetDistanceResponse
  (:init
   (&key
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass distance_calculator::GetDistance
  :super ros::object
  :slots ())

(setf (get distance_calculator::GetDistance :md5sum-) "77f540a9cfbaeedc83618fe997a13644")
(setf (get distance_calculator::GetDistance :datatype-) "distance_calculator/GetDistance")
(setf (get distance_calculator::GetDistance :request) distance_calculator::GetDistanceRequest)
(setf (get distance_calculator::GetDistance :response) distance_calculator::GetDistanceResponse)

(defmethod distance_calculator::GetDistanceRequest
  (:response () (instance distance_calculator::GetDistanceResponse :init)))

(setf (get distance_calculator::GetDistanceRequest :md5sum-) "77f540a9cfbaeedc83618fe997a13644")
(setf (get distance_calculator::GetDistanceRequest :datatype-) "distance_calculator/GetDistanceRequest")
(setf (get distance_calculator::GetDistanceRequest :definition-)
      "string direction_name
---
float64 distance 
")

(setf (get distance_calculator::GetDistanceResponse :md5sum-) "77f540a9cfbaeedc83618fe997a13644")
(setf (get distance_calculator::GetDistanceResponse :datatype-) "distance_calculator/GetDistanceResponse")
(setf (get distance_calculator::GetDistanceResponse :definition-)
      "string direction_name
---
float64 distance 
")



(provide :distance_calculator/GetDistance "77f540a9cfbaeedc83618fe997a13644")


