;; Auto-generated. Do not edit!


(when (boundp 'text_msgs::bn_pose_srv)
  (if (not (find-package "TEXT_MSGS"))
    (make-package "TEXT_MSGS"))
  (shadow 'bn_pose_srv (find-package "TEXT_MSGS")))
(unless (find-package "TEXT_MSGS::BN_POSE_SRV")
  (make-package "TEXT_MSGS::BN_POSE_SRV"))
(unless (find-package "TEXT_MSGS::BN_POSE_SRVREQUEST")
  (make-package "TEXT_MSGS::BN_POSE_SRVREQUEST"))
(unless (find-package "TEXT_MSGS::BN_POSE_SRVRESPONSE")
  (make-package "TEXT_MSGS::BN_POSE_SRVRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass text_msgs::bn_pose_srvRequest
  :super ros::object
  :slots (_count _total_list _list _image _depth _mask ))

(defmethod text_msgs::bn_pose_srvRequest
  (:init
   (&key
    ((:count __count) 0)
    ((:total_list __total_list) 0)
    ((:list __list) (make-array 0 :initial-element 0 :element-type :integer))
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:depth __depth) (instance sensor_msgs::Image :init))
    ((:mask __mask) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _count (round __count))
   (setq _total_list (round __total_list))
   (setq _list __list)
   (setq _image __image)
   (setq _depth __depth)
   (setq _mask __mask)
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:total_list
   (&optional __total_list)
   (if __total_list (setq _total_list __total_list)) _total_list)
  (:list
   (&optional __list)
   (if __list (setq _list __list)) _list)
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
    ;; int32 _count
    4
    ;; int32 _total_list
    4
    ;; int32[] _list
    (* 4    (length _list)) 4
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
     ;; int32 _count
       (write-long _count s)
     ;; int32 _total_list
       (write-long _total_list s)
     ;; int32[] _list
     (write-long (length _list) s)
     (dotimes (i (length _list))
       (write-long (elt _list i) s)
       )
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
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _total_list
     (setq _total_list (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _list i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; sensor_msgs/Image _depth
     (send _depth :deserialize buf ptr-) (incf ptr- (send _depth :serialization-length))
   ;; sensor_msgs/Image _mask
     (send _mask :deserialize buf ptr-) (incf ptr- (send _mask :serialization-length))
   ;;
   self)
  )

(defclass text_msgs::bn_pose_srvResponse
  :super ros::object
  :slots (_state _count _pix _ob_list ))

(defmethod text_msgs::bn_pose_srvResponse
  (:init
   (&key
    ((:state __state) "")
    ((:count __count) 0)
    ((:pix __pix) 0)
    ((:ob_list __ob_list) (let (r) (dotimes (i 0) (push (instance text_msgs::object_pose :init) r)) r))
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _count (round __count))
   (setq _pix (round __pix))
   (setq _ob_list __ob_list)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:pix
   (&optional __pix)
   (if __pix (setq _pix __pix)) _pix)
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
    ;; int32 _pix
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
     ;; int32 _pix
       (write-long _pix s)
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
   ;; int32 _pix
     (setq _pix (sys::peek buf ptr- :integer)) (incf ptr- 4)
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

(defclass text_msgs::bn_pose_srv
  :super ros::object
  :slots ())

(setf (get text_msgs::bn_pose_srv :md5sum-) "a390f42680d4ac2ddfd1904d44d51e95")
(setf (get text_msgs::bn_pose_srv :datatype-) "text_msgs/bn_pose_srv")
(setf (get text_msgs::bn_pose_srv :request) text_msgs::bn_pose_srvRequest)
(setf (get text_msgs::bn_pose_srv :response) text_msgs::bn_pose_srvResponse)

(defmethod text_msgs::bn_pose_srvRequest
  (:response () (instance text_msgs::bn_pose_srvResponse :init)))

(setf (get text_msgs::bn_pose_srvRequest :md5sum-) "a390f42680d4ac2ddfd1904d44d51e95")
(setf (get text_msgs::bn_pose_srvRequest :datatype-) "text_msgs/bn_pose_srvRequest")
(setf (get text_msgs::bn_pose_srvRequest :definition-)
      "#Request data
int32 count
int32 total_list
int32[] list
sensor_msgs/Image image
sensor_msgs/Image depth
sensor_msgs/Image mask

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
int32 pix
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

(setf (get text_msgs::bn_pose_srvResponse :md5sum-) "a390f42680d4ac2ddfd1904d44d51e95")
(setf (get text_msgs::bn_pose_srvResponse :datatype-) "text_msgs/bn_pose_srvResponse")
(setf (get text_msgs::bn_pose_srvResponse :definition-)
      "#Request data
int32 count
int32 total_list
int32[] list
sensor_msgs/Image image
sensor_msgs/Image depth
sensor_msgs/Image mask

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
int32 pix
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



(provide :text_msgs/bn_pose_srv "a390f42680d4ac2ddfd1904d44d51e95")


