; Auto-generated. Do not edit!


(cl:in-package sen_one-msg)


;//! \htmlinclude distance_msg.msg.html

(cl:defclass <distance_msg> (roslisp-msg-protocol:ros-message)
  ((obstacle_name
    :reader obstacle_name
    :initarg :obstacle_name
    :type cl:string
    :initform "")
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass distance_msg (<distance_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <distance_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'distance_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sen_one-msg:<distance_msg> is deprecated: use sen_one-msg:distance_msg instead.")))

(cl:ensure-generic-function 'obstacle_name-val :lambda-list '(m))
(cl:defmethod obstacle_name-val ((m <distance_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sen_one-msg:obstacle_name-val is deprecated.  Use sen_one-msg:obstacle_name instead.")
  (obstacle_name m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <distance_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sen_one-msg:distance-val is deprecated.  Use sen_one-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <distance_msg>) ostream)
  "Serializes a message object of type '<distance_msg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'obstacle_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'obstacle_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <distance_msg>) istream)
  "Deserializes a message object of type '<distance_msg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obstacle_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'obstacle_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<distance_msg>)))
  "Returns string type for a message object of type '<distance_msg>"
  "sen_one/distance_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'distance_msg)))
  "Returns string type for a message object of type 'distance_msg"
  "sen_one/distance_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<distance_msg>)))
  "Returns md5sum for a message object of type '<distance_msg>"
  "b05b4c16a6352b88b1c0cbe7799fe887")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'distance_msg)))
  "Returns md5sum for a message object of type 'distance_msg"
  "b05b4c16a6352b88b1c0cbe7799fe887")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<distance_msg>)))
  "Returns full string definition for message of type '<distance_msg>"
  (cl:format cl:nil "string obstacle_name~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'distance_msg)))
  "Returns full string definition for message of type 'distance_msg"
  (cl:format cl:nil "string obstacle_name~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <distance_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'obstacle_name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <distance_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'distance_msg
    (cl:cons ':obstacle_name (obstacle_name msg))
    (cl:cons ':distance (distance msg))
))
