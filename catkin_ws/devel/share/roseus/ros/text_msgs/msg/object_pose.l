;; Auto-generated. Do not edit!


(when (boundp 'text_msgs::object_pose)
  (if (not (find-package "TEXT_MSGS"))
    (make-package "TEXT_MSGS"))
  (shadow 'object_pose (find-package "TEXT_MSGS")))
(unless (find-package "TEXT_MSGS::OBJECT_POSE")
  (make-package "TEXT_MSGS::OBJECT_POSE"))

(in-package "ROS")
;;//! \htmlinclude object_pose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass text_msgs::object_pose
  :super ros::object
  :slots (_object _state _pose ))

(defmethod text_msgs::object_pose
  (:init
   (&key
    ((:object __object) 0)
    ((:state __state) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _object (round __object))
   (setq _state (string __state))
   (setq _pose __pose)
   self)
  (:object
   (&optional __object)
   (if __object (setq _object __object)) _object)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _object
    4
    ;; string _state
    4 (length _state)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _object
       (write-long _object s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _object
     (setq _object (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get text_msgs::object_pose :md5sum-) "5a553de221181da629133fb7c93e5464")
(setf (get text_msgs::object_pose :datatype-) "text_msgs/object_pose")
(setf (get text_msgs::object_pose :definition-)
      "int32 object
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



(provide :text_msgs/object_pose "5a553de221181da629133fb7c93e5464")


