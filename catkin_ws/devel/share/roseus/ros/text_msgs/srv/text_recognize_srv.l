;; Auto-generated. Do not edit!


(when (boundp 'text_msgs::text_recognize_srv)
  (if (not (find-package "TEXT_MSGS"))
    (make-package "TEXT_MSGS"))
  (shadow 'text_recognize_srv (find-package "TEXT_MSGS")))
(unless (find-package "TEXT_MSGS::TEXT_RECOGNIZE_SRV")
  (make-package "TEXT_MSGS::TEXT_RECOGNIZE_SRV"))
(unless (find-package "TEXT_MSGS::TEXT_RECOGNIZE_SRVREQUEST")
  (make-package "TEXT_MSGS::TEXT_RECOGNIZE_SRVREQUEST"))
(unless (find-package "TEXT_MSGS::TEXT_RECOGNIZE_SRVRESPONSE")
  (make-package "TEXT_MSGS::TEXT_RECOGNIZE_SRVRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass text_msgs::text_recognize_srvRequest
  :super ros::object
  :slots (_direct _data ))

(defmethod text_msgs::text_recognize_srvRequest
  (:init
   (&key
    ((:direct __direct) 0)
    ((:data __data) (instance text_msgs::text_detection_array :init))
    )
   (send-super :init)
   (setq _direct (round __direct))
   (setq _data __data)
   self)
  (:direct
   (&optional __direct)
   (if __direct (setq _direct __direct)) _direct)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; int32 _direct
    4
    ;; text_msgs/text_detection_array _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _direct
       (write-long _direct s)
     ;; text_msgs/text_detection_array _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _direct
     (setq _direct (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; text_msgs/text_detection_array _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass text_msgs::text_recognize_srvResponse
  :super ros::object
  :slots (_state _mask ))

(defmethod text_msgs::text_recognize_srvResponse
  (:init
   (&key
    ((:state __state) "")
    ((:mask __mask) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _mask __mask)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:mask
   (&rest __mask)
   (if (keywordp (car __mask))
       (send* _mask __mask)
     (progn
       (if __mask (setq _mask (car __mask)))
       _mask)))
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ;; sensor_msgs/Image _mask
    (send _mask :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; sensor_msgs/Image _mask
       (send _mask :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/Image _mask
     (send _mask :deserialize buf ptr-) (incf ptr- (send _mask :serialization-length))
   ;;
   self)
  )

(defclass text_msgs::text_recognize_srv
  :super ros::object
  :slots ())

(setf (get text_msgs::text_recognize_srv :md5sum-) "6a29ed0e96899d05731bd1631ebb881a")
(setf (get text_msgs::text_recognize_srv :datatype-) "text_msgs/text_recognize_srv")
(setf (get text_msgs::text_recognize_srv :request) text_msgs::text_recognize_srvRequest)
(setf (get text_msgs::text_recognize_srv :response) text_msgs::text_recognize_srvResponse)

(defmethod text_msgs::text_recognize_srvRequest
  (:response () (instance text_msgs::text_recognize_srvResponse :init)))

(setf (get text_msgs::text_recognize_srvRequest :md5sum-) "6a29ed0e96899d05731bd1631ebb881a")
(setf (get text_msgs::text_recognize_srvRequest :datatype-) "text_msgs/text_recognize_srvRequest")
(setf (get text_msgs::text_recognize_srvRequest :definition-)
      "#Request data
int32 direct   # 0 = 0, 1 = 90, 2 = 180, 3 = 270
text_detection_array data

================================================================================
MSG: text_msgs/text_detection_array
string status				# O for non_return , X for return 
sensor_msgs/Image image
sensor_msgs/Image depth
int32 bb_count
text_detection_msg[] text_array
================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: text_msgs/text_detection_msg
string status				# O for non_return , X for return 
float64 probability
geometry_msgs/Pose pose
bb_box box
int_arr[] contour

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: text_msgs/bb_box
int32 xmax
int32 xmin
int32 ymax
int32 ymin
================================================================================
MSG: text_msgs/int_arr
---
#Response data
string state
sensor_msgs/Image mask # for mission result


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")

(setf (get text_msgs::text_recognize_srvResponse :md5sum-) "6a29ed0e96899d05731bd1631ebb881a")
(setf (get text_msgs::text_recognize_srvResponse :datatype-) "text_msgs/text_recognize_srvResponse")
(setf (get text_msgs::text_recognize_srvResponse :definition-)
      "#Request data
int32 direct   # 0 = 0, 1 = 90, 2 = 180, 3 = 270
text_detection_array data

================================================================================
MSG: text_msgs/text_detection_array
string status				# O for non_return , X for return 
sensor_msgs/Image image
sensor_msgs/Image depth
int32 bb_count
text_detection_msg[] text_array
================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: text_msgs/text_detection_msg
string status				# O for non_return , X for return 
float64 probability
geometry_msgs/Pose pose
bb_box box
int_arr[] contour

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: text_msgs/bb_box
int32 xmax
int32 xmin
int32 ymax
int32 ymin
================================================================================
MSG: text_msgs/int_arr
---
#Response data
string state
sensor_msgs/Image mask # for mission result


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")



(provide :text_msgs/text_recognize_srv "6a29ed0e96899d05731bd1631ebb881a")


