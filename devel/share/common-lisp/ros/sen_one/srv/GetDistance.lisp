; Auto-generated. Do not edit!


(cl:in-package sen_one-srv)


;//! \htmlinclude GetDistance-request.msg.html

(cl:defclass <GetDistance-request> (roslisp-msg-protocol:ros-message)
  ((obstacle_name
    :reader obstacle_name
    :initarg :obstacle_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetDistance-request (<GetDistance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDistance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDistance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sen_one-srv:<GetDistance-request> is deprecated: use sen_one-srv:GetDistance-request instead.")))

(cl:ensure-generic-function 'obstacle_name-val :lambda-list '(m))
(cl:defmethod obstacle_name-val ((m <GetDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sen_one-srv:obstacle_name-val is deprecated.  Use sen_one-srv:obstacle_name instead.")
  (obstacle_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDistance-request>) ostream)
  "Serializes a message object of type '<GetDistance-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'obstacle_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'obstacle_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDistance-request>) istream)
  "Deserializes a message object of type '<GetDistance-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obstacle_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'obstacle_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDistance-request>)))
  "Returns string type for a service object of type '<GetDistance-request>"
  "sen_one/GetDistanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDistance-request)))
  "Returns string type for a service object of type 'GetDistance-request"
  "sen_one/GetDistanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDistance-request>)))
  "Returns md5sum for a message object of type '<GetDistance-request>"
  "05f9280a5bbafe8052386937af843453")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDistance-request)))
  "Returns md5sum for a message object of type 'GetDistance-request"
  "05f9280a5bbafe8052386937af843453")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDistance-request>)))
  "Returns full string definition for message of type '<GetDistance-request>"
  (cl:format cl:nil "string obstacle_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDistance-request)))
  "Returns full string definition for message of type 'GetDistance-request"
  (cl:format cl:nil "string obstacle_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDistance-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'obstacle_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDistance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDistance-request
    (cl:cons ':obstacle_name (obstacle_name msg))
))
;//! \htmlinclude GetDistance-response.msg.html

(cl:defclass <GetDistance-response> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetDistance-response (<GetDistance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDistance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDistance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sen_one-srv:<GetDistance-response> is deprecated: use sen_one-srv:GetDistance-response instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <GetDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sen_one-srv:distance-val is deprecated.  Use sen_one-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDistance-response>) ostream)
  "Serializes a message object of type '<GetDistance-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDistance-response>) istream)
  "Deserializes a message object of type '<GetDistance-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDistance-response>)))
  "Returns string type for a service object of type '<GetDistance-response>"
  "sen_one/GetDistanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDistance-response)))
  "Returns string type for a service object of type 'GetDistance-response"
  "sen_one/GetDistanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDistance-response>)))
  "Returns md5sum for a message object of type '<GetDistance-response>"
  "05f9280a5bbafe8052386937af843453")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDistance-response)))
  "Returns md5sum for a message object of type 'GetDistance-response"
  "05f9280a5bbafe8052386937af843453")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDistance-response>)))
  "Returns full string definition for message of type '<GetDistance-response>"
  (cl:format cl:nil "float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDistance-response)))
  "Returns full string definition for message of type 'GetDistance-response"
  (cl:format cl:nil "float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDistance-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDistance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDistance-response
    (cl:cons ':distance (distance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDistance)))
  'GetDistance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDistance)))
  'GetDistance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDistance)))
  "Returns string type for a service object of type '<GetDistance>"
  "sen_one/GetDistance")