;; Auto-generated. Do not edit!


(when (boundp 'text_msgs::predict_switch)
  (if (not (find-package "TEXT_MSGS"))
    (make-package "TEXT_MSGS"))
  (shadow 'predict_switch (find-package "TEXT_MSGS")))
(unless (find-package "TEXT_MSGS::PREDICT_SWITCH")
  (make-package "TEXT_MSGS::PREDICT_SWITCH"))
(unless (find-package "TEXT_MSGS::PREDICT_SWITCHREQUEST")
  (make-package "TEXT_MSGS::PREDICT_SWITCHREQUEST"))
(unless (find-package "TEXT_MSGS::PREDICT_SWITCHRESPONSE")
  (make-package "TEXT_MSGS::PREDICT_SWITCHRESPONSE"))

(in-package "ROS")





(defclass text_msgs::predict_switchRequest
  :super ros::object
  :slots (_data ))

(defmethod text_msgs::predict_switchRequest
  (:init
   (&key
    ((:data __data) nil)
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass text_msgs::predict_switchResponse
  :super ros::object
  :slots (_result ))

(defmethod text_msgs::predict_switchResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass text_msgs::predict_switch
  :super ros::object
  :slots ())

(setf (get text_msgs::predict_switch :md5sum-) "b39707c144dc811845d1401dd6f773fb")
(setf (get text_msgs::predict_switch :datatype-) "text_msgs/predict_switch")
(setf (get text_msgs::predict_switch :request) text_msgs::predict_switchRequest)
(setf (get text_msgs::predict_switch :response) text_msgs::predict_switchResponse)

(defmethod text_msgs::predict_switchRequest
  (:response () (instance text_msgs::predict_switchResponse :init)))

(setf (get text_msgs::predict_switchRequest :md5sum-) "b39707c144dc811845d1401dd6f773fb")
(setf (get text_msgs::predict_switchRequest :datatype-) "text_msgs/predict_switchRequest")
(setf (get text_msgs::predict_switchRequest :definition-)
      "#Request data
bool data # for switch status
---
#Response data
string result # for mission result
")

(setf (get text_msgs::predict_switchResponse :md5sum-) "b39707c144dc811845d1401dd6f773fb")
(setf (get text_msgs::predict_switchResponse :datatype-) "text_msgs/predict_switchResponse")
(setf (get text_msgs::predict_switchResponse :definition-)
      "#Request data
bool data # for switch status
---
#Response data
string result # for mission result
")



(provide :text_msgs/predict_switch "b39707c144dc811845d1401dd6f773fb")


