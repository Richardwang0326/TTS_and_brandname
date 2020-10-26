;; Auto-generated. Do not edit!


(when (boundp 'text_msgs::manipulation)
  (if (not (find-package "TEXT_MSGS"))
    (make-package "TEXT_MSGS"))
  (shadow 'manipulation (find-package "TEXT_MSGS")))
(unless (find-package "TEXT_MSGS::MANIPULATION")
  (make-package "TEXT_MSGS::MANIPULATION"))
(unless (find-package "TEXT_MSGS::MANIPULATIONREQUEST")
  (make-package "TEXT_MSGS::MANIPULATIONREQUEST"))
(unless (find-package "TEXT_MSGS::MANIPULATIONRESPONSE")
  (make-package "TEXT_MSGS::MANIPULATIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass text_msgs::manipulationRequest
  :super ros::object
  :slots (_mode _object _pose ))

(defmethod text_msgs::manipulationRequest
  (:init
   (&key
    ((:mode __mode) "")
    ((:object __object) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _mode (string __mode))
   (setq _object (string __object))
   (setq _pose __pose)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:object
   (&optional __object)
   (if __object (setq _object __object)) _object)
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
    ;; string _mode
    4 (length _mode)
    ;; string _object
    4 (length _object)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; string _object
       (write-long (length _object) s) (princ _object s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _object
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass text_msgs::manipulationResponse
  :super ros::object
  :slots (_state ))

(defmethod text_msgs::manipulationResponse
  (:init
   (&key
    ((:state __state) "")
    )
   (send-super :init)
   (setq _state (string __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass text_msgs::manipulation
  :super ros::object
  :slots ())

(setf (get text_msgs::manipulation :md5sum-) "940776247decf73dc39a0d8aa126a552")
(setf (get text_msgs::manipulation :datatype-) "text_msgs/manipulation")
(setf (get text_msgs::manipulation :request) text_msgs::manipulationRequest)
(setf (get text_msgs::manipulation :response) text_msgs::manipulationResponse)

(defmethod text_msgs::manipulationRequest
  (:response () (instance text_msgs::manipulationResponse :init)))

(setf (get text_msgs::manipulationRequest :md5sum-) "940776247decf73dc39a0d8aa126a552")
(setf (get text_msgs::manipulationRequest :datatype-) "text_msgs/manipulationRequest")
(setf (get text_msgs::manipulationRequest :definition-)
      "#Request data
string mode
string object
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
---
#Response data
string state 

")

(setf (get text_msgs::manipulationResponse :md5sum-) "940776247decf73dc39a0d8aa126a552")
(setf (get text_msgs::manipulationResponse :datatype-) "text_msgs/manipulationResponse")
(setf (get text_msgs::manipulationResponse :definition-)
      "#Request data
string mode
string object
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
---
#Response data
string state 

")



(provide :text_msgs/manipulation "940776247decf73dc39a0d8aa126a552")


