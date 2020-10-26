;; Auto-generated. Do not edit!


(when (boundp 'text_msgs::text_detection_msg)
  (if (not (find-package "TEXT_MSGS"))
    (make-package "TEXT_MSGS"))
  (shadow 'text_detection_msg (find-package "TEXT_MSGS")))
(unless (find-package "TEXT_MSGS::TEXT_DETECTION_MSG")
  (make-package "TEXT_MSGS::TEXT_DETECTION_MSG"))

(in-package "ROS")
;;//! \htmlinclude text_detection_msg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass text_msgs::text_detection_msg
  :super ros::object
  :slots (_status _probability _pose _box _contour ))

(defmethod text_msgs::text_detection_msg
  (:init
   (&key
    ((:status __status) "")
    ((:probability __probability) 0.0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:box __box) (instance text_msgs::bb_box :init))
    ((:contour __contour) (let (r) (dotimes (i 0) (push (instance text_msgs::int_arr :init) r)) r))
    )
   (send-super :init)
   (setq _status (string __status))
   (setq _probability (float __probability))
   (setq _pose __pose)
   (setq _box __box)
   (setq _contour __contour)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:box
   (&rest __box)
   (if (keywordp (car __box))
       (send* _box __box)
     (progn
       (if __box (setq _box (car __box)))
       _box)))
  (:contour
   (&rest __contour)
   (if (keywordp (car __contour))
       (send* _contour __contour)
     (progn
       (if __contour (setq _contour (car __contour)))
       _contour)))
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ;; float64 _probability
    8
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; text_msgs/bb_box _box
    (send _box :serialization-length)
    ;; text_msgs/int_arr[] _contour
    (apply #'+ (send-all _contour :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; float64 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; text_msgs/bb_box _box
       (send _box :serialize s)
     ;; text_msgs/int_arr[] _contour
     (write-long (length _contour) s)
     (dolist (elem _contour)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _probability
     (setq _probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; text_msgs/bb_box _box
     (send _box :deserialize buf ptr-) (incf ptr- (send _box :serialization-length))
   ;; text_msgs/int_arr[] _contour
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contour (let (r) (dotimes (i n) (push (instance text_msgs::int_arr :init) r)) r))
     (dolist (elem- _contour)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get text_msgs::text_detection_msg :md5sum-) "ba79c449ebbb021bfad5cb922f4b82d7")
(setf (get text_msgs::text_detection_msg :datatype-) "text_msgs/text_detection_msg")
(setf (get text_msgs::text_detection_msg :definition-)
      "string status				# O for non_return , X for return 
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



(provide :text_msgs/text_detection_msg "ba79c449ebbb021bfad5cb922f4b82d7")


