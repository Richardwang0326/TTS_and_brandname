; Auto-generated. Do not edit!


(cl:in-package text_msgs-srv)


;//! \htmlinclude manipulation-request.msg.html

(cl:defclass <manipulation-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (object
    :reader object
    :initarg :object
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass manipulation-request (<manipulation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <manipulation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'manipulation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-srv:<manipulation-request> is deprecated: use text_msgs-srv:manipulation-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <manipulation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:mode-val is deprecated.  Use text_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <manipulation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:object-val is deprecated.  Use text_msgs-srv:object instead.")
  (object m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <manipulation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:pose-val is deprecated.  Use text_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <manipulation-request>) ostream)
  "Serializes a message object of type '<manipulation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <manipulation-request>) istream)
  "Deserializes a message object of type '<manipulation-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<manipulation-request>)))
  "Returns string type for a service object of type '<manipulation-request>"
  "text_msgs/manipulationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'manipulation-request)))
  "Returns string type for a service object of type 'manipulation-request"
  "text_msgs/manipulationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<manipulation-request>)))
  "Returns md5sum for a message object of type '<manipulation-request>"
  "940776247decf73dc39a0d8aa126a552")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'manipulation-request)))
  "Returns md5sum for a message object of type 'manipulation-request"
  "940776247decf73dc39a0d8aa126a552")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<manipulation-request>)))
  "Returns full string definition for message of type '<manipulation-request>"
  (cl:format cl:nil "#Request data~%string mode~%string object~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'manipulation-request)))
  "Returns full string definition for message of type 'manipulation-request"
  (cl:format cl:nil "#Request data~%string mode~%string object~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <manipulation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
     4 (cl:length (cl:slot-value msg 'object))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <manipulation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'manipulation-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':object (object msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude manipulation-response.msg.html

(cl:defclass <manipulation-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass manipulation-response (<manipulation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <manipulation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'manipulation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-srv:<manipulation-response> is deprecated: use text_msgs-srv:manipulation-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <manipulation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:state-val is deprecated.  Use text_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <manipulation-response>) ostream)
  "Serializes a message object of type '<manipulation-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <manipulation-response>) istream)
  "Deserializes a message object of type '<manipulation-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<manipulation-response>)))
  "Returns string type for a service object of type '<manipulation-response>"
  "text_msgs/manipulationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'manipulation-response)))
  "Returns string type for a service object of type 'manipulation-response"
  "text_msgs/manipulationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<manipulation-response>)))
  "Returns md5sum for a message object of type '<manipulation-response>"
  "940776247decf73dc39a0d8aa126a552")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'manipulation-response)))
  "Returns md5sum for a message object of type 'manipulation-response"
  "940776247decf73dc39a0d8aa126a552")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<manipulation-response>)))
  "Returns full string definition for message of type '<manipulation-response>"
  (cl:format cl:nil "#Response data~%string state ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'manipulation-response)))
  "Returns full string definition for message of type 'manipulation-response"
  (cl:format cl:nil "#Response data~%string state ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <manipulation-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <manipulation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'manipulation-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'manipulation)))
  'manipulation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'manipulation)))
  'manipulation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'manipulation)))
  "Returns string type for a service object of type '<manipulation>"
  "text_msgs/manipulation")