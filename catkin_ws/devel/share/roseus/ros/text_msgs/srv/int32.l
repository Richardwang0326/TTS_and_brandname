;; Auto-generated. Do not edit!


(when (boundp 'text_msgs::int32)
  (if (not (find-package "TEXT_MSGS"))
    (make-package "TEXT_MSGS"))
  (shadow 'int32 (find-package "TEXT_MSGS")))
(unless (find-package "TEXT_MSGS::INT32")
  (make-package "TEXT_MSGS::INT32"))
(unless (find-package "TEXT_MSGS::INT32REQUEST")
  (make-package "TEXT_MSGS::INT32REQUEST"))
(unless (find-package "TEXT_MSGS::INT32RESPONSE")
  (make-package "TEXT_MSGS::INT32RESPONSE"))

(in-package "ROS")





(defclass text_msgs::int32Request
  :super ros::object
  :slots (_data ))

(defmethod text_msgs::int32Request
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass text_msgs::int32Response
  :super ros::object
  :slots ())

(defmethod text_msgs::int32Response
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

(defclass text_msgs::int32
  :super ros::object
  :slots ())

(setf (get text_msgs::int32 :md5sum-) "da5909fbe378aeaf85e547e830cc1bb7")
(setf (get text_msgs::int32 :datatype-) "text_msgs/int32")
(setf (get text_msgs::int32 :request) text_msgs::int32Request)
(setf (get text_msgs::int32 :response) text_msgs::int32Response)

(defmethod text_msgs::int32Request
  (:response () (instance text_msgs::int32Response :init)))

(setf (get text_msgs::int32Request :md5sum-) "da5909fbe378aeaf85e547e830cc1bb7")
(setf (get text_msgs::int32Request :datatype-) "text_msgs/int32Request")
(setf (get text_msgs::int32Request :definition-)
      "#Request data
int32 data
---
#Response data
# string result # for mission result
")

(setf (get text_msgs::int32Response :md5sum-) "da5909fbe378aeaf85e547e830cc1bb7")
(setf (get text_msgs::int32Response :datatype-) "text_msgs/int32Response")
(setf (get text_msgs::int32Response :definition-)
      "#Request data
int32 data
---
#Response data
# string result # for mission result
")



(provide :text_msgs/int32 "da5909fbe378aeaf85e547e830cc1bb7")


