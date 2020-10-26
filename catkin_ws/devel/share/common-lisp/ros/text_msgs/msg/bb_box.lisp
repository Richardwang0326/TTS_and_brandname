; Auto-generated. Do not edit!


(cl:in-package text_msgs-msg)


;//! \htmlinclude bb_box.msg.html

(cl:defclass <bb_box> (roslisp-msg-protocol:ros-message)
  ((xmax
    :reader xmax
    :initarg :xmax
    :type cl:integer
    :initform 0)
   (xmin
    :reader xmin
    :initarg :xmin
    :type cl:integer
    :initform 0)
   (ymax
    :reader ymax
    :initarg :ymax
    :type cl:integer
    :initform 0)
   (ymin
    :reader ymin
    :initarg :ymin
    :type cl:integer
    :initform 0))
)

(cl:defclass bb_box (<bb_box>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bb_box>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bb_box)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-msg:<bb_box> is deprecated: use text_msgs-msg:bb_box instead.")))

(cl:ensure-generic-function 'xmax-val :lambda-list '(m))
(cl:defmethod xmax-val ((m <bb_box>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:xmax-val is deprecated.  Use text_msgs-msg:xmax instead.")
  (xmax m))

(cl:ensure-generic-function 'xmin-val :lambda-list '(m))
(cl:defmethod xmin-val ((m <bb_box>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:xmin-val is deprecated.  Use text_msgs-msg:xmin instead.")
  (xmin m))

(cl:ensure-generic-function 'ymax-val :lambda-list '(m))
(cl:defmethod ymax-val ((m <bb_box>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:ymax-val is deprecated.  Use text_msgs-msg:ymax instead.")
  (ymax m))

(cl:ensure-generic-function 'ymin-val :lambda-list '(m))
(cl:defmethod ymin-val ((m <bb_box>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:ymin-val is deprecated.  Use text_msgs-msg:ymin instead.")
  (ymin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bb_box>) ostream)
  "Serializes a message object of type '<bb_box>"
  (cl:let* ((signed (cl:slot-value msg 'xmax)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'xmin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ymax)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ymin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bb_box>) istream)
  "Deserializes a message object of type '<bb_box>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xmax) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xmin) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ymax) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ymin) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bb_box>)))
  "Returns string type for a message object of type '<bb_box>"
  "text_msgs/bb_box")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bb_box)))
  "Returns string type for a message object of type 'bb_box"
  "text_msgs/bb_box")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bb_box>)))
  "Returns md5sum for a message object of type '<bb_box>"
  "65f8a458776ee81cb95e7c837498673e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bb_box)))
  "Returns md5sum for a message object of type 'bb_box"
  "65f8a458776ee81cb95e7c837498673e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bb_box>)))
  "Returns full string definition for message of type '<bb_box>"
  (cl:format cl:nil "int32 xmax~%int32 xmin~%int32 ymax~%int32 ymin~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bb_box)))
  "Returns full string definition for message of type 'bb_box"
  (cl:format cl:nil "int32 xmax~%int32 xmin~%int32 ymax~%int32 ymin~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bb_box>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bb_box>))
  "Converts a ROS message object to a list"
  (cl:list 'bb_box
    (cl:cons ':xmax (xmax msg))
    (cl:cons ':xmin (xmin msg))
    (cl:cons ':ymax (ymax msg))
    (cl:cons ':ymin (ymin msg))
))
