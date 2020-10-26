;; Auto-generated. Do not edit!


(when (boundp 'text_msgs::object_only)
  (if (not (find-package "TEXT_MSGS"))
    (make-package "TEXT_MSGS"))
  (shadow 'object_only (find-package "TEXT_MSGS")))
(unless (find-package "TEXT_MSGS::OBJECT_ONLY")
  (make-package "TEXT_MSGS::OBJECT_ONLY"))
(unless (find-package "TEXT_MSGS::OBJECT_ONLYREQUEST")
  (make-package "TEXT_MSGS::OBJECT_ONLYREQUEST"))
(unless (find-package "TEXT_MSGS::OBJECT_ONLYRESPONSE")
  (make-package "TEXT_MSGS::OBJECT_ONLYRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass text_msgs::object_onlyRequest
  :super ros::object
  :slots (_image _depth ))

(defmethod text_msgs::object_onlyRequest
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:depth __depth) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _image __image)
   (setq _depth __depth)
   self)
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
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; sensor_msgs/Image _depth
    (send _depth :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; sensor_msgs/Image _depth
       (send _depth :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; sensor_msgs/Image _depth
     (send _depth :deserialize buf ptr-) (incf ptr- (send _depth :serialization-length))
   ;;
   self)
  )

(defclass text_msgs::object_onlyResponse
  :super ros::object
  :slots (_state _count _ob_list ))

(defmethod text_msgs::object_onlyResponse
  (:init
   (&key
    ((:state __state) "")
    ((:count __count) 0)
    ((:ob_list __ob_list) (let (r) (dotimes (i 0) (push (instance text_msgs::object_pose :init) r)) r))
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _count (round __count))
   (setq _ob_list __ob_list)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:ob_list
   (&rest __ob_list)
   (if (keywordp (car __ob_list))
       (send* _ob_list __ob_list)
     (progn
       (if __ob_list (setq _ob_list (car __ob_list)))
       _ob_list)))
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ;; int32 _count
    4
    ;; text_msgs/object_pose[] _ob_list
    (apply #'+ (send-all _ob_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; int32 _count
       (write-long _count s)
     ;; text_msgs/object_pose[] _ob_list
     (write-long (length _ob_list) s)
     (dolist (elem _ob_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; text_msgs/object_pose[] _ob_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ob_list (let (r) (dotimes (i n) (push (instance text_msgs::object_pose :init) r)) r))
     (dolist (elem- _ob_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass text_msgs::object_only
  :super ros::object
  :slots ())

(setf (get text_msgs::object_only :md5sum-) "1af0bf5105da2ef053fba4cb2b4821cc")
(setf (get text_msgs::object_only :datatype-) "text_msgs/object_only")
(setf (get text_msgs::object_only :request) text_msgs::object_onlyRequest)
(setf (get text_msgs::object_only :response) text_msgs::object_onlyResponse)

(defmethod text_msgs::object_onlyRequest
  (:response () (instance text_msgs::object_onlyResponse :init)))

(setf (get text_msgs::object_onlyRequest :md5sum-) "1af0bf5105da2ef053fba4cb2b4821cc")
(setf (get text_msgs::object_onlyRequest :datatype-) "text_msgs/object_onlyRequest")
(setf (get text_msgs::object_onlyRequest :definition-)
      "#Request data
sensor_msgs/Image image
sensor_msgs/Image depth

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
---
#Response data
string state  # pick or suck
int32 count
object_pose[] ob_list


================================================================================
MSG: text_msgs/object_pose
int32 object
string state 		# pick or suck
geometry_msgs/Pose pose

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
")

(setf (get text_msgs::object_onlyResponse :md5sum-) "1af0bf5105da2ef053fba4cb2b4821cc")
(setf (get text_msgs::object_onlyResponse :datatype-) "text_msgs/object_onlyResponse")
(setf (get text_msgs::object_onlyResponse :definition-)
      "#Request data
sensor_msgs/Image image
sensor_msgs/Image depth

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
---
#Response data
string state  # pick or suck
int32 count
object_pose[] ob_list


================================================================================
MSG: text_msgs/object_pose
int32 object
string state 		# pick or suck
geometry_msgs/Pose pose

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
")



(provide :text_msgs/object_only "1af0bf5105da2ef053fba4cb2b4821cc")


