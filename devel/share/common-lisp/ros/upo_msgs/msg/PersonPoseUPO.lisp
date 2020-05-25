; Auto-generated. Do not edit!


(cl:in-package upo_msgs-msg)


;//! \htmlinclude PersonPoseUPO.msg.html

(cl:defclass <PersonPoseUPO> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass PersonPoseUPO (<PersonPoseUPO>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonPoseUPO>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonPoseUPO)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upo_msgs-msg:<PersonPoseUPO> is deprecated: use upo_msgs-msg:PersonPoseUPO instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PersonPoseUPO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_msgs-msg:header-val is deprecated.  Use upo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PersonPoseUPO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_msgs-msg:id-val is deprecated.  Use upo_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <PersonPoseUPO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_msgs-msg:vel-val is deprecated.  Use upo_msgs-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PersonPoseUPO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_msgs-msg:position-val is deprecated.  Use upo_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <PersonPoseUPO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_msgs-msg:orientation-val is deprecated.  Use upo_msgs-msg:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonPoseUPO>) ostream)
  "Serializes a message object of type '<PersonPoseUPO>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonPoseUPO>) istream)
  "Deserializes a message object of type '<PersonPoseUPO>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonPoseUPO>)))
  "Returns string type for a message object of type '<PersonPoseUPO>"
  "upo_msgs/PersonPoseUPO")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonPoseUPO)))
  "Returns string type for a message object of type 'PersonPoseUPO"
  "upo_msgs/PersonPoseUPO")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonPoseUPO>)))
  "Returns md5sum for a message object of type '<PersonPoseUPO>"
  "e33e12367f5d203eb13369fe8af6884a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonPoseUPO)))
  "Returns md5sum for a message object of type 'PersonPoseUPO"
  "e33e12367f5d203eb13369fe8af6884a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonPoseUPO>)))
  "Returns full string definition for message of type '<PersonPoseUPO>"
  (cl:format cl:nil "Header header~%uint32 id~%float64 vel~%geometry_msgs/Point position ~%geometry_msgs/Quaternion orientation ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonPoseUPO)))
  "Returns full string definition for message of type 'PersonPoseUPO"
  (cl:format cl:nil "Header header~%uint32 id~%float64 vel~%geometry_msgs/Point position ~%geometry_msgs/Quaternion orientation ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonPoseUPO>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonPoseUPO>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonPoseUPO
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
))
