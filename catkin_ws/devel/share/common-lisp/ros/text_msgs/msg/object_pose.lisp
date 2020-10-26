; Auto-generated. Do not edit!


(cl:in-package text_msgs-msg)


;//! \htmlinclude object_pose.msg.html

(cl:defclass <object_pose> (roslisp-msg-protocol:ros-message)
  ((object
    :reader object
    :initarg :object
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass object_pose (<object_pose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <object_pose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'object_pose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-msg:<object_pose> is deprecated: use text_msgs-msg:object_pose instead.")))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <object_pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:object-val is deprecated.  Use text_msgs-msg:object instead.")
  (object m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <object_pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:state-val is deprecated.  Use text_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <object_pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:pose-val is deprecated.  Use text_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <object_pose>) ostream)
  "Serializes a message object of type '<object_pose>"
  (cl:let* ((signed (cl:slot-value msg 'object)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <object_pose>) istream)
  "Deserializes a message object of type '<object_pose>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<object_pose>)))
  "Returns string type for a message object of type '<object_pose>"
  "text_msgs/object_pose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'object_pose)))
  "Returns string type for a message object of type 'object_pose"
  "text_msgs/object_pose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<object_pose>)))
  "Returns md5sum for a message object of type '<object_pose>"
  "5a553de221181da629133fb7c93e5464")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'object_pose)))
  "Returns md5sum for a message object of type 'object_pose"
  "5a553de221181da629133fb7c93e5464")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<object_pose>)))
  "Returns full string definition for message of type '<object_pose>"
  (cl:format cl:nil "int32 object~%string state 		# pick or suck~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'object_pose)))
  "Returns full string definition for message of type 'object_pose"
  (cl:format cl:nil "int32 object~%string state 		# pick or suck~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <object_pose>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <object_pose>))
  "Converts a ROS message object to a list"
  (cl:list 'object_pose
    (cl:cons ':object (object msg))
    (cl:cons ':state (state msg))
    (cl:cons ':pose (pose msg))
))
