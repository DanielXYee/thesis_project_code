; Auto-generated. Do not edit!


(cl:in-package upo_msgs-msg)


;//! \htmlinclude PersonGoalArrayUPO.msg.html

(cl:defclass <PersonGoalArrayUPO> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (personGoals
    :reader personGoals
    :initarg :personGoals
    :type (cl:vector upo_msgs-msg:PersonGoalUPO)
   :initform (cl:make-array 0 :element-type 'upo_msgs-msg:PersonGoalUPO :initial-element (cl:make-instance 'upo_msgs-msg:PersonGoalUPO))))
)

(cl:defclass PersonGoalArrayUPO (<PersonGoalArrayUPO>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonGoalArrayUPO>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonGoalArrayUPO)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upo_msgs-msg:<PersonGoalArrayUPO> is deprecated: use upo_msgs-msg:PersonGoalArrayUPO instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PersonGoalArrayUPO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_msgs-msg:header-val is deprecated.  Use upo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <PersonGoalArrayUPO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_msgs-msg:size-val is deprecated.  Use upo_msgs-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'personGoals-val :lambda-list '(m))
(cl:defmethod personGoals-val ((m <PersonGoalArrayUPO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_msgs-msg:personGoals-val is deprecated.  Use upo_msgs-msg:personGoals instead.")
  (personGoals m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonGoalArrayUPO>) ostream)
  "Serializes a message object of type '<PersonGoalArrayUPO>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'personGoals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'personGoals))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonGoalArrayUPO>) istream)
  "Deserializes a message object of type '<PersonGoalArrayUPO>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'personGoals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'personGoals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'upo_msgs-msg:PersonGoalUPO))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonGoalArrayUPO>)))
  "Returns string type for a message object of type '<PersonGoalArrayUPO>"
  "upo_msgs/PersonGoalArrayUPO")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonGoalArrayUPO)))
  "Returns string type for a message object of type 'PersonGoalArrayUPO"
  "upo_msgs/PersonGoalArrayUPO")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonGoalArrayUPO>)))
  "Returns md5sum for a message object of type '<PersonGoalArrayUPO>"
  "c2da875097c42a5e599c47bb399c2877")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonGoalArrayUPO)))
  "Returns md5sum for a message object of type 'PersonGoalArrayUPO"
  "c2da875097c42a5e599c47bb399c2877")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonGoalArrayUPO>)))
  "Returns full string definition for message of type '<PersonGoalArrayUPO>"
  (cl:format cl:nil "Header header~%uint32 size~%PersonGoalUPO[] personGoals~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: upo_msgs/PersonGoalUPO~%Header header~%uint32 id~%geometry_msgs/PoseStamped[] goals~%float32[] belief~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonGoalArrayUPO)))
  "Returns full string definition for message of type 'PersonGoalArrayUPO"
  (cl:format cl:nil "Header header~%uint32 size~%PersonGoalUPO[] personGoals~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: upo_msgs/PersonGoalUPO~%Header header~%uint32 id~%geometry_msgs/PoseStamped[] goals~%float32[] belief~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonGoalArrayUPO>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'personGoals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonGoalArrayUPO>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonGoalArrayUPO
    (cl:cons ':header (header msg))
    (cl:cons ':size (size msg))
    (cl:cons ':personGoals (personGoals msg))
))
