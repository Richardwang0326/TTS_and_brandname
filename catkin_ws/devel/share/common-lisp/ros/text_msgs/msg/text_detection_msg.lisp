; Auto-generated. Do not edit!


(cl:in-package text_msgs-msg)


;//! \htmlinclude text_detection_msg.msg.html

(cl:defclass <text_detection_msg> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (probability
    :reader probability
    :initarg :probability
    :type cl:float
    :initform 0.0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (box
    :reader box
    :initarg :box
    :type text_msgs-msg:bb_box
    :initform (cl:make-instance 'text_msgs-msg:bb_box))
   (contour
    :reader contour
    :initarg :contour
    :type (cl:vector text_msgs-msg:int_arr)
   :initform (cl:make-array 0 :element-type 'text_msgs-msg:int_arr :initial-element (cl:make-instance 'text_msgs-msg:int_arr))))
)

(cl:defclass text_detection_msg (<text_detection_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <text_detection_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'text_detection_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-msg:<text_detection_msg> is deprecated: use text_msgs-msg:text_detection_msg instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <text_detection_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:status-val is deprecated.  Use text_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'probability-val :lambda-list '(m))
(cl:defmethod probability-val ((m <text_detection_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:probability-val is deprecated.  Use text_msgs-msg:probability instead.")
  (probability m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <text_detection_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:pose-val is deprecated.  Use text_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'box-val :lambda-list '(m))
(cl:defmethod box-val ((m <text_detection_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:box-val is deprecated.  Use text_msgs-msg:box instead.")
  (box m))

(cl:ensure-generic-function 'contour-val :lambda-list '(m))
(cl:defmethod contour-val ((m <text_detection_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:contour-val is deprecated.  Use text_msgs-msg:contour instead.")
  (contour m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <text_detection_msg>) ostream)
  "Serializes a message object of type '<text_detection_msg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'contour))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'contour))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <text_detection_msg>) istream)
  "Deserializes a message object of type '<text_detection_msg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probability) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'contour) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'contour)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'text_msgs-msg:int_arr))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<text_detection_msg>)))
  "Returns string type for a message object of type '<text_detection_msg>"
  "text_msgs/text_detection_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'text_detection_msg)))
  "Returns string type for a message object of type 'text_detection_msg"
  "text_msgs/text_detection_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<text_detection_msg>)))
  "Returns md5sum for a message object of type '<text_detection_msg>"
  "ba79c449ebbb021bfad5cb922f4b82d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'text_detection_msg)))
  "Returns md5sum for a message object of type 'text_detection_msg"
  "ba79c449ebbb021bfad5cb922f4b82d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<text_detection_msg>)))
  "Returns full string definition for message of type '<text_detection_msg>"
  (cl:format cl:nil "string status				# O for non_return , X for return ~%float64 probability~%geometry_msgs/Pose pose~%bb_box box~%int_arr[] contour~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: text_msgs/bb_box~%int32 xmax~%int32 xmin~%int32 ymax~%int32 ymin~%================================================================================~%MSG: text_msgs/int_arr~%int32[] point~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'text_detection_msg)))
  "Returns full string definition for message of type 'text_detection_msg"
  (cl:format cl:nil "string status				# O for non_return , X for return ~%float64 probability~%geometry_msgs/Pose pose~%bb_box box~%int_arr[] contour~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: text_msgs/bb_box~%int32 xmax~%int32 xmin~%int32 ymax~%int32 ymin~%================================================================================~%MSG: text_msgs/int_arr~%int32[] point~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <text_detection_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'contour) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <text_detection_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'text_detection_msg
    (cl:cons ':status (status msg))
    (cl:cons ':probability (probability msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':box (box msg))
    (cl:cons ':contour (contour msg))
))
