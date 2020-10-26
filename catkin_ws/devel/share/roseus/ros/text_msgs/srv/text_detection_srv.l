;; Auto-generated. Do not edit!


(when (boundp 'text_msgs::text_detection_srv)
  (if (not (find-package "TEXT_MSGS"))
    (make-package "TEXT_MSGS"))
  (shadow 'text_detection_srv (find-package "TEXT_MSGS")))
(unless (find-package "TEXT_MSGS::TEXT_DETECTION_SRV")
  (make-package "TEXT_MSGS::TEXT_DETECTION_SRV"))
(unless (find-package "TEXT_MSGS::TEXT_DETECTION_SRVREQUEST")
  (make-package "TEXT_MSGS::TEXT_DETECTION_SRVREQUEST"))
(unless (find-package "TEXT_MSGS::TEXT_DETECTION_SRVRESPONSE")
  (make-package "TEXT_MSGS::TEXT_DETECTION_SRVRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass text_msgs::text_detection_srvRequest
  :super ros::object
  :slots ())

(defmethod text_msgs::text_detection_srvRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass text_msgs::text_detection_srvResponse
  :super ros::object
  :slots (_state _image _depth _mask ))

(defmethod text_msgs::text_detection_srvResponse
  (:init
   (&key
    ((:state __state) "")
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:depth __depth) (instance sensor_msgs::Image :init))
    ((:mask __mask) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _image __image)
   (setq _depth __depth)
   (setq _mask __mask)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:depth
   (&rest __depth)
   (if (keywordp (car __depth))
       (send* _depth __depth)
     (progn
       (if __depth (setq _depth (car __depth)))
       _depth)))
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
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; sensor_msgs/Image _depth
    (send _depth :serialization-length)
    ;; sensor_msgs/Image _mask
    (send _mask :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; sensor_msgs/Image _depth
       (send _depth :serialize s)
     ;; sensor_msgs/Image _mask
       (send _mask :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; sensor_msgs/Image _depth
     (send _depth :deserialize buf ptr-) (incf ptr- (send _depth :serialization-length))
   ;; sensor_msgs/Image _mask
     (send _mask :deserialize buf ptr-) (incf ptr- (send _mask :serialization-length))
   ;;
   self)
  )

(defclass text_msgs::text_detection_srv
  :super ros::object
  :slots ())

(setf (get text_msgs::text_detection_srv :md5sum-) "cd159a3525dc687ad17b1858d3f91e0f")
(setf (get text_msgs::text_detection_srv :datatype-) "text_msgs/text_detection_srv")
(setf (get text_msgs::text_detection_srv :request) text_msgs::text_detection_srvRequest)
(setf (get text_msgs::text_detection_srv :response) text_msgs::text_detection_srvResponse)

(defmethod text_msgs::text_detection_srvRequest
  (:response () (instance text_msgs::text_detection_srvResponse :init)))

(setf (get text_msgs::text_detection_srvRequest :md5sum-) "cd159a3525dc687ad17b1858d3f91e0f")
(setf (get text_msgs::text_detection_srvRequest :datatype-) "text_msgs/text_detection_srvRequest")
(setf (get text_msgs::text_detection_srvRequest :definition-)
      "#Request data
# sensor_msgs/Image image
# sensor_msgs/Image depth
---
#Response data
string state
sensor_msgs/Image image
sensor_msgs/Image depth
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

(setf (get text_msgs::text_detection_srvResponse :md5sum-) "cd159a3525dc687ad17b1858d3f91e0f")
(setf (get text_msgs::text_detection_srvResponse :datatype-) "text_msgs/text_detection_srvResponse")
(setf (get text_msgs::text_detection_srvResponse :definition-)
      "#Request data
# sensor_msgs/Image image
# sensor_msgs/Image depth
---
#Response data
string state
sensor_msgs/Image image
sensor_msgs/Image depth
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



(provide :text_msgs/text_detection_srv "cd159a3525dc687ad17b1858d3f91e0f")


