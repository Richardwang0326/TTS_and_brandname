
(cl:in-package :asdf)

(defsystem "text_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "bb_box" :depends-on ("_package_bb_box"))
    (:file "_package_bb_box" :depends-on ("_package"))
    (:file "int_arr" :depends-on ("_package_int_arr"))
    (:file "_package_int_arr" :depends-on ("_package"))
    (:file "object_pose" :depends-on ("_package_object_pose"))
    (:file "_package_object_pose" :depends-on ("_package"))
    (:file "text_detection_array" :depends-on ("_package_text_detection_array"))
    (:file "_package_text_detection_array" :depends-on ("_package"))
    (:file "text_detection_msg" :depends-on ("_package_text_detection_msg"))
    (:file "_package_text_detection_msg" :depends-on ("_package"))
    (:file "text_result" :depends-on ("_package_text_result"))
    (:file "_package_text_result" :depends-on ("_package"))
  ))