; Auto-generated. Do not edit!


(cl:in-package navigation_features-srv)


;//! \htmlinclude SetLossCost-request.msg.html

(cl:defclass <SetLossCost-request> (roslisp-msg-protocol:ros-message)
  ((demo_path
    :reader demo_path
    :initarg :demo_path
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
   (use_loss_func
    :reader use_loss_func
    :initarg :use_loss_func
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetLossCost-request (<SetLossCost-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLossCost-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLossCost-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_features-srv:<SetLossCost-request> is deprecated: use navigation_features-srv:SetLossCost-request instead.")))

(cl:ensure-generic-function 'demo_path-val :lambda-list '(m))
(cl:defmethod demo_path-val ((m <SetLossCost-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_features-srv:demo_path-val is deprecated.  Use navigation_features-srv:demo_path instead.")
  (demo_path m))

(cl:ensure-generic-function 'use_loss_func-val :lambda-list '(m))
(cl:defmethod use_loss_func-val ((m <SetLossCost-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_features-srv:use_loss_func-val is deprecated.  Use navigation_features-srv:use_loss_func instead.")
  (use_loss_func m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLossCost-request>) ostream)
  "Serializes a message object of type '<SetLossCost-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'demo_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'demo_path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_loss_func) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLossCost-request>) istream)
  "Deserializes a message object of type '<SetLossCost-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'demo_path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'demo_path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'use_loss_func) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLossCost-request>)))
  "Returns string type for a service object of type '<SetLossCost-request>"
  "navigation_features/SetLossCostRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLossCost-request)))
  "Returns string type for a service object of type 'SetLossCost-request"
  "navigation_features/SetLossCostRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLossCost-request>)))
  "Returns md5sum for a message object of type '<SetLossCost-request>"
  "1ad92c7623984460307dafddcd731d68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLossCost-request)))
  "Returns md5sum for a message object of type 'SetLossCost-request"
  "1ad92c7623984460307dafddcd731d68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLossCost-request>)))
  "Returns full string definition for message of type '<SetLossCost-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] demo_path~%bool use_loss_func~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLossCost-request)))
  "Returns full string definition for message of type 'SetLossCost-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] demo_path~%bool use_loss_func~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLossCost-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'demo_path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLossCost-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLossCost-request
    (cl:cons ':demo_path (demo_path msg))
    (cl:cons ':use_loss_func (use_loss_func msg))
))
;//! \htmlinclude SetLossCost-response.msg.html

(cl:defclass <SetLossCost-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetLossCost-response (<SetLossCost-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLossCost-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLossCost-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_features-srv:<SetLossCost-response> is deprecated: use navigation_features-srv:SetLossCost-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLossCost-response>) ostream)
  "Serializes a message object of type '<SetLossCost-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLossCost-response>) istream)
  "Deserializes a message object of type '<SetLossCost-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLossCost-response>)))
  "Returns string type for a service object of type '<SetLossCost-response>"
  "navigation_features/SetLossCostResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLossCost-response)))
  "Returns string type for a service object of type 'SetLossCost-response"
  "navigation_features/SetLossCostResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLossCost-response>)))
  "Returns md5sum for a message object of type '<SetLossCost-response>"
  "1ad92c7623984460307dafddcd731d68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLossCost-response)))
  "Returns md5sum for a message object of type 'SetLossCost-response"
  "1ad92c7623984460307dafddcd731d68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLossCost-response>)))
  "Returns full string definition for message of type '<SetLossCost-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLossCost-response)))
  "Returns full string definition for message of type 'SetLossCost-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLossCost-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLossCost-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLossCost-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLossCost)))
  'SetLossCost-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLossCost)))
  'SetLossCost-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLossCost)))
  "Returns string type for a service object of type '<SetLossCost>"
  "navigation_features/SetLossCost")