; Auto-generated. Do not edit!


(cl:in-package upo_msgs-msg)


;//! \htmlinclude PersonPoseArrayUPO.msg.html

(cl:defclass <PersonPoseArrayUPO> (roslisp-msg-protocol:ros-message)
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
   (personPoses
    :reader personPoses
    :initarg :personPoses
    :type (cl:vector upo_msgs-msg:PersonPoseUPO)
   :initform (cl:make-array 0 :element-type 'upo_msgs-msg:PersonPoseUPO :initial-element (cl:make-instance 'upo_msgs-msg:PersonPoseUPO))))
)

(cl:defclass PersonPoseArrayUPO (<PersonPoseArrayUPO>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonPoseArrayUPO>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonPoseArrayUPO)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upo_msgs-msg:<PersonPoseArrayUPO> is deprecated: use upo_msgs-msg:PersonPoseArrayUPO instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PersonPoseArrayUPO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_msgs-msg:header-val is deprecated.  Use upo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <PersonPoseArrayUPO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_msgs-msg:size-val is deprecated.  Use upo_msgs-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'personPoses-val :lambda-list '(m))
(cl:defmethod personPoses-val ((m <PersonPoseArrayUPO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_msgs-msg:personPoses-val is deprecated.  Use upo_msgs-msg:personPoses instead.")
  (personPoses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonPoseArrayUPO>) ostream)
  "Serializes a message object of type '<PersonPoseArrayUPO>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'personPoses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'personPoses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonPoseArrayUPO>) istream)
  "Deserializes a message object of type '<PersonPoseArrayUPO>"
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
  (cl:setf (cl:slot-value msg 'personPoses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'personPoses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'upo_msgs-msg:PersonPoseUPO))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonPoseArrayUPO>)))
  "Returns string type for a message object of type '<PersonPoseArrayUPO>"
  "upo_msgs/PersonPoseArrayUPO")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonPoseArrayUPO)))
  "Returns string type for a message object of type 'PersonPoseArrayUPO"
  "upo_msgs/PersonPoseArrayUPO")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonPoseArrayUPO>)))
  "Returns md5sum for a message object of type '<PersonPoseArrayUPO>"
  "b639a8fec51263bcdabcb919ea55b99e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonPoseArrayUPO)))
  "Returns md5sum for a message object of type 'PersonPoseArrayUPO"
  "b639a8fec51263bcdabcb919ea55b99e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonPoseArrayUPO>)))
  "Returns full string definition for message of type '<PersonPoseArrayUPO>"
  (cl:format cl:nil "Header header~%uint32 size~%PersonPoseUPO[] personPoses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: upo_msgs/PersonPoseUPO~%Header header~%uint32 id~%float64 vel~%geometry_msgs/Point position ~%geometry_msgs/Quaternion orientation ~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonPoseArrayUPO)))
  "Returns full string definition for message of type 'PersonPoseArrayUPO"
  (cl:format cl:nil "Header header~%uint32 size~%PersonPoseUPO[] personPoses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: upo_msgs/PersonPoseUPO~%Header header~%uint32 id~%float64 vel~%geometry_msgs/Point position ~%geometry_msgs/Quaternion orientation ~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonPoseArrayUPO>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'personPoses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonPoseArrayUPO>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonPoseArrayUPO
    (cl:cons ':header (header msg))
    (cl:cons ':size (size msg))
    (cl:cons ':personPoses (personPoses msg))
))
