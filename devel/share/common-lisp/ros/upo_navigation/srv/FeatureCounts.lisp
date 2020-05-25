; Auto-generated. Do not edit!


(cl:in-package upo_navigation-srv)


;//! \htmlinclude FeatureCounts-request.msg.html

(cl:defclass <FeatureCounts-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass FeatureCounts-request (<FeatureCounts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeatureCounts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeatureCounts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upo_navigation-srv:<FeatureCounts-request> is deprecated: use upo_navigation-srv:FeatureCounts-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <FeatureCounts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_navigation-srv:path-val is deprecated.  Use upo_navigation-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <FeatureCounts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_navigation-srv:goal-val is deprecated.  Use upo_navigation-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeatureCounts-request>) ostream)
  "Serializes a message object of type '<FeatureCounts-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeatureCounts-request>) istream)
  "Deserializes a message object of type '<FeatureCounts-request>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeatureCounts-request>)))
  "Returns string type for a service object of type '<FeatureCounts-request>"
  "upo_navigation/FeatureCountsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeatureCounts-request)))
  "Returns string type for a service object of type 'FeatureCounts-request"
  "upo_navigation/FeatureCountsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeatureCounts-request>)))
  "Returns md5sum for a message object of type '<FeatureCounts-request>"
  "083cfa3c4c78c3b6c6861b11abdcb99a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeatureCounts-request)))
  "Returns md5sum for a message object of type 'FeatureCounts-request"
  "083cfa3c4c78c3b6c6861b11abdcb99a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeatureCounts-request>)))
  "Returns full string definition for message of type '<FeatureCounts-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] path~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeatureCounts-request)))
  "Returns full string definition for message of type 'FeatureCounts-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] path~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeatureCounts-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeatureCounts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FeatureCounts-request
    (cl:cons ':path (path msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude FeatureCounts-response.msg.html

(cl:defclass <FeatureCounts-response> (roslisp-msg-protocol:ros-message)
  ((features
    :reader features
    :initarg :features
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FeatureCounts-response (<FeatureCounts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeatureCounts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeatureCounts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upo_navigation-srv:<FeatureCounts-response> is deprecated: use upo_navigation-srv:FeatureCounts-response instead.")))

(cl:ensure-generic-function 'features-val :lambda-list '(m))
(cl:defmethod features-val ((m <FeatureCounts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_navigation-srv:features-val is deprecated.  Use upo_navigation-srv:features instead.")
  (features m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeatureCounts-response>) ostream)
  "Serializes a message object of type '<FeatureCounts-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeatureCounts-response>) istream)
  "Deserializes a message object of type '<FeatureCounts-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeatureCounts-response>)))
  "Returns string type for a service object of type '<FeatureCounts-response>"
  "upo_navigation/FeatureCountsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeatureCounts-response)))
  "Returns string type for a service object of type 'FeatureCounts-response"
  "upo_navigation/FeatureCountsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeatureCounts-response>)))
  "Returns md5sum for a message object of type '<FeatureCounts-response>"
  "083cfa3c4c78c3b6c6861b11abdcb99a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeatureCounts-response)))
  "Returns md5sum for a message object of type 'FeatureCounts-response"
  "083cfa3c4c78c3b6c6861b11abdcb99a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeatureCounts-response>)))
  "Returns full string definition for message of type '<FeatureCounts-response>"
  (cl:format cl:nil "float32[] features~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeatureCounts-response)))
  "Returns full string definition for message of type 'FeatureCounts-response"
  (cl:format cl:nil "float32[] features~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeatureCounts-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'features) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeatureCounts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FeatureCounts-response
    (cl:cons ':features (features msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FeatureCounts)))
  'FeatureCounts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FeatureCounts)))
  'FeatureCounts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeatureCounts)))
  "Returns string type for a service object of type '<FeatureCounts>"
  "upo_navigation/FeatureCounts")