; Auto-generated. Do not edit!


(cl:in-package navigation_features-srv)


;//! \htmlinclude PoseValid-request.msg.html

(cl:defclass <PoseValid-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass PoseValid-request (<PoseValid-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseValid-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseValid-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_features-srv:<PoseValid-request> is deprecated: use navigation_features-srv:PoseValid-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PoseValid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_features-srv:pose-val is deprecated.  Use navigation_features-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseValid-request>) ostream)
  "Serializes a message object of type '<PoseValid-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseValid-request>) istream)
  "Deserializes a message object of type '<PoseValid-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseValid-request>)))
  "Returns string type for a service object of type '<PoseValid-request>"
  "navigation_features/PoseValidRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseValid-request)))
  "Returns string type for a service object of type 'PoseValid-request"
  "navigation_features/PoseValidRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseValid-request>)))
  "Returns md5sum for a message object of type '<PoseValid-request>"
  "4821b1f643199b9b14db486b922422d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseValid-request)))
  "Returns md5sum for a message object of type 'PoseValid-request"
  "4821b1f643199b9b14db486b922422d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseValid-request>)))
  "Returns full string definition for message of type '<PoseValid-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseValid-request)))
  "Returns full string definition for message of type 'PoseValid-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseValid-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseValid-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseValid-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude PoseValid-response.msg.html

(cl:defclass <PoseValid-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PoseValid-response (<PoseValid-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseValid-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseValid-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_features-srv:<PoseValid-response> is deprecated: use navigation_features-srv:PoseValid-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <PoseValid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_features-srv:ok-val is deprecated.  Use navigation_features-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseValid-response>) ostream)
  "Serializes a message object of type '<PoseValid-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseValid-response>) istream)
  "Deserializes a message object of type '<PoseValid-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseValid-response>)))
  "Returns string type for a service object of type '<PoseValid-response>"
  "navigation_features/PoseValidResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseValid-response)))
  "Returns string type for a service object of type 'PoseValid-response"
  "navigation_features/PoseValidResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseValid-response>)))
  "Returns md5sum for a message object of type '<PoseValid-response>"
  "4821b1f643199b9b14db486b922422d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseValid-response)))
  "Returns md5sum for a message object of type 'PoseValid-response"
  "4821b1f643199b9b14db486b922422d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseValid-response>)))
  "Returns full string definition for message of type '<PoseValid-response>"
  (cl:format cl:nil "bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseValid-response)))
  "Returns full string definition for message of type 'PoseValid-response"
  (cl:format cl:nil "bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseValid-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseValid-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseValid-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PoseValid)))
  'PoseValid-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PoseValid)))
  'PoseValid-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseValid)))
  "Returns string type for a service object of type '<PoseValid>"
  "navigation_features/PoseValid")