; Auto-generated. Do not edit!


(cl:in-package text_msgs-srv)


;//! \htmlinclude text_detection_srv-request.msg.html

(cl:defclass <text_detection_srv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass text_detection_srv-request (<text_detection_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <text_detection_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'text_detection_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-srv:<text_detection_srv-request> is deprecated: use text_msgs-srv:text_detection_srv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <text_detection_srv-request>) ostream)
  "Serializes a message object of type '<text_detection_srv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <text_detection_srv-request>) istream)
  "Deserializes a message object of type '<text_detection_srv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<text_detection_srv-request>)))
  "Returns string type for a service object of type '<text_detection_srv-request>"
  "text_msgs/text_detection_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'text_detection_srv-request)))
  "Returns string type for a service object of type 'text_detection_srv-request"
  "text_msgs/text_detection_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<text_detection_srv-request>)))
  "Returns md5sum for a message object of type '<text_detection_srv-request>"
  "cd159a3525dc687ad17b1858d3f91e0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'text_detection_srv-request)))
  "Returns md5sum for a message object of type 'text_detection_srv-request"
  "cd159a3525dc687ad17b1858d3f91e0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<text_detection_srv-request>)))
  "Returns full string definition for message of type '<text_detection_srv-request>"
  (cl:format cl:nil "#Request data~%# sensor_msgs/Image image~%# sensor_msgs/Image depth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'text_detection_srv-request)))
  "Returns full string definition for message of type 'text_detection_srv-request"
  (cl:format cl:nil "#Request data~%# sensor_msgs/Image image~%# sensor_msgs/Image depth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <text_detection_srv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <text_detection_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'text_detection_srv-request
))
;//! \htmlinclude text_detection_srv-response.msg.html

(cl:defclass <text_detection_srv-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
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
   (mask
    :reader mask
    :initarg :mask
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass text_detection_srv-response (<text_detection_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <text_detection_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'text_detection_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-srv:<text_detection_srv-response> is deprecated: use text_msgs-srv:text_detection_srv-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <text_detection_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:state-val is deprecated.  Use text_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <text_detection_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:image-val is deprecated.  Use text_msgs-srv:image instead.")
  (image m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <text_detection_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:depth-val is deprecated.  Use text_msgs-srv:depth instead.")
  (depth m))

(cl:ensure-generic-function 'mask-val :lambda-list '(m))
(cl:defmethod mask-val ((m <text_detection_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:mask-val is deprecated.  Use text_msgs-srv:mask instead.")
  (mask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <text_detection_srv-response>) ostream)
  "Serializes a message object of type '<text_detection_srv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mask) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <text_detection_srv-response>) istream)
  "Deserializes a message object of type '<text_detection_srv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mask) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<text_detection_srv-response>)))
  "Returns string type for a service object of type '<text_detection_srv-response>"
  "text_msgs/text_detection_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'text_detection_srv-response)))
  "Returns string type for a service object of type 'text_detection_srv-response"
  "text_msgs/text_detection_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<text_detection_srv-response>)))
  "Returns md5sum for a message object of type '<text_detection_srv-response>"
  "cd159a3525dc687ad17b1858d3f91e0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'text_detection_srv-response)))
  "Returns md5sum for a message object of type 'text_detection_srv-response"
  "cd159a3525dc687ad17b1858d3f91e0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<text_detection_srv-response>)))
  "Returns full string definition for message of type '<text_detection_srv-response>"
  (cl:format cl:nil "#Response data~%string state~%sensor_msgs/Image image~%sensor_msgs/Image depth~%sensor_msgs/Image mask # for mission result~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'text_detection_srv-response)))
  "Returns full string definition for message of type 'text_detection_srv-response"
  (cl:format cl:nil "#Response data~%string state~%sensor_msgs/Image image~%sensor_msgs/Image depth~%sensor_msgs/Image mask # for mission result~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <text_detection_srv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mask))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <text_detection_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'text_detection_srv-response
    (cl:cons ':state (state msg))
    (cl:cons ':image (image msg))
    (cl:cons ':depth (depth msg))
    (cl:cons ':mask (mask msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'text_detection_srv)))
  'text_detection_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'text_detection_srv)))
  'text_detection_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'text_detection_srv)))
  "Returns string type for a service object of type '<text_detection_srv>"
  "text_msgs/text_detection_srv")