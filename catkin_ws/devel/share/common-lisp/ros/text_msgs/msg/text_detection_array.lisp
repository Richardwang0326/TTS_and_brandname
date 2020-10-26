; Auto-generated. Do not edit!


(cl:in-package text_msgs-msg)


;//! \htmlinclude text_detection_array.msg.html

(cl:defclass <text_detection_array> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (depth
    :reader depth
    :initarg :depth
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (bb_count
    :reader bb_count
    :initarg :bb_count
    :type cl:integer
    :initform 0)
   (text_array
    :reader text_array
    :initarg :text_array
    :type (cl:vector text_msgs-msg:text_detection_msg)
   :initform (cl:make-array 0 :element-type 'text_msgs-msg:text_detection_msg :initial-element (cl:make-instance 'text_msgs-msg:text_detection_msg))))
)

(cl:defclass text_detection_array (<text_detection_array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <text_detection_array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'text_detection_array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-msg:<text_detection_array> is deprecated: use text_msgs-msg:text_detection_array instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <text_detection_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:status-val is deprecated.  Use text_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <text_detection_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:image-val is deprecated.  Use text_msgs-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <text_detection_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:depth-val is deprecated.  Use text_msgs-msg:depth instead.")
  (depth m))

(cl:ensure-generic-function 'bb_count-val :lambda-list '(m))
(cl:defmethod bb_count-val ((m <text_detection_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:bb_count-val is deprecated.  Use text_msgs-msg:bb_count instead.")
  (bb_count m))

(cl:ensure-generic-function 'text_array-val :lambda-list '(m))
(cl:defmethod text_array-val ((m <text_detection_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-msg:text_array-val is deprecated.  Use text_msgs-msg:text_array instead.")
  (text_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <text_detection_array>) ostream)
  "Serializes a message object of type '<text_detection_array>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth) ostream)
  (cl:let* ((signed (cl:slot-value msg 'bb_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'text_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'text_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <text_detection_array>) istream)
  "Deserializes a message object of type '<text_detection_array>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bb_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'text_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'text_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'text_msgs-msg:text_detection_msg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<text_detection_array>)))
  "Returns string type for a message object of type '<text_detection_array>"
  "text_msgs/text_detection_array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'text_detection_array)))
  "Returns string type for a message object of type 'text_detection_array"
  "text_msgs/text_detection_array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<text_detection_array>)))
  "Returns md5sum for a message object of type '<text_detection_array>"
  "70b11adbdf88669325700427bf1cc417")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'text_detection_array)))
  "Returns md5sum for a message object of type 'text_detection_array"
  "70b11adbdf88669325700427bf1cc417")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<text_detection_array>)))
  "Returns full string definition for message of type '<text_detection_array>"
  (cl:format cl:nil "string status				# O for non_return , X for return ~%sensor_msgs/Image image~%sensor_msgs/Image depth~%int32 bb_count~%text_detection_msg[] text_array~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: text_msgs/text_detection_msg~%string status				# O for non_return , X for return ~%float64 probability~%geometry_msgs/Pose pose~%bb_box box~%int_arr[] contour~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: text_msgs/bb_box~%int32 xmax~%int32 xmin~%int32 ymax~%int32 ymin~%================================================================================~%MSG: text_msgs/int_arr~%int32[] point~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'text_detection_array)))
  "Returns full string definition for message of type 'text_detection_array"
  (cl:format cl:nil "string status				# O for non_return , X for return ~%sensor_msgs/Image image~%sensor_msgs/Image depth~%int32 bb_count~%text_detection_msg[] text_array~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: text_msgs/text_detection_msg~%string status				# O for non_return , X for return ~%float64 probability~%geometry_msgs/Pose pose~%bb_box box~%int_arr[] contour~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: text_msgs/bb_box~%int32 xmax~%int32 xmin~%int32 ymax~%int32 ymin~%================================================================================~%MSG: text_msgs/int_arr~%int32[] point~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <text_detection_array>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'text_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <text_detection_array>))
  "Converts a ROS message object to a list"
  (cl:list 'text_detection_array
    (cl:cons ':status (status msg))
    (cl:cons ':image (image msg))
    (cl:cons ':depth (depth msg))
    (cl:cons ':bb_count (bb_count msg))
    (cl:cons ':text_array (text_array msg))
))
