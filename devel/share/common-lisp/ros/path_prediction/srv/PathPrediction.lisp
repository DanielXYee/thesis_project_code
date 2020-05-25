; Auto-generated. Do not edit!


(cl:in-package path_prediction-srv)


;//! \htmlinclude PathPrediction-request.msg.html

(cl:defclass <PathPrediction-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (input_rows
    :reader input_rows
    :initarg :input_rows
    :type cl:fixnum
    :initform 0)
   (input_cols
    :reader input_cols
    :initarg :input_cols
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PathPrediction-request (<PathPrediction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathPrediction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathPrediction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_prediction-srv:<PathPrediction-request> is deprecated: use path_prediction-srv:PathPrediction-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <PathPrediction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_prediction-srv:input-val is deprecated.  Use path_prediction-srv:input instead.")
  (input m))

(cl:ensure-generic-function 'input_rows-val :lambda-list '(m))
(cl:defmethod input_rows-val ((m <PathPrediction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_prediction-srv:input_rows-val is deprecated.  Use path_prediction-srv:input_rows instead.")
  (input_rows m))

(cl:ensure-generic-function 'input_cols-val :lambda-list '(m))
(cl:defmethod input_cols-val ((m <PathPrediction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_prediction-srv:input_cols-val is deprecated.  Use path_prediction-srv:input_cols instead.")
  (input_cols m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathPrediction-request>) ostream)
  "Serializes a message object of type '<PathPrediction-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'input))
  (cl:let* ((signed (cl:slot-value msg 'input_rows)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'input_cols)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathPrediction-request>) istream)
  "Deserializes a message object of type '<PathPrediction-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'input) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'input)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input_rows) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input_cols) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathPrediction-request>)))
  "Returns string type for a service object of type '<PathPrediction-request>"
  "path_prediction/PathPredictionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathPrediction-request)))
  "Returns string type for a service object of type 'PathPrediction-request"
  "path_prediction/PathPredictionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathPrediction-request>)))
  "Returns md5sum for a message object of type '<PathPrediction-request>"
  "81867dfe7d3311b753270178479e45b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathPrediction-request)))
  "Returns md5sum for a message object of type 'PathPrediction-request"
  "81867dfe7d3311b753270178479e45b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathPrediction-request>)))
  "Returns full string definition for message of type '<PathPrediction-request>"
  (cl:format cl:nil "int32[] input~%int16 input_rows~%int16 input_cols~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathPrediction-request)))
  "Returns full string definition for message of type 'PathPrediction-request"
  (cl:format cl:nil "int32[] input~%int16 input_rows~%int16 input_cols~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathPrediction-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'input) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathPrediction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PathPrediction-request
    (cl:cons ':input (input msg))
    (cl:cons ':input_rows (input_rows msg))
    (cl:cons ':input_cols (input_cols msg))
))
;//! \htmlinclude PathPrediction-response.msg.html

(cl:defclass <PathPrediction-response> (roslisp-msg-protocol:ros-message)
  ((prediction
    :reader prediction
    :initarg :prediction
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (pred_rows
    :reader pred_rows
    :initarg :pred_rows
    :type cl:fixnum
    :initform 0)
   (pred_cols
    :reader pred_cols
    :initarg :pred_cols
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PathPrediction-response (<PathPrediction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathPrediction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathPrediction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_prediction-srv:<PathPrediction-response> is deprecated: use path_prediction-srv:PathPrediction-response instead.")))

(cl:ensure-generic-function 'prediction-val :lambda-list '(m))
(cl:defmethod prediction-val ((m <PathPrediction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_prediction-srv:prediction-val is deprecated.  Use path_prediction-srv:prediction instead.")
  (prediction m))

(cl:ensure-generic-function 'pred_rows-val :lambda-list '(m))
(cl:defmethod pred_rows-val ((m <PathPrediction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_prediction-srv:pred_rows-val is deprecated.  Use path_prediction-srv:pred_rows instead.")
  (pred_rows m))

(cl:ensure-generic-function 'pred_cols-val :lambda-list '(m))
(cl:defmethod pred_cols-val ((m <PathPrediction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_prediction-srv:pred_cols-val is deprecated.  Use path_prediction-srv:pred_cols instead.")
  (pred_cols m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathPrediction-response>) ostream)
  "Serializes a message object of type '<PathPrediction-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'prediction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'prediction))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pred_rows)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pred_cols)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathPrediction-response>) istream)
  "Deserializes a message object of type '<PathPrediction-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'prediction) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'prediction)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pred_rows)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pred_cols)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathPrediction-response>)))
  "Returns string type for a service object of type '<PathPrediction-response>"
  "path_prediction/PathPredictionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathPrediction-response)))
  "Returns string type for a service object of type 'PathPrediction-response"
  "path_prediction/PathPredictionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathPrediction-response>)))
  "Returns md5sum for a message object of type '<PathPrediction-response>"
  "81867dfe7d3311b753270178479e45b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathPrediction-response)))
  "Returns md5sum for a message object of type 'PathPrediction-response"
  "81867dfe7d3311b753270178479e45b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathPrediction-response>)))
  "Returns full string definition for message of type '<PathPrediction-response>"
  (cl:format cl:nil "float32[] prediction~%uint8 pred_rows~%uint8 pred_cols~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathPrediction-response)))
  "Returns full string definition for message of type 'PathPrediction-response"
  (cl:format cl:nil "float32[] prediction~%uint8 pred_rows~%uint8 pred_cols~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathPrediction-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'prediction) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathPrediction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PathPrediction-response
    (cl:cons ':prediction (prediction msg))
    (cl:cons ':pred_rows (pred_rows msg))
    (cl:cons ':pred_cols (pred_cols msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PathPrediction)))
  'PathPrediction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PathPrediction)))
  'PathPrediction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathPrediction)))
  "Returns string type for a service object of type '<PathPrediction>"
  "path_prediction/PathPrediction")