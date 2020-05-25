; Auto-generated. Do not edit!


(cl:in-package gmm_sampling-srv)


;//! \htmlinclude GetApproachGMMProbs-request.msg.html

(cl:defclass <GetApproachGMMProbs-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (y
    :reader y
    :initarg :y
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (person_orientation
    :reader person_orientation
    :initarg :person_orientation
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetApproachGMMProbs-request (<GetApproachGMMProbs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetApproachGMMProbs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetApproachGMMProbs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gmm_sampling-srv:<GetApproachGMMProbs-request> is deprecated: use gmm_sampling-srv:GetApproachGMMProbs-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <GetApproachGMMProbs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_sampling-srv:x-val is deprecated.  Use gmm_sampling-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <GetApproachGMMProbs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_sampling-srv:y-val is deprecated.  Use gmm_sampling-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'person_orientation-val :lambda-list '(m))
(cl:defmethod person_orientation-val ((m <GetApproachGMMProbs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_sampling-srv:person_orientation-val is deprecated.  Use gmm_sampling-srv:person_orientation instead.")
  (person_orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetApproachGMMProbs-request>) ostream)
  "Serializes a message object of type '<GetApproachGMMProbs-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'y))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'person_orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetApproachGMMProbs-request>) istream)
  "Deserializes a message object of type '<GetApproachGMMProbs-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'x)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'y)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'person_orientation) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetApproachGMMProbs-request>)))
  "Returns string type for a service object of type '<GetApproachGMMProbs-request>"
  "gmm_sampling/GetApproachGMMProbsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetApproachGMMProbs-request)))
  "Returns string type for a service object of type 'GetApproachGMMProbs-request"
  "gmm_sampling/GetApproachGMMProbsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetApproachGMMProbs-request>)))
  "Returns md5sum for a message object of type '<GetApproachGMMProbs-request>"
  "7d2e9fd8df330e05a0d7f3f45a2a580e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetApproachGMMProbs-request)))
  "Returns md5sum for a message object of type 'GetApproachGMMProbs-request"
  "7d2e9fd8df330e05a0d7f3f45a2a580e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetApproachGMMProbs-request>)))
  "Returns full string definition for message of type '<GetApproachGMMProbs-request>"
  (cl:format cl:nil "float32[] x~%float32[] y~%float32 person_orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetApproachGMMProbs-request)))
  "Returns full string definition for message of type 'GetApproachGMMProbs-request"
  (cl:format cl:nil "float32[] x~%float32[] y~%float32 person_orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetApproachGMMProbs-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetApproachGMMProbs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetApproachGMMProbs-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':person_orientation (person_orientation msg))
))
;//! \htmlinclude GetApproachGMMProbs-response.msg.html

(cl:defclass <GetApproachGMMProbs-response> (roslisp-msg-protocol:ros-message)
  ((probs
    :reader probs
    :initarg :probs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetApproachGMMProbs-response (<GetApproachGMMProbs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetApproachGMMProbs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetApproachGMMProbs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gmm_sampling-srv:<GetApproachGMMProbs-response> is deprecated: use gmm_sampling-srv:GetApproachGMMProbs-response instead.")))

(cl:ensure-generic-function 'probs-val :lambda-list '(m))
(cl:defmethod probs-val ((m <GetApproachGMMProbs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_sampling-srv:probs-val is deprecated.  Use gmm_sampling-srv:probs instead.")
  (probs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetApproachGMMProbs-response>) ostream)
  "Serializes a message object of type '<GetApproachGMMProbs-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'probs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'probs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetApproachGMMProbs-response>) istream)
  "Deserializes a message object of type '<GetApproachGMMProbs-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'probs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'probs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetApproachGMMProbs-response>)))
  "Returns string type for a service object of type '<GetApproachGMMProbs-response>"
  "gmm_sampling/GetApproachGMMProbsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetApproachGMMProbs-response)))
  "Returns string type for a service object of type 'GetApproachGMMProbs-response"
  "gmm_sampling/GetApproachGMMProbsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetApproachGMMProbs-response>)))
  "Returns md5sum for a message object of type '<GetApproachGMMProbs-response>"
  "7d2e9fd8df330e05a0d7f3f45a2a580e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetApproachGMMProbs-response)))
  "Returns md5sum for a message object of type 'GetApproachGMMProbs-response"
  "7d2e9fd8df330e05a0d7f3f45a2a580e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetApproachGMMProbs-response>)))
  "Returns full string definition for message of type '<GetApproachGMMProbs-response>"
  (cl:format cl:nil "float32[] probs~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetApproachGMMProbs-response)))
  "Returns full string definition for message of type 'GetApproachGMMProbs-response"
  (cl:format cl:nil "float32[] probs~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetApproachGMMProbs-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'probs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetApproachGMMProbs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetApproachGMMProbs-response
    (cl:cons ':probs (probs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetApproachGMMProbs)))
  'GetApproachGMMProbs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetApproachGMMProbs)))
  'GetApproachGMMProbs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetApproachGMMProbs)))
  "Returns string type for a service object of type '<GetApproachGMMProbs>"
  "gmm_sampling/GetApproachGMMProbs")