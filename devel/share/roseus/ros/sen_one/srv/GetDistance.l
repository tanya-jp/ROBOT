;; Auto-generated. Do not edit!


(when (boundp 'sen_one::GetDistance)
  (if (not (find-package "SEN_ONE"))
    (make-package "SEN_ONE"))
  (shadow 'GetDistance (find-package "SEN_ONE")))
(unless (find-package "SEN_ONE::GETDISTANCE")
  (make-package "SEN_ONE::GETDISTANCE"))
(unless (find-package "SEN_ONE::GETDISTANCEREQUEST")
  (make-package "SEN_ONE::GETDISTANCEREQUEST"))
(unless (find-package "SEN_ONE::GETDISTANCERESPONSE")
  (make-package "SEN_ONE::GETDISTANCERESPONSE"))

(in-package "ROS")





(defclass sen_one::GetDistanceRequest
  :super ros::object
  :slots (_obstacle_name ))

(defmethod sen_one::GetDistanceRequest
  (:init
   (&key
    ((:obstacle_name __obstacle_name) "")
    )
   (send-super :init)
   (setq _obstacle_name (string __obstacle_name))
   self)
  (:obstacle_name
   (&optional __obstacle_name)
   (if __obstacle_name (setq _obstacle_name __obstacle_name)) _obstacle_name)
  (:serialization-length
   ()
   (+
    ;; string _obstacle_name
    4 (length _obstacle_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _obstacle_name
       (write-long (length _obstacle_name) s) (princ _obstacle_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _obstacle_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _obstacle_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sen_one::GetDistanceResponse
  :super ros::object
  :slots (_distance ))

(defmethod sen_one::GetDistanceResponse
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

(defclass sen_one::GetDistance
  :super ros::object
  :slots ())

(setf (get sen_one::GetDistance :md5sum-) "05f9280a5bbafe8052386937af843453")
(setf (get sen_one::GetDistance :datatype-) "sen_one/GetDistance")
(setf (get sen_one::GetDistance :request) sen_one::GetDistanceRequest)
(setf (get sen_one::GetDistance :response) sen_one::GetDistanceResponse)

(defmethod sen_one::GetDistanceRequest
  (:response () (instance sen_one::GetDistanceResponse :init)))

(setf (get sen_one::GetDistanceRequest :md5sum-) "05f9280a5bbafe8052386937af843453")
(setf (get sen_one::GetDistanceRequest :datatype-) "sen_one/GetDistanceRequest")
(setf (get sen_one::GetDistanceRequest :definition-)
      "string obstacle_name
---
float64 distance
")

(setf (get sen_one::GetDistanceResponse :md5sum-) "05f9280a5bbafe8052386937af843453")
(setf (get sen_one::GetDistanceResponse :datatype-) "sen_one/GetDistanceResponse")
(setf (get sen_one::GetDistanceResponse :definition-)
      "string obstacle_name
---
float64 distance
")



(provide :sen_one/GetDistance "05f9280a5bbafe8052386937af843453")


