; Auto-generated. Do not edit!


(cl:in-package text_msgs-srv)


;//! \htmlinclude text_recognize_srv-request.msg.html

(cl:defclass <text_recognize_srv-request> (roslisp-msg-protocol:ros-message)
  ((direct
    :reader direct
    :initarg :direct
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type text_msgs-msg:text_detection_array
    :initform (cl:make-instance 'text_msgs-msg:text_detection_array)))
)

(cl:defclass text_recognize_srv-request (<text_recognize_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <text_recognize_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'text_recognize_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-srv:<text_recognize_srv-request> is deprecated: use text_msgs-srv:text_recognize_srv-request instead.")))

(cl:ensure-generic-function 'direct-val :lambda-list '(m))
(cl:defmethod direct-val ((m <text_recognize_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:direct-val is deprecated.  Use text_msgs-srv:direct instead.")
  (direct m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <text_recognize_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:data-val is deprecated.  Use text_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <text_recognize_srv-request>) ostream)
  "Serializes a message object of type '<text_recognize_srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'direct)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <text_recognize_srv-request>) istream)
  "Deserializes a message object of type '<text_recognize_srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direct) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<text_recognize_srv-request>)))
  "Returns string type for a service object of type '<text_recognize_srv-request>"
  "text_msgs/text_recognize_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'text_recognize_srv-request)))
  "Returns string type for a service object of type 'text_recognize_srv-request"
  "text_msgs/text_recognize_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<text_recognize_srv-request>)))
  "Returns md5sum for a message object of type '<text_recognize_srv-request>"
  "6a29ed0e96899d05731bd1631ebb881a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'text_recognize_srv-request)))
  "Returns md5sum for a message object of type 'text_recognize_srv-request"
  "6a29ed0e96899d05731bd1631ebb881a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<text_recognize_srv-request>)))
  "Returns full string definition for message of type '<text_recognize_srv-request>"
  (cl:format cl:nil "#Request data~%int32 direct   # 0 = 0, 1 = 90, 2 = 180, 3 = 270~%text_detection_array data~%~%================================================================================~%MSG: text_msgs/text_detection_array~%string status				# O for non_return , X for return ~%sensor_msgs/Image image~%sensor_msgs/Image depth~%int32 bb_count~%text_detection_msg[] text_array~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: text_msgs/text_detection_msg~%string status				# O for non_return , X for return ~%float64 probability~%geometry_msgs/Pose pose~%bb_box box~%int_arr[] contour~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: text_msgs/bb_box~%int32 xmax~%int32 xmin~%int32 ymax~%int32 ymin~%================================================================================~%MSG: text_msgs/int_arr~%int32[] point~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'text_recognize_srv-request)))
  "Returns full string definition for message of type 'text_recognize_srv-request"
  (cl:format cl:nil "#Request data~%int32 direct   # 0 = 0, 1 = 90, 2 = 180, 3 = 270~%text_detection_array data~%~%================================================================================~%MSG: text_msgs/text_detection_array~%string status				# O for non_return , X for return ~%sensor_msgs/Image image~%sensor_msgs/Image depth~%int32 bb_count~%text_detection_msg[] text_array~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: text_msgs/text_detection_msg~%string status				# O for non_return , X for return ~%float64 probability~%geometry_msgs/Pose pose~%bb_box box~%int_arr[] contour~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: text_msgs/bb_box~%int32 xmax~%int32 xmin~%int32 ymax~%int32 ymin~%================================================================================~%MSG: text_msgs/int_arr~%int32[] point~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <text_recognize_srv-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <text_recognize_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'text_recognize_srv-request
    (cl:cons ':direct (direct msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude text_recognize_srv-response.msg.html

(cl:defclass <text_recognize_srv-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (mask
    :reader mask
    :initarg :mask
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass text_recognize_srv-response (<text_recognize_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <text_recognize_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'text_recognize_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-srv:<text_recognize_srv-response> is deprecated: use text_msgs-srv:text_recognize_srv-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <text_recognize_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:state-val is deprecated.  Use text_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'mask-val :lambda-list '(m))
(cl:defmethod mask-val ((m <text_recognize_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:mask-val is deprecated.  Use text_msgs-srv:mask instead.")
  (mask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <text_recognize_srv-response>) ostream)
  "Serializes a message object of type '<text_recognize_srv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mask) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <text_recognize_srv-response>) istream)
  "Deserializes a message object of type '<text_recognize_srv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mask) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<text_recognize_srv-response>)))
  "Returns string type for a service object of type '<text_recognize_srv-response>"
  "text_msgs/text_recognize_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'text_recognize_srv-response)))
  "Returns string type for a service object of type 'text_recognize_srv-response"
  "text_msgs/text_recognize_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<text_recognize_srv-response>)))
  "Returns md5sum for a message object of type '<text_recognize_srv-response>"
  "6a29ed0e96899d05731bd1631ebb881a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'text_recognize_srv-response)))
  "Returns md5sum for a message object of type 'text_recognize_srv-response"
  "6a29ed0e96899d05731bd1631ebb881a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<text_recognize_srv-response>)))
  "Returns full string definition for message of type '<text_recognize_srv-response>"
  (cl:format cl:nil "#Response data~%string state~%sensor_msgs/Image mask # for mission result~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'text_recognize_srv-response)))
  "Returns full string definition for message of type 'text_recognize_srv-response"
  (cl:format cl:nil "#Response data~%string state~%sensor_msgs/Image mask # for mission result~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <text_recognize_srv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mask))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <text_recognize_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'text_recognize_srv-response
    (cl:cons ':state (state msg))
    (cl:cons ':mask (mask msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'text_recognize_srv)))
  'text_recognize_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'text_recognize_srv)))
  'text_recognize_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'text_recognize_srv)))
  "Returns string type for a service object of type '<text_recognize_srv>"
  "text_msgs/text_recognize_srv")