; Auto-generated. Do not edit!


(cl:in-package upo_social_layer-srv)


;//! \htmlinclude Features-request.msg.html

(cl:defclass <Features-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass Features-request (<Features-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Features-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Features-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upo_social_layer-srv:<Features-request> is deprecated: use upo_social_layer-srv:Features-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Features-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_social_layer-srv:x-val is deprecated.  Use upo_social_layer-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Features-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_social_layer-srv:y-val is deprecated.  Use upo_social_layer-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Features-request>) ostream)
  "Serializes a message object of type '<Features-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Features-request>) istream)
  "Deserializes a message object of type '<Features-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Features-request>)))
  "Returns string type for a service object of type '<Features-request>"
  "upo_social_layer/FeaturesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Features-request)))
  "Returns string type for a service object of type 'Features-request"
  "upo_social_layer/FeaturesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Features-request>)))
  "Returns md5sum for a message object of type '<Features-request>"
  "d0f680e5a790f292b7ddcbc7f490dfa6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Features-request)))
  "Returns md5sum for a message object of type 'Features-request"
  "d0f680e5a790f292b7ddcbc7f490dfa6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Features-request>)))
  "Returns full string definition for message of type '<Features-request>"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Features-request)))
  "Returns full string definition for message of type 'Features-request"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Features-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Features-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Features-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude Features-response.msg.html

(cl:defclass <Features-response> (roslisp-msg-protocol:ros-message)
  ((features
    :reader features
    :initarg :features
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Features-response (<Features-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Features-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Features-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upo_social_layer-srv:<Features-response> is deprecated: use upo_social_layer-srv:Features-response instead.")))

(cl:ensure-generic-function 'features-val :lambda-list '(m))
(cl:defmethod features-val ((m <Features-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_social_layer-srv:features-val is deprecated.  Use upo_social_layer-srv:features instead.")
  (features m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Features-response>) ostream)
  "Serializes a message object of type '<Features-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'features))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'features))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Features-response>) istream)
  "Deserializes a message object of type '<Features-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'features) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'features)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Features-response>)))
  "Returns string type for a service object of type '<Features-response>"
  "upo_social_layer/FeaturesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Features-response)))
  "Returns string type for a service object of type 'Features-response"
  "upo_social_layer/FeaturesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Features-response>)))
  "Returns md5sum for a message object of type '<Features-response>"
  "d0f680e5a790f292b7ddcbc7f490dfa6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Features-response)))
  "Returns md5sum for a message object of type 'Features-response"
  "d0f680e5a790f292b7ddcbc7f490dfa6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Features-response>)))
  "Returns full string definition for message of type '<Features-response>"
  (cl:format cl:nil "float32[] features~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Features-response)))
  "Returns full string definition for message of type 'Features-response"
  (cl:format cl:nil "float32[] features~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Features-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'features) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Features-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Features-response
    (cl:cons ':features (features msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Features)))
  'Features-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Features)))
  'Features-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Features)))
  "Returns string type for a service object of type '<Features>"
  "upo_social_layer/Features")