
(cl:in-package :asdf)

(defsystem "text_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :text_msgs-msg
)
  :components ((:file "_package")
    (:file "bn_pose_srv" :depends-on ("_package_bn_pose_srv"))
    (:file "_package_bn_pose_srv" :depends-on ("_package"))
    (:file "int32" :depends-on ("_package_int32"))
    (:file "_package_int32" :depends-on ("_package"))
    (:file "manipulation" :depends-on ("_package_manipulation"))
    (:file "_package_manipulation" :depends-on ("_package"))
    (:file "object_only" :depends-on ("_package_object_only"))
    (:file "_package_object_only" :depends-on ("_package"))
    (:file "pose_state" :depends-on ("_package_pose_state"))
    (:file "_package_pose_state" :depends-on ("_package"))
    (:file "predict_switch" :depends-on ("_package_predict_switch"))
    (:file "_package_predict_switch" :depends-on ("_package"))
    (:file "text_detection_srv" :depends-on ("_package_text_detection_srv"))
    (:file "_package_text_detection_srv" :depends-on ("_package"))
    (:file "text_recognize_srv" :depends-on ("_package_text_recognize_srv"))
    (:file "_package_text_recognize_srv" :depends-on ("_package"))
  ))