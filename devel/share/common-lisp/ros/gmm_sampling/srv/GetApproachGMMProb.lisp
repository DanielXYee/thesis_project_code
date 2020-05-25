; Auto-generated. Do not edit!


(cl:in-package gmm_sampling-srv)


;//! \htmlinclude GetApproachGMMProb-request.msg.html

(cl:defclass <GetApproachGMMProb-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (person_orientation
    :reader person_orientation
    :initarg :person_orientation
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetApproachGMMProb-request (<GetApproachGMMProb-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetApproachGMMProb-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetApproachGMMProb-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gmm_sampling-srv:<GetApproachGMMProb-request> is deprecated: use gmm_sampling-srv:GetApproachGMMProb-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <GetApproachGMMProb-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_sampling-srv:x-val is deprecated.  Use gmm_sampling-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <GetApproachGMMProb-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_sampling-srv:y-val is deprecated.  Use gmm_sampling-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'person_orientation-val :lambda-list '(m))
(cl:defmethod person_orientation-val ((m <GetApproachGMMProb-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_sampling-srv:person_orientation-val is deprecated.  Use gmm_sampling-srv:person_orientation instead.")
  (person_orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetApproachGMMProb-request>) ostream)
  "Serializes a message object of type '<GetApproachGMMProb-request>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'person_orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetApproachGMMProb-request>) istream)
  "Deserializes a message object of type '<GetApproachGMMProb-request>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'person_orientation) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetApproachGMMProb-request>)))
  "Returns string type for a service object of type '<GetApproachGMMProb-request>"
  "gmm_sampling/GetApproachGMMProbRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetApproachGMMProb-request)))
  "Returns string type for a service object of type 'GetApproachGMMProb-request"
  "gmm_sampling/GetApproachGMMProbRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetApproachGMMProb-request>)))
  "Returns md5sum for a message object of type '<GetApproachGMMProb-request>"
  "ccd2986d40d561ab74fba4a6bdb71848")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetApproachGMMProb-request)))
  "Returns md5sum for a message object of type 'GetApproachGMMProb-request"
  "ccd2986d40d561ab74fba4a6bdb71848")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetApproachGMMProb-request>)))
  "Returns full string definition for message of type '<GetApproachGMMProb-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 person_orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetApproachGMMProb-request)))
  "Returns full string definition for message of type 'GetApproachGMMProb-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 person_orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetApproachGMMProb-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetApproachGMMProb-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetApproachGMMProb-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':person_orientation (person_orientation msg))
))
;//! \htmlinclude GetApproachGMMProb-response.msg.html

(cl:defclass <GetApproachGMMProb-response> (roslisp-msg-protocol:ros-message)
  ((prob
    :reader prob
    :initarg :prob
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetApproachGMMProb-response (<GetApproachGMMProb-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetApproachGMMProb-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetApproachGMMProb-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gmm_sampling-srv:<GetApproachGMMProb-response> is deprecated: use gmm_sampling-srv:GetApproachGMMProb-response instead.")))

(cl:ensure-generic-function 'prob-val :lambda-list '(m))
(cl:defmethod prob-val ((m <GetApproachGMMProb-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_sampling-srv:prob-val is deprecated.  Use gmm_sampling-srv:prob instead.")
  (prob m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetApproachGMMProb-response>) ostream)
  "Serializes a message object of type '<GetApproachGMMProb-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetApproachGMMProb-response>) istream)
  "Deserializes a message object of type '<GetApproachGMMProb-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prob) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetApproachGMMProb-response>)))
  "Returns string type for a service object of type '<GetApproachGMMProb-response>"
  "gmm_sampling/GetApproachGMMProbResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetApproachGMMProb-response)))
  "Returns string type for a service object of type 'GetApproachGMMProb-response"
  "gmm_sampling/GetApproachGMMProbResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetApproachGMMProb-response>)))
  "Returns md5sum for a message object of type '<GetApproachGMMProb-response>"
  "ccd2986d40d561ab74fba4a6bdb71848")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetApproachGMMProb-response)))
  "Returns md5sum for a message object of type 'GetApproachGMMProb-response"
  "ccd2986d40d561ab74fba4a6bdb71848")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetApproachGMMProb-response>)))
  "Returns full string definition for message of type '<GetApproachGMMProb-response>"
  (cl:format cl:nil "float32 prob~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetApproachGMMProb-response)))
  "Returns full string definition for message of type 'GetApproachGMMProb-response"
  (cl:format cl:nil "float32 prob~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetApproachGMMProb-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetApproachGMMProb-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetApproachGMMProb-response
    (cl:cons ':prob (prob msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetApproachGMMProb)))
  'GetApproachGMMProb-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetApproachGMMProb)))
  'GetApproachGMMProb-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetApproachGMMProb)))
  "Returns string type for a service object of type '<GetApproachGMMProb>"
  "gmm_sampling/GetApproachGMMProb")