; Auto-generated. Do not edit!


(cl:in-package upo_social_layer-srv)


;//! \htmlinclude SetDemoPath-request.msg.html

(cl:defclass <SetDemoPath-request> (roslisp-msg-protocol:ros-message)
  ((demo
    :reader demo
    :initarg :demo
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
   (use_loss_func
    :reader use_loss_func
    :initarg :use_loss_func
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetDemoPath-request (<SetDemoPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDemoPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDemoPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upo_social_layer-srv:<SetDemoPath-request> is deprecated: use upo_social_layer-srv:SetDemoPath-request instead.")))

(cl:ensure-generic-function 'demo-val :lambda-list '(m))
(cl:defmethod demo-val ((m <SetDemoPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_social_layer-srv:demo-val is deprecated.  Use upo_social_layer-srv:demo instead.")
  (demo m))

(cl:ensure-generic-function 'use_loss_func-val :lambda-list '(m))
(cl:defmethod use_loss_func-val ((m <SetDemoPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_social_layer-srv:use_loss_func-val is deprecated.  Use upo_social_layer-srv:use_loss_func instead.")
  (use_loss_func m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDemoPath-request>) ostream)
  "Serializes a message object of type '<SetDemoPath-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'demo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'demo))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_loss_func) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDemoPath-request>) istream)
  "Deserializes a message object of type '<SetDemoPath-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'demo) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'demo)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'use_loss_func) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDemoPath-request>)))
  "Returns string type for a service object of type '<SetDemoPath-request>"
  "upo_social_layer/SetDemoPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDemoPath-request)))
  "Returns string type for a service object of type 'SetDemoPath-request"
  "upo_social_layer/SetDemoPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDemoPath-request>)))
  "Returns md5sum for a message object of type '<SetDemoPath-request>"
  "c59916b1047dd2d21fe199789f24e2a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDemoPath-request)))
  "Returns md5sum for a message object of type 'SetDemoPath-request"
  "c59916b1047dd2d21fe199789f24e2a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDemoPath-request>)))
  "Returns full string definition for message of type '<SetDemoPath-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] demo~%bool use_loss_func~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDemoPath-request)))
  "Returns full string definition for message of type 'SetDemoPath-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] demo~%bool use_loss_func~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDemoPath-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'demo) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDemoPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDemoPath-request
    (cl:cons ':demo (demo msg))
    (cl:cons ':use_loss_func (use_loss_func msg))
))
;//! \htmlinclude SetDemoPath-response.msg.html

(cl:defclass <SetDemoPath-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetDemoPath-response (<SetDemoPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDemoPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDemoPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upo_social_layer-srv:<SetDemoPath-response> is deprecated: use upo_social_layer-srv:SetDemoPath-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDemoPath-response>) ostream)
  "Serializes a message object of type '<SetDemoPath-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDemoPath-response>) istream)
  "Deserializes a message object of type '<SetDemoPath-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDemoPath-response>)))
  "Returns string type for a service object of type '<SetDemoPath-response>"
  "upo_social_layer/SetDemoPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDemoPath-response)))
  "Returns string type for a service object of type 'SetDemoPath-response"
  "upo_social_layer/SetDemoPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDemoPath-response>)))
  "Returns md5sum for a message object of type '<SetDemoPath-response>"
  "c59916b1047dd2d21fe199789f24e2a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDemoPath-response)))
  "Returns md5sum for a message object of type 'SetDemoPath-response"
  "c59916b1047dd2d21fe199789f24e2a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDemoPath-response>)))
  "Returns full string definition for message of type '<SetDemoPath-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDemoPath-response)))
  "Returns full string definition for message of type 'SetDemoPath-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDemoPath-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDemoPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDemoPath-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDemoPath)))
  'SetDemoPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDemoPath)))
  'SetDemoPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDemoPath)))
  "Returns string type for a service object of type '<SetDemoPath>"
  "upo_social_layer/SetDemoPath")