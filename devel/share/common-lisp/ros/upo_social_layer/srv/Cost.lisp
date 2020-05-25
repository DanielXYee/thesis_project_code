; Auto-generated. Do not edit!


(cl:in-package upo_social_layer-srv)


;//! \htmlinclude Cost-request.msg.html

(cl:defclass <Cost-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Cost-request (<Cost-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cost-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cost-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upo_social_layer-srv:<Cost-request> is deprecated: use upo_social_layer-srv:Cost-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Cost-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_social_layer-srv:x-val is deprecated.  Use upo_social_layer-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Cost-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_social_layer-srv:y-val is deprecated.  Use upo_social_layer-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cost-request>) ostream)
  "Serializes a message object of type '<Cost-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cost-request>) istream)
  "Deserializes a message object of type '<Cost-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cost-request>)))
  "Returns string type for a service object of type '<Cost-request>"
  "upo_social_layer/CostRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cost-request)))
  "Returns string type for a service object of type 'Cost-request"
  "upo_social_layer/CostRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cost-request>)))
  "Returns md5sum for a message object of type '<Cost-request>"
  "ed1896109ea6ef2d0a5cfbf2d389fc40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cost-request)))
  "Returns md5sum for a message object of type 'Cost-request"
  "ed1896109ea6ef2d0a5cfbf2d389fc40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cost-request>)))
  "Returns full string definition for message of type '<Cost-request>"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cost-request)))
  "Returns full string definition for message of type 'Cost-request"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cost-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cost-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Cost-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude Cost-response.msg.html

(cl:defclass <Cost-response> (roslisp-msg-protocol:ros-message)
  ((cost
    :reader cost
    :initarg :cost
    :type cl:float
    :initform 0.0))
)

(cl:defclass Cost-response (<Cost-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cost-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cost-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upo_social_layer-srv:<Cost-response> is deprecated: use upo_social_layer-srv:Cost-response instead.")))

(cl:ensure-generic-function 'cost-val :lambda-list '(m))
(cl:defmethod cost-val ((m <Cost-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_social_layer-srv:cost-val is deprecated.  Use upo_social_layer-srv:cost instead.")
  (cost m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cost-response>) ostream)
  "Serializes a message object of type '<Cost-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cost-response>) istream)
  "Deserializes a message object of type '<Cost-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cost) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cost-response>)))
  "Returns string type for a service object of type '<Cost-response>"
  "upo_social_layer/CostResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cost-response)))
  "Returns string type for a service object of type 'Cost-response"
  "upo_social_layer/CostResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cost-response>)))
  "Returns md5sum for a message object of type '<Cost-response>"
  "ed1896109ea6ef2d0a5cfbf2d389fc40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cost-response)))
  "Returns md5sum for a message object of type 'Cost-response"
  "ed1896109ea6ef2d0a5cfbf2d389fc40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cost-response>)))
  "Returns full string definition for message of type '<Cost-response>"
  (cl:format cl:nil "float32 cost~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cost-response)))
  "Returns full string definition for message of type 'Cost-response"
  (cl:format cl:nil "float32 cost~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cost-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cost-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Cost-response
    (cl:cons ':cost (cost msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Cost)))
  'Cost-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Cost)))
  'Cost-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cost)))
  "Returns string type for a service object of type '<Cost>"
  "upo_social_layer/Cost")