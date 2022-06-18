;; Auto-generated. Do not edit!


(when (boundp 'sen_one::distance_msg)
  (if (not (find-package "SEN_ONE"))
    (make-package "SEN_ONE"))
  (shadow 'distance_msg (find-package "SEN_ONE")))
(unless (find-package "SEN_ONE::DISTANCE_MSG")
  (make-package "SEN_ONE::DISTANCE_MSG"))

(in-package "ROS")
;;//! \htmlinclude distance_msg.msg.html


(defclass sen_one::distance_msg
  :super ros::object
  :slots (_obstacle_name _distance ))

(defmethod sen_one::distance_msg
  (:init
   (&key
    ((:obstacle_name __obstacle_name) "")
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _obstacle_name (string __obstacle_name))
   (setq _distance (float __distance))
   self)
  (:obstacle_name
   (&optional __obstacle_name)
   (if __obstacle_name (setq _obstacle_name __obstacle_name)) _obstacle_name)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; string _obstacle_name
    4 (length _obstacle_name)
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _obstacle_name
       (write-long (length _obstacle_name) s) (princ _obstacle_name s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _obstacle_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _obstacle_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sen_one::distance_msg :md5sum-) "b05b4c16a6352b88b1c0cbe7799fe887")
(setf (get sen_one::distance_msg :datatype-) "sen_one/distance_msg")
(setf (get sen_one::distance_msg :definition-)
      "string obstacle_name
float64 distance

")



(provide :sen_one/distance_msg "b05b4c16a6352b88b1c0cbe7799fe887")


