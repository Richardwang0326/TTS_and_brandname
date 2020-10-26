; Auto-generated. Do not edit!


(cl:in-package text_msgs-msg)


;//! \htmlinclude int_arr.msg.html

(cl:defclass <int_arr> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass int_arr (<int_arr>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <int_arr>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'int_arr)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-msg:<int_arr> is deprecated: use text_msgs-msg:int_arr instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <int_arr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:point-val is deprecated.  Use text_msgs-msg:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <int_arr>) ostream)
  "Serializes a message object of type '<int_arr>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <int_arr>) istream)
  "Deserializes a message object of type '<int_arr>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'point) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'point)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<int_arr>)))
  "Returns string type for a message object of type '<int_arr>"
  "text_msgs/int_arr")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'int_arr)))
  "Returns string type for a message object of type 'int_arr"
  "text_msgs/int_arr")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<int_arr>)))
  "Returns md5sum for a message object of type '<int_arr>"
  "9d43aa930d9591879a0c30e6abefcb2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'int_arr)))
  "Returns md5sum for a message object of type 'int_arr"
  "9d43aa930d9591879a0c30e6abefcb2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<int_arr>)))
  "Returns full string definition for message of type '<int_arr>"
  (cl:format cl:nil "int32[] point~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'int_arr)))
  "Returns full string definition for message of type 'int_arr"
  (cl:format cl:nil "int32[] point~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <int_arr>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <int_arr>))
  "Converts a ROS message object to a list"
  (cl:list 'int_arr
    (cl:cons ':point (point msg))
))
