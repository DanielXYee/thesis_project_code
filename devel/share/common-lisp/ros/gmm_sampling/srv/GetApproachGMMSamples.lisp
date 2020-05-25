; Auto-generated. Do not edit!


(cl:in-package gmm_sampling-srv)


;//! \htmlinclude GetApproachGMMSamples-request.msg.html

(cl:defclass <GetApproachGMMSamples-request> (roslisp-msg-protocol:ros-message)
  ((person_orientation
    :reader person_orientation
    :initarg :person_orientation
    :type cl:float
    :initform 0.0)
   (num_samples
    :reader num_samples
    :initarg :num_samples
    :type cl:integer
    :initform 0))
)

(cl:defclass GetApproachGMMSamples-request (<GetApproachGMMSamples-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetApproachGMMSamples-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetApproachGMMSamples-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gmm_sampling-srv:<GetApproachGMMSamples-request> is deprecated: use gmm_sampling-srv:GetApproachGMMSamples-request instead.")))

(cl:ensure-generic-function 'person_orientation-val :lambda-list '(m))
(cl:defmethod person_orientation-val ((m <GetApproachGMMSamples-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_sampling-srv:person_orientation-val is deprecated.  Use gmm_sampling-srv:person_orientation instead.")
  (person_orientation m))

(cl:ensure-generic-function 'num_samples-val :lambda-list '(m))
(cl:defmethod num_samples-val ((m <GetApproachGMMSamples-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_sampling-srv:num_samples-val is deprecated.  Use gmm_sampling-srv:num_samples instead.")
  (num_samples m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetApproachGMMSamples-request>) ostream)
  "Serializes a message object of type '<GetApproachGMMSamples-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'person_orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'num_samples)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetApproachGMMSamples-request>) istream)
  "Deserializes a message object of type '<GetApproachGMMSamples-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'person_orientation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_samples) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetApproachGMMSamples-request>)))
  "Returns string type for a service object of type '<GetApproachGMMSamples-request>"
  "gmm_sampling/GetApproachGMMSamplesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetApproachGMMSamples-request)))
  "Returns string type for a service object of type 'GetApproachGMMSamples-request"
  "gmm_sampling/GetApproachGMMSamplesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetApproachGMMSamples-request>)))
  "Returns md5sum for a message object of type '<GetApproachGMMSamples-request>"
  "39c3821b9d89c2c5ed582a1e164cc75d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetApproachGMMSamples-request)))
  "Returns md5sum for a message object of type 'GetApproachGMMSamples-request"
  "39c3821b9d89c2c5ed582a1e164cc75d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetApproachGMMSamples-request>)))
  "Returns full string definition for message of type '<GetApproachGMMSamples-request>"
  (cl:format cl:nil "float32 person_orientation~%int32 num_samples~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetApproachGMMSamples-request)))
  "Returns full string definition for message of type 'GetApproachGMMSamples-request"
  (cl:format cl:nil "float32 person_orientation~%int32 num_samples~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetApproachGMMSamples-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetApproachGMMSamples-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetApproachGMMSamples-request
    (cl:cons ':person_orientation (person_orientation msg))
    (cl:cons ':num_samples (num_samples msg))
))
;//! \htmlinclude GetApproachGMMSamples-response.msg.html

(cl:defclass <GetApproachGMMSamples-response> (roslisp-msg-protocol:ros-message)
  ((distances
    :reader distances
    :initarg :distances
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (orientations
    :reader orientations
    :initarg :orientations
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetApproachGMMSamples-response (<GetApproachGMMSamples-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetApproachGMMSamples-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetApproachGMMSamples-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gmm_sampling-srv:<GetApproachGMMSamples-response> is deprecated: use gmm_sampling-srv:GetApproachGMMSamples-response instead.")))

(cl:ensure-generic-function 'distances-val :lambda-list '(m))
(cl:defmethod distances-val ((m <GetApproachGMMSamples-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_sampling-srv:distances-val is deprecated.  Use gmm_sampling-srv:distances instead.")
  (distances m))

(cl:ensure-generic-function 'orientations-val :lambda-list '(m))
(cl:defmethod orientations-val ((m <GetApproachGMMSamples-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gmm_sampling-srv:orientations-val is deprecated.  Use gmm_sampling-srv:orientations instead.")
  (orientations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetApproachGMMSamples-response>) ostream)
  "Serializes a message object of type '<GetApproachGMMSamples-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'distances))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'distances))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'orientations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'orientations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetApproachGMMSamples-response>) istream)
  "Deserializes a message object of type '<GetApproachGMMSamples-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'distances) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'distances)))
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
  (cl:setf (cl:slot-value msg 'orientations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'orientations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetApproachGMMSamples-response>)))
  "Returns string type for a service object of type '<GetApproachGMMSamples-response>"
  "gmm_sampling/GetApproachGMMSamplesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetApproachGMMSamples-response)))
  "Returns string type for a service object of type 'GetApproachGMMSamples-response"
  "gmm_sampling/GetApproachGMMSamplesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetApproachGMMSamples-response>)))
  "Returns md5sum for a message object of type '<GetApproachGMMSamples-response>"
  "39c3821b9d89c2c5ed582a1e164cc75d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetApproachGMMSamples-response)))
  "Returns md5sum for a message object of type 'GetApproachGMMSamples-response"
  "39c3821b9d89c2c5ed582a1e164cc75d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetApproachGMMSamples-response>)))
  "Returns full string definition for message of type '<GetApproachGMMSamples-response>"
  (cl:format cl:nil "float32[] distances~%float32[] orientations~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetApproachGMMSamples-response)))
  "Returns full string definition for message of type 'GetApproachGMMSamples-response"
  (cl:format cl:nil "float32[] distances~%float32[] orientations~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetApproachGMMSamples-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'distances) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'orientations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetApproachGMMSamples-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetApproachGMMSamples-response
    (cl:cons ':distances (distances msg))
    (cl:cons ':orientations (orientations msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetApproachGMMSamples)))
  'GetApproachGMMSamples-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetApproachGMMSamples)))
  'GetApproachGMMSamples-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetApproachGMMSamples)))
  "Returns string type for a service object of type '<GetApproachGMMSamples>"
  "gmm_sampling/GetApproachGMMSamples")