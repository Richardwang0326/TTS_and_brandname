;; Auto-generated. Do not edit!


(when (boundp 'text_msgs::int_arr)
  (if (not (find-package "TEXT_MSGS"))
    (make-package "TEXT_MSGS"))
  (shadow 'int_arr (find-package "TEXT_MSGS")))
(unless (find-package "TEXT_MSGS::INT_ARR")
  (make-package "TEXT_MSGS::INT_ARR"))

(in-package "ROS")
;;//! \htmlinclude int_arr.msg.html


(defclass text_msgs::int_arr
  :super ros::object
  :slots (_point ))

(defmethod text_msgs::int_arr
  (:init
   (&key
    ((:point __point) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&optional __point)
   (if __point (setq _point __point)) _point)
  (:serialization-length
   ()
   (+
    ;; int32[] _point
    (* 4    (length _point)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _point
     (write-long (length _point) s)
     (dotimes (i (length _point))
       (write-long (elt _point i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _point (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _point i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get text_msgs::int_arr :md5sum-) "9d43aa930d9591879a0c30e6abefcb2e")
(setf (get text_msgs::int_arr :datatype-) "text_msgs/int_arr")
(setf (get text_msgs::int_arr :definition-)
      "int32[] point
")



(provide :text_msgs/int_arr "9d43aa930d9591879a0c30e6abefcb2e")


