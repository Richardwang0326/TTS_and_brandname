; Auto-generated. Do not edit!


(cl:in-package text_msgs-srv)


;//! \htmlinclude predict_switch-request.msg.html

(cl:defclass <predict_switch-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass predict_switch-request (<predict_switch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <predict_switch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'predict_switch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-srv:<predict_switch-request> is deprecated: use text_msgs-srv:predict_switch-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <predict_switch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:data-val is deprecated.  Use text_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <predict_switch-request>) ostream)
  "Serializes a message object of type '<predict_switch-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <predict_switch-request>) istream)
  "Deserializes a message object of type '<predict_switch-request>"
    (cl:setf (cl:slot-value msg 'data) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<predict_switch-request>)))
  "Returns string type for a service object of type '<predict_switch-request>"
  "text_msgs/predict_switchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'predict_switch-request)))
  "Returns string type for a service object of type 'predict_switch-request"
  "text_msgs/predict_switchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<predict_switch-request>)))
  "Returns md5sum for a message object of type '<predict_switch-request>"
  "b39707c144dc811845d1401dd6f773fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'predict_switch-request)))
  "Returns md5sum for a message object of type 'predict_switch-request"
  "b39707c144dc811845d1401dd6f773fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<predict_switch-request>)))
  "Returns full string definition for message of type '<predict_switch-request>"
  (cl:format cl:nil "#Request data~%bool data # for switch status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'predict_switch-request)))
  "Returns full string definition for message of type 'predict_switch-request"
  (cl:format cl:nil "#Request data~%bool data # for switch status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <predict_switch-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <predict_switch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'predict_switch-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude predict_switch-response.msg.html

(cl:defclass <predict_switch-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass predict_switch-response (<predict_switch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <predict_switch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'predict_switch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_msgs-srv:<predict_switch-response> is deprecated: use text_msgs-srv:predict_switch-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <predict_switch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_msgs-srv:result-val is deprecated.  Use text_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <predict_switch-response>) ostream)
  "Serializes a message object of type '<predict_switch-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <predict_switch-response>) istream)
  "Deserializes a message object of type '<predict_switch-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<predict_switch-response>)))
  "Returns string type for a service object of type '<predict_switch-response>"
  "text_msgs/predict_switchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'predict_switch-response)))
  "Returns string type for a service object of type 'predict_switch-response"
  "text_msgs/predict_switchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<predict_switch-response>)))
  "Returns md5sum for a message object of type '<predict_switch-response>"
  "b39707c144dc811845d1401dd6f773fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'predict_switch-response)))
  "Returns md5sum for a message object of type 'predict_switch-response"
  "b39707c144dc811845d1401dd6f773fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<predict_switch-response>)))
  "Returns full string definition for message of type '<predict_switch-response>"
  (cl:format cl:nil "#Response data~%string result # for mission result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'predict_switch-response)))
  "Returns full string definition for message of type 'predict_switch-response"
  (cl:format cl:nil "#Response data~%string result # for mission result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <predict_switch-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <predict_switch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'predict_switch-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'predict_switch)))
  'predict_switch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'predict_switch)))
  'predict_switch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'predict_switch)))
  "Returns string type for a service object of type '<predict_switch>"
  "text_msgs/predict_switch")