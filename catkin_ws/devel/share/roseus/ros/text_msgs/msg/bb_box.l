;; Auto-generated. Do not edit!


(when (boundp 'text_msgs::bb_box)
  (if (not (find-package "TEXT_MSGS"))
    (make-package "TEXT_MSGS"))
  (shadow 'bb_box (find-package "TEXT_MSGS")))
(unless (find-package "TEXT_MSGS::BB_BOX")
  (make-package "TEXT_MSGS::BB_BOX"))

(in-package "ROS")
;;//! \htmlinclude bb_box.msg.html


(defclass text_msgs::bb_box
  :super ros::object
  :slots (_xmax _xmin _ymax _ymin ))

(defmethod text_msgs::bb_box
  (:init
   (&key
    ((:xmax __xmax) 0)
    ((:xmin __xmin) 0)
    ((:ymax __ymax) 0)
    ((:ymin __ymin) 0)
    )
   (send-super :init)
   (setq _xmax (round __xmax))
   (setq _xmin (round __xmin))
   (setq _ymax (round __ymax))
   (setq _ymin (round __ymin))
   self)
  (:xmax
   (&optional __xmax)
   (if __xmax (setq _xmax __xmax)) _xmax)
  (:xmin
   (&optional __xmin)
   (if __xmin (setq _xmin __xmin)) _xmin)
  (:ymax
   (&optional __ymax)
   (if __ymax (setq _ymax __ymax)) _ymax)
  (:ymin
   (&optional __ymin)
   (if __ymin (setq _ymin __ymin)) _ymin)
  (:serialization-length
   ()
   (+
    ;; int32 _xmax
    4
    ;; int32 _xmin
    4
    ;; int32 _ymax
    4
    ;; int32 _ymin
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _xmax
       (write-long _xmax s)
     ;; int32 _xmin
       (write-long _xmin s)
     ;; int32 _ymax
       (write-long _ymax s)
     ;; int32 _ymin
       (write-long _ymin s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _xmax
     (setq _xmax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _xmin
     (setq _xmin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ymax
     (setq _ymax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ymin
     (setq _ymin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get text_msgs::bb_box :md5sum-) "65f8a458776ee81cb95e7c837498673e")
(setf (get text_msgs::bb_box :datatype-) "text_msgs/bb_box")
(setf (get text_msgs::bb_box :definition-)
      "int32 xmax
int32 xmin
int32 ymax
int32 ymin
")



(provide :text_msgs/bb_box "65f8a458776ee81cb95e7c837498673e")


