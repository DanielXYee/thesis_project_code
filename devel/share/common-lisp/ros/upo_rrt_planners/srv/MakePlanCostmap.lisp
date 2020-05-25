; Auto-generated. Do not edit!


(cl:in-package upo_rrt_planners-srv)


;//! \htmlinclude MakePlanCostmap-request.msg.html

(cl:defclass <MakePlanCostmap-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (costmap
    :reader costmap
    :initarg :costmap
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid)))
)

(cl:defclass MakePlanCostmap-request (<MakePlanCostmap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MakePlanCostmap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MakePlanCostmap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upo_rrt_planners-srv:<MakePlanCostmap-request> is deprecated: use upo_rrt_planners-srv:MakePlanCostmap-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <MakePlanCostmap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_rrt_planners-srv:goal-val is deprecated.  Use upo_rrt_planners-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'costmap-val :lambda-list '(m))
(cl:defmethod costmap-val ((m <MakePlanCostmap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_rrt_planners-srv:costmap-val is deprecated.  Use upo_rrt_planners-srv:costmap instead.")
  (costmap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MakePlanCostmap-request>) ostream)
  "Serializes a message object of type '<MakePlanCostmap-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'costmap) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MakePlanCostmap-request>) istream)
  "Deserializes a message object of type '<MakePlanCostmap-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'costmap) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MakePlanCostmap-request>)))
  "Returns string type for a service object of type '<MakePlanCostmap-request>"
  "upo_rrt_planners/MakePlanCostmapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakePlanCostmap-request)))
  "Returns string type for a service object of type 'MakePlanCostmap-request"
  "upo_rrt_planners/MakePlanCostmapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MakePlanCostmap-request>)))
  "Returns md5sum for a message object of type '<MakePlanCostmap-request>"
  "4f495652d3b6b0d89b3de5f9e6e2da92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MakePlanCostmap-request)))
  "Returns md5sum for a message object of type 'MakePlanCostmap-request"
  "4f495652d3b6b0d89b3de5f9e6e2da92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MakePlanCostmap-request>)))
  "Returns full string definition for message of type '<MakePlanCostmap-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped goal~%nav_msgs/OccupancyGrid costmap~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MakePlanCostmap-request)))
  "Returns full string definition for message of type 'MakePlanCostmap-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped goal~%nav_msgs/OccupancyGrid costmap~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MakePlanCostmap-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'costmap))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MakePlanCostmap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MakePlanCostmap-request
    (cl:cons ':goal (goal msg))
    (cl:cons ':costmap (costmap msg))
))
;//! \htmlinclude MakePlanCostmap-response.msg.html

(cl:defclass <MakePlanCostmap-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil)
   (path
    :reader path
    :initarg :path
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped))))
)

(cl:defclass MakePlanCostmap-response (<MakePlanCostmap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MakePlanCostmap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MakePlanCostmap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upo_rrt_planners-srv:<MakePlanCostmap-response> is deprecated: use upo_rrt_planners-srv:MakePlanCostmap-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <MakePlanCostmap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_rrt_planners-srv:ok-val is deprecated.  Use upo_rrt_planners-srv:ok instead.")
  (ok m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <MakePlanCostmap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upo_rrt_planners-srv:path-val is deprecated.  Use upo_rrt_planners-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MakePlanCostmap-response>) ostream)
  "Serializes a message object of type '<MakePlanCostmap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MakePlanCostmap-response>) istream)
  "Deserializes a message object of type '<MakePlanCostmap-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MakePlanCostmap-response>)))
  "Returns string type for a service object of type '<MakePlanCostmap-response>"
  "upo_rrt_planners/MakePlanCostmapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakePlanCostmap-response)))
  "Returns string type for a service object of type 'MakePlanCostmap-response"
  "upo_rrt_planners/MakePlanCostmapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MakePlanCostmap-response>)))
  "Returns md5sum for a message object of type '<MakePlanCostmap-response>"
  "4f495652d3b6b0d89b3de5f9e6e2da92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MakePlanCostmap-response)))
  "Returns md5sum for a message object of type 'MakePlanCostmap-response"
  "4f495652d3b6b0d89b3de5f9e6e2da92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MakePlanCostmap-response>)))
  "Returns full string definition for message of type '<MakePlanCostmap-response>"
  (cl:format cl:nil "bool ok~%geometry_msgs/PoseStamped[] path~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MakePlanCostmap-response)))
  "Returns full string definition for message of type 'MakePlanCostmap-response"
  (cl:format cl:nil "bool ok~%geometry_msgs/PoseStamped[] path~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MakePlanCostmap-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MakePlanCostmap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MakePlanCostmap-response
    (cl:cons ':ok (ok msg))
    (cl:cons ':path (path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MakePlanCostmap)))
  'MakePlanCostmap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MakePlanCostmap)))
  'MakePlanCostmap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakePlanCostmap)))
  "Returns string type for a service object of type '<MakePlanCostmap>"
  "upo_rrt_planners/MakePlanCostmap")