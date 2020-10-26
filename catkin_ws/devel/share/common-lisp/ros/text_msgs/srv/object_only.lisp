; Auto-generated. Do not edit!


(cl:in-package text_msgs-srv)


;//! \htmlinclude object_only-request.msg.html

(cl:defclass <object_only-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (depth
    :reader depth
    :initarg :depth
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass object_only-request (<object_only-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <object_only-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'object_only-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-srv:<object_only-request> is deprecated: use text_msgs-srv:object_only-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <object_only-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:image-val is deprecated.  Use text_msgs-srv:image instead.")
  (image m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <object_only-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:depth-val is deprecated.  Use text_msgs-srv:depth instead.")
  (depth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <object_only-request>) ostream)
  "Serializes a message object of type '<object_only-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <object_only-request>) istream)
  "Deserializes a message object of type '<object_only-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<object_only-request>)))
  "Returns string type for a service object of type '<object_only-request>"
  "text_msgs/object_onlyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'object_only-request)))
  "Returns string type for a service object of type 'object_only-request"
  "text_msgs/object_onlyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<object_only-request>)))
  "Returns md5sum for a message object of type '<object_only-request>"
  "1af0bf5105da2ef053fba4cb2b4821cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'object_only-request)))
  "Returns md5sum for a message object of type 'object_only-request"
  "1af0bf5105da2ef053fba4cb2b4821cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<object_only-request>)))
  "Returns full string definition for message of type '<object_only-request>"
  (cl:format cl:nil "#Request data~%sensor_msgs/Image image~%sensor_msgs/Image depth~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'object_only-request)))
  "Returns full string definition for message of type 'object_only-request"
  (cl:format cl:nil "#Request data~%sensor_msgs/Image image~%sensor_msgs/Image depth~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <object_only-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <object_only-request>))
  "Converts a ROS message object to a list"
  (cl:list 'object_only-request
    (cl:cons ':image (image msg))
    (cl:cons ':depth (depth msg))
))
;//! \htmlinclude object_only-response.msg.html

(cl:defclass <object_only-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (ob_list
    :reader ob_list
    :initarg :ob_list
    :type (cl:vector text_msgs-msg:object_pose)
   :initform (cl:make-array 0 :element-type 'text_msgs-msg:object_pose :initial-element (cl:make-instance 'text_msgs-msg:object_pose))))
)

(cl:defclass object_only-response (<object_only-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <object_only-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'object_only-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-srv:<object_only-response> is deprecated: use text_msgs-srv:object_only-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <object_only-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:state-val is deprecated.  Use text_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <object_only-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:count-val is deprecated.  Use text_msgs-srv:count instead.")
  (count m))

(cl:ensure-generic-function 'ob_list-val :lambda-list '(m))
(cl:defmethod ob_list-val ((m <object_only-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:ob_list-val is deprecated.  Use text_msgs-srv:ob_list instead.")
  (ob_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <object_only-response>) ostream)
  "Serializes a message object of type '<object_only-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ob_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ob_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <object_only-response>) istream)
  "Deserializes a message object of type '<object_only-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ob_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ob_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'text_msgs-msg:object_pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<object_only-response>)))
  "Returns string type for a service object of type '<object_only-response>"
  "text_msgs/object_onlyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'object_only-response)))
  "Returns string type for a service object of type 'object_only-response"
  "text_msgs/object_onlyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<object_only-response>)))
  "Returns md5sum for a message object of type '<object_only-response>"
  "1af0bf5105da2ef053fba4cb2b4821cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'object_only-response)))
  "Returns md5sum for a message object of type 'object_only-response"
  "1af0bf5105da2ef053fba4cb2b4821cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<object_only-response>)))
  "Returns full string definition for message of type '<object_only-response>"
  (cl:format cl:nil "#Response data~%string state  # pick or suck~%int32 count~%object_pose[] ob_list~%~%~%================================================================================~%MSG: text_msgs/object_pose~%int32 object~%string state 		# pick or suck~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'object_only-response)))
  "Returns full string definition for message of type 'object_only-response"
  (cl:format cl:nil "#Response data~%string state  # pick or suck~%int32 count~%object_pose[] ob_list~%~%~%================================================================================~%MSG: text_msgs/object_pose~%int32 object~%string state 		# pick or suck~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <object_only-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ob_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <object_only-response>))
  "Converts a ROS message object to a list"
  (cl:list 'object_only-response
    (cl:cons ':state (state msg))
    (cl:cons ':count (count msg))
    (cl:cons ':ob_list (ob_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'object_only)))
  'object_only-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'object_only)))
  'object_only-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'object_only)))
  "Returns string type for a service object of type '<object_only>"
  "text_msgs/object_only")