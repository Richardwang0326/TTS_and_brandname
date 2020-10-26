;; Auto-generated. Do not edit!


(when (boundp 'text_msgs::text_detection_array)
  (if (not (find-package "TEXT_MSGS"))
    (make-package "TEXT_MSGS"))
  (shadow 'text_detection_array (find-package "TEXT_MSGS")))
(unless (find-package "TEXT_MSGS::TEXT_DETECTION_ARRAY")
  (make-package "TEXT_MSGS::TEXT_DETECTION_ARRAY"))

(in-package "ROS")
;;//! \htmlinclude text_detection_array.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass text_msgs::text_detection_array
  :super ros::object
  :slots (_status _image _depth _bb_count _text_array ))

(defmethod text_msgs::text_detection_array
  (:init
   (&key
    ((:status __status) "")
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:depth __depth) (instance sensor_msgs::Image :init))
    ((:bb_count __bb_count) 0)
    ((:text_array __text_array) (let (r) (dotimes (i 0) (push (instance text_msgs::text_detection_msg :init) r)) r))
    )
   (send-super :init)
   (setq _status (string __status))
   (setq _image __image)
   (setq _depth __depth)
   (setq _bb_count (round __bb_count))
   (setq _text_array __text_array)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
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
  (:bb_count
   (&optional __bb_count)
   (if __bb_count (setq _bb_count __bb_count)) _bb_count)
  (:text_array
   (&rest __text_array)
   (if (keywordp (car __text_array))
       (send* _text_array __text_array)
     (progn
       (if __text_array (setq _text_array (car __text_array)))
       _text_array)))
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; sensor_msgs/Image _depth
    (send _depth :serialization-length)
    ;; int32 _bb_count
    4
    ;; text_msgs/text_detection_msg[] _text_array
    (apply #'+ (send-all _text_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; sensor_msgs/Image _depth
       (send _depth :serialize s)
     ;; int32 _bb_count
       (write-long _bb_count s)
     ;; text_msgs/text_detection_msg[] _text_array
     (write-long (length _text_array) s)
     (dolist (elem _text_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; sensor_msgs/Image _depth
     (send _depth :deserialize buf ptr-) (incf ptr- (send _depth :serialization-length))
   ;; int32 _bb_count
     (setq _bb_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; text_msgs/text_detection_msg[] _text_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _text_array (let (r) (dotimes (i n) (push (instance text_msgs::text_detection_msg :init) r)) r))
     (dolist (elem- _text_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get text_msgs::text_detection_array :md5sum-) "70b11adbdf88669325700427bf1cc417")
(setf (get text_msgs::text_detection_array :datatype-) "text_msgs/text_detection_array")
(setf (get text_msgs::text_detection_array :definition-)
      "string status				# O for non_return , X for return 
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
int32[] point
")



(provide :text_msgs/text_detection_array "70b11adbdf88669325700427bf1cc417")


