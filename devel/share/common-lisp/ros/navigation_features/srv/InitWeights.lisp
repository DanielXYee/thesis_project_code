; Auto-generated. Do not edit!


(cl:in-package navigation_features-srv)


;//! \htmlinclude InitWeights-request.msg.html

(cl:defclass <InitWeights-request> (roslisp-msg-protocol:ros-message)
  ((random
    :reader random
    :initarg :random
    :type cl:boolean
    :initform cl:nil)
   (normalize
    :reader normalize
    :initarg :normalize
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass InitWeights-request (<InitWeights-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitWeights-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitWeights-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_features-srv:<InitWeights-request> is deprecated: use navigation_features-srv:InitWeights-request instead.")))

(cl:ensure-generic-function 'random-val :lambda-list '(m))
(cl:defmethod random-val ((m <InitWeights-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_features-srv:random-val is deprecated.  Use navigation_features-srv:random instead.")
  (random m))

(cl:ensure-generic-function 'normalize-val :lambda-list '(m))
(cl:defmethod normalize-val ((m <InitWeights-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_features-srv:normalize-val is deprecated.  Use navigation_features-srv:normalize instead.")
  (normalize m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitWeights-request>) ostream)
  "Serializes a message object of type '<InitWeights-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'random) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'normalize) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitWeights-request>) istream)
  "Deserializes a message object of type '<InitWeights-request>"
    (cl:setf (cl:slot-value msg 'random) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'normalize) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitWeights-request>)))
  "Returns string type for a service object of type '<InitWeights-request>"
  "navigation_features/InitWeightsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitWeights-request)))
  "Returns string type for a service object of type 'InitWeights-request"
  "navigation_features/InitWeightsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitWeights-request>)))
  "Returns md5sum for a message object of type '<InitWeights-request>"
  "a974b2e5d8cf5299fc01afe16b877882")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitWeights-request)))
  "Returns md5sum for a message object of type 'InitWeights-request"
  "a974b2e5d8cf5299fc01afe16b877882")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitWeights-request>)))
  "Returns full string definition for message of type '<InitWeights-request>"
  (cl:format cl:nil "bool random~%bool normalize~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitWeights-request)))
  "Returns full string definition for message of type 'InitWeights-request"
  (cl:format cl:nil "bool random~%bool normalize~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitWeights-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitWeights-request>))
  "Converts a ROS message object to a list"
  (cl:list 'InitWeights-request
    (cl:cons ':random (random msg))
    (cl:cons ':normalize (normalize msg))
))
;//! \htmlinclude InitWeights-response.msg.html

(cl:defclass <InitWeights-response> (roslisp-msg-protocol:ros-message)
  ((weights
    :reader weights
    :initarg :weights
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass InitWeights-response (<InitWeights-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitWeights-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitWeights-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_features-srv:<InitWeights-response> is deprecated: use navigation_features-srv:InitWeights-response instead.")))

(cl:ensure-generic-function 'weights-val :lambda-list '(m))
(cl:defmethod weights-val ((m <InitWeights-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_features-srv:weights-val is deprecated.  Use navigation_features-srv:weights instead.")
  (weights m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitWeights-response>) ostream)
  "Serializes a message object of type '<InitWeights-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitWeights-response>) istream)
  "Deserializes a message object of type '<InitWeights-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitWeights-response>)))
  "Returns string type for a service object of type '<InitWeights-response>"
  "navigation_features/InitWeightsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitWeights-response)))
  "Returns string type for a service object of type 'InitWeights-response"
  "navigation_features/InitWeightsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitWeights-response>)))
  "Returns md5sum for a message object of type '<InitWeights-response>"
  "a974b2e5d8cf5299fc01afe16b877882")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitWeights-response)))
  "Returns md5sum for a message object of type 'InitWeights-response"
  "a974b2e5d8cf5299fc01afe16b877882")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitWeights-response>)))
  "Returns full string definition for message of type '<InitWeights-response>"
  (cl:format cl:nil "float32[] weights~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitWeights-response)))
  "Returns full string definition for message of type 'InitWeights-response"
  (cl:format cl:nil "float32[] weights~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitWeights-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'weights) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitWeights-response>))
  "Converts a ROS message object to a list"
  (cl:list 'InitWeights-response
    (cl:cons ':weights (weights msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'InitWeights)))
  'InitWeights-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'InitWeights)))
  'InitWeights-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitWeights)))
  "Returns string type for a service object of type '<InitWeights>"
  "navigation_features/InitWeights")