; Auto-generated. Do not edit!


(cl:in-package navigation_features-srv)


;//! \htmlinclude SetWeights-request.msg.html

(cl:defclass <SetWeights-request> (roslisp-msg-protocol:ros-message)
  ((weights
    :reader weights
    :initarg :weights
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetWeights-request (<SetWeights-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWeights-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWeights-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_features-srv:<SetWeights-request> is deprecated: use navigation_features-srv:SetWeights-request instead.")))

(cl:ensure-generic-function 'weights-val :lambda-list '(m))
(cl:defmethod weights-val ((m <SetWeights-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_features-srv:weights-val is deprecated.  Use navigation_features-srv:weights instead.")
  (weights m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWeights-request>) ostream)
  "Serializes a message object of type '<SetWeights-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'weights))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'weights))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWeights-request>) istream)
  "Deserializes a message object of type '<SetWeights-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'weights) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'weights)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWeights-request>)))
  "Returns string type for a service object of type '<SetWeights-request>"
  "navigation_features/SetWeightsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWeights-request)))
  "Returns string type for a service object of type 'SetWeights-request"
  "navigation_features/SetWeightsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWeights-request>)))
  "Returns md5sum for a message object of type '<SetWeights-request>"
  "d5ad370da8a2ea46419264bcdd331bf8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWeights-request)))
  "Returns md5sum for a message object of type 'SetWeights-request"
  "d5ad370da8a2ea46419264bcdd331bf8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWeights-request>)))
  "Returns full string definition for message of type '<SetWeights-request>"
  (cl:format cl:nil "float32[] weights~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWeights-request)))
  "Returns full string definition for message of type 'SetWeights-request"
  (cl:format cl:nil "float32[] weights~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWeights-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'weights) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWeights-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWeights-request
    (cl:cons ':weights (weights msg))
))
;//! \htmlinclude SetWeights-response.msg.html

(cl:defclass <SetWeights-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetWeights-response (<SetWeights-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWeights-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWeights-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_features-srv:<SetWeights-response> is deprecated: use navigation_features-srv:SetWeights-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWeights-response>) ostream)
  "Serializes a message object of type '<SetWeights-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWeights-response>) istream)
  "Deserializes a message object of type '<SetWeights-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWeights-response>)))
  "Returns string type for a service object of type '<SetWeights-response>"
  "navigation_features/SetWeightsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWeights-response)))
  "Returns string type for a service object of type 'SetWeights-response"
  "navigation_features/SetWeightsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWeights-response>)))
  "Returns md5sum for a message object of type '<SetWeights-response>"
  "d5ad370da8a2ea46419264bcdd331bf8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWeights-response)))
  "Returns md5sum for a message object of type 'SetWeights-response"
  "d5ad370da8a2ea46419264bcdd331bf8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWeights-response>)))
  "Returns full string definition for message of type '<SetWeights-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWeights-response)))
  "Returns full string definition for message of type 'SetWeights-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWeights-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWeights-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWeights-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetWeights)))
  'SetWeights-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetWeights)))
  'SetWeights-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWeights)))
  "Returns string type for a service object of type '<SetWeights>"
  "navigation_features/SetWeights")