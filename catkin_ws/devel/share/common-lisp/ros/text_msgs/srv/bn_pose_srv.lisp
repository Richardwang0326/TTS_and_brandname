; Auto-generated. Do not edit!


(cl:in-package text_msgs-srv)


;//! \htmlinclude bn_pose_srv-request.msg.html

(cl:defclass <bn_pose_srv-request> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (total_list
    :reader total_list
    :initarg :total_list
    :type cl:integer
    :initform 0)
   (list
    :reader list
    :initarg :list
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
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

(cl:defclass bn_pose_srv-request (<bn_pose_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bn_pose_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bn_pose_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-srv:<bn_pose_srv-request> is deprecated: use text_msgs-srv:bn_pose_srv-request instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <bn_pose_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:count-val is deprecated.  Use text_msgs-srv:count instead.")
  (count m))

(cl:ensure-generic-function 'total_list-val :lambda-list '(m))
(cl:defmethod total_list-val ((m <bn_pose_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:total_list-val is deprecated.  Use text_msgs-srv:total_list instead.")
  (total_list m))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <bn_pose_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:list-val is deprecated.  Use text_msgs-srv:list instead.")
  (list m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <bn_pose_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:image-val is deprecated.  Use text_msgs-srv:image instead.")
  (image m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <bn_pose_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:depth-val is deprecated.  Use text_msgs-srv:depth instead.")
  (depth m))

(cl:ensure-generic-function 'mask-val :lambda-list '(m))
(cl:defmethod mask-val ((m <bn_pose_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:mask-val is deprecated.  Use text_msgs-srv:mask instead.")
  (mask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bn_pose_srv-request>) ostream)
  "Serializes a message object of type '<bn_pose_srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'total_list)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'list))))
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
   (cl:slot-value msg 'list))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mask) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bn_pose_srv-request>) istream)
  "Deserializes a message object of type '<bn_pose_srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'total_list) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mask) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bn_pose_srv-request>)))
  "Returns string type for a service object of type '<bn_pose_srv-request>"
  "text_msgs/bn_pose_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bn_pose_srv-request)))
  "Returns string type for a service object of type 'bn_pose_srv-request"
  "text_msgs/bn_pose_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bn_pose_srv-request>)))
  "Returns md5sum for a message object of type '<bn_pose_srv-request>"
  "a390f42680d4ac2ddfd1904d44d51e95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bn_pose_srv-request)))
  "Returns md5sum for a message object of type 'bn_pose_srv-request"
  "a390f42680d4ac2ddfd1904d44d51e95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bn_pose_srv-request>)))
  "Returns full string definition for message of type '<bn_pose_srv-request>"
  (cl:format cl:nil "#Request data~%int32 count~%int32 total_list~%int32[] list~%sensor_msgs/Image image~%sensor_msgs/Image depth~%sensor_msgs/Image mask~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bn_pose_srv-request)))
  "Returns full string definition for message of type 'bn_pose_srv-request"
  (cl:format cl:nil "#Request data~%int32 count~%int32 total_list~%int32[] list~%sensor_msgs/Image image~%sensor_msgs/Image depth~%sensor_msgs/Image mask~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bn_pose_srv-request>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mask))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bn_pose_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'bn_pose_srv-request
    (cl:cons ':count (count msg))
    (cl:cons ':total_list (total_list msg))
    (cl:cons ':list (list msg))
    (cl:cons ':image (image msg))
    (cl:cons ':depth (depth msg))
    (cl:cons ':mask (mask msg))
))
;//! \htmlinclude bn_pose_srv-response.msg.html

(cl:defclass <bn_pose_srv-response> (roslisp-msg-protocol:ros-message)
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
   (pix
    :reader pix
    :initarg :pix
    :type cl:integer
    :initform 0)
   (ob_list
    :reader ob_list
    :initarg :ob_list
    :type (cl:vector text_msgs-msg:object_pose)
   :initform (cl:make-array 0 :element-type 'text_msgs-msg:object_pose :initial-element (cl:make-instance 'text_msgs-msg:object_pose))))
)

(cl:defclass bn_pose_srv-response (<bn_pose_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bn_pose_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bn_pose_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-srv:<bn_pose_srv-response> is deprecated: use text_msgs-srv:bn_pose_srv-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <bn_pose_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:state-val is deprecated.  Use text_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <bn_pose_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:count-val is deprecated.  Use text_msgs-srv:count instead.")
  (count m))

(cl:ensure-generic-function 'pix-val :lambda-list '(m))
(cl:defmethod pix-val ((m <bn_pose_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:pix-val is deprecated.  Use text_msgs-srv:pix instead.")
  (pix m))

(cl:ensure-generic-function 'ob_list-val :lambda-list '(m))
(cl:defmethod ob_list-val ((m <bn_pose_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:ob_list-val is deprecated.  Use text_msgs-srv:ob_list instead.")
  (ob_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bn_pose_srv-response>) ostream)
  "Serializes a message object of type '<bn_pose_srv-response>"
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
  (cl:let* ((signed (cl:slot-value msg 'pix)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bn_pose_srv-response>) istream)
  "Deserializes a message object of type '<bn_pose_srv-response>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pix) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bn_pose_srv-response>)))
  "Returns string type for a service object of type '<bn_pose_srv-response>"
  "text_msgs/bn_pose_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bn_pose_srv-response)))
  "Returns string type for a service object of type 'bn_pose_srv-response"
  "text_msgs/bn_pose_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bn_pose_srv-response>)))
  "Returns md5sum for a message object of type '<bn_pose_srv-response>"
  "a390f42680d4ac2ddfd1904d44d51e95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bn_pose_srv-response)))
  "Returns md5sum for a message object of type 'bn_pose_srv-response"
  "a390f42680d4ac2ddfd1904d44d51e95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bn_pose_srv-response>)))
  "Returns full string definition for message of type '<bn_pose_srv-response>"
  (cl:format cl:nil "#Response data~%string state  # pick or suck~%int32 count~%int32 pix~%object_pose[] ob_list~%~%~%================================================================================~%MSG: text_msgs/object_pose~%int32 object~%string state 		# pick or suck~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bn_pose_srv-response)))
  "Returns full string definition for message of type 'bn_pose_srv-response"
  (cl:format cl:nil "#Response data~%string state  # pick or suck~%int32 count~%int32 pix~%object_pose[] ob_list~%~%~%================================================================================~%MSG: text_msgs/object_pose~%int32 object~%string state 		# pick or suck~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bn_pose_srv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ob_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bn_pose_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'bn_pose_srv-response
    (cl:cons ':state (state msg))
    (cl:cons ':count (count msg))
    (cl:cons ':pix (pix msg))
    (cl:cons ':ob_list (ob_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'bn_pose_srv)))
  'bn_pose_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'bn_pose_srv)))
  'bn_pose_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bn_pose_srv)))
  "Returns string type for a service object of type '<bn_pose_srv>"
  "text_msgs/bn_pose_srv")