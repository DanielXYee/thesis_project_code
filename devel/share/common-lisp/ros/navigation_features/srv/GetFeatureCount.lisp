; Auto-generated. Do not edit!


(cl:in-package navigation_features-srv)


;//! \htmlinclude GetFeatureCount-request.msg.html

(cl:defclass <GetFeatureCount-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped))))
)

(cl:defclass GetFeatureCount-request (<GetFeatureCount-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFeatureCount-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFeatureCount-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_features-srv:<GetFeatureCount-request> is deprecated: use navigation_features-srv:GetFeatureCount-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <GetFeatureCount-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_features-srv:path-val is deprecated.  Use navigation_features-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFeatureCount-request>) ostream)
  "Serializes a message object of type '<GetFeatureCount-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFeatureCount-request>) istream)
  "Deserializes a message object of type '<GetFeatureCount-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFeatureCount-request>)))
  "Returns string type for a service object of type '<GetFeatureCount-request>"
  "navigation_features/GetFeatureCountRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFeatureCount-request)))
  "Returns string type for a service object of type 'GetFeatureCount-request"
  "navigation_features/GetFeatureCountRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFeatureCount-request>)))
  "Returns md5sum for a message object of type '<GetFeatureCount-request>"
  "bcbe55a0b60ae0b44299673e70206f76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFeatureCount-request)))
  "Returns md5sum for a message object of type 'GetFeatureCount-request"
  "bcbe55a0b60ae0b44299673e70206f76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFeatureCount-request>)))
  "Returns full string definition for message of type '<GetFeatureCount-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] path~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFeatureCount-request)))
  "Returns full string definition for message of type 'GetFeatureCount-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] path~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFeatureCount-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFeatureCount-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFeatureCount-request
    (cl:cons ':path (path msg))
))
;//! \htmlinclude GetFeatureCount-response.msg.html

(cl:defclass <GetFeatureCount-response> (roslisp-msg-protocol:ros-message)
  ((fc
    :reader fc
    :initarg :fc
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetFeatureCount-response (<GetFeatureCount-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFeatureCount-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFeatureCount-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_features-srv:<GetFeatureCount-response> is deprecated: use navigation_features-srv:GetFeatureCount-response instead.")))

(cl:ensure-generic-function 'fc-val :lambda-list '(m))
(cl:defmethod fc-val ((m <GetFeatureCount-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_features-srv:fc-val is deprecated.  Use navigation_features-srv:fc instead.")
  (fc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFeatureCount-response>) ostream)
  "Serializes a message object of type '<GetFeatureCount-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'fc))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFeatureCount-response>) istream)
  "Deserializes a message object of type '<GetFeatureCount-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fc) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fc)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFeatureCount-response>)))
  "Returns string type for a service object of type '<GetFeatureCount-response>"
  "navigation_features/GetFeatureCountResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFeatureCount-response)))
  "Returns string type for a service object of type 'GetFeatureCount-response"
  "navigation_features/GetFeatureCountResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFeatureCount-response>)))
  "Returns md5sum for a message object of type '<GetFeatureCount-response>"
  "bcbe55a0b60ae0b44299673e70206f76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFeatureCount-response)))
  "Returns md5sum for a message object of type 'GetFeatureCount-response"
  "bcbe55a0b60ae0b44299673e70206f76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFeatureCount-response>)))
  "Returns full string definition for message of type '<GetFeatureCount-response>"
  (cl:format cl:nil "float32[] fc~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFeatureCount-response)))
  "Returns full string definition for message of type 'GetFeatureCount-response"
  (cl:format cl:nil "float32[] fc~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFeatureCount-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fc) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFeatureCount-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFeatureCount-response
    (cl:cons ':fc (fc msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFeatureCount)))
  'GetFeatureCount-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFeatureCount)))
  'GetFeatureCount-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFeatureCount)))
  "Returns string type for a service object of type '<GetFeatureCount>"
  "navigation_features/GetFeatureCount")