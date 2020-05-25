; Auto-generated. Do not edit!


(cl:in-package navigation_features-srv)


;//! \htmlinclude SetScenario-request.msg.html

(cl:defclass <SetScenario-request> (roslisp-msg-protocol:ros-message)
  ((obstacles
    :reader obstacles
    :initarg :obstacles
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (people
    :reader people
    :initarg :people
    :type upo_msgs-msg:PersonPoseArrayUPO
    :initform (cl:make-instance 'upo_msgs-msg:PersonPoseArrayUPO))
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass SetScenario-request (<SetScenario-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetScenario-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetScenario-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_features-srv:<SetScenario-request> is deprecated: use navigation_features-srv:SetScenario-request instead.")))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <SetScenario-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_features-srv:obstacles-val is deprecated.  Use navigation_features-srv:obstacles instead.")
  (obstacles m))

(cl:ensure-generic-function 'people-val :lambda-list '(m))
(cl:defmethod people-val ((m <SetScenario-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_features-srv:people-val is deprecated.  Use navigation_features-srv:people instead.")
  (people m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <SetScenario-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_features-srv:goal-val is deprecated.  Use navigation_features-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetScenario-request>) ostream)
  "Serializes a message object of type '<SetScenario-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacles) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'people) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetScenario-request>) istream)
  "Deserializes a message object of type '<SetScenario-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacles) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'people) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetScenario-request>)))
  "Returns string type for a service object of type '<SetScenario-request>"
  "navigation_features/SetScenarioRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetScenario-request)))
  "Returns string type for a service object of type 'SetScenario-request"
  "navigation_features/SetScenarioRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetScenario-request>)))
  "Returns md5sum for a message object of type '<SetScenario-request>"
  "d1a8c49e0969fcedfee28e334b2ff779")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetScenario-request)))
  "Returns md5sum for a message object of type 'SetScenario-request"
  "d1a8c49e0969fcedfee28e334b2ff779")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetScenario-request>)))
  "Returns full string definition for message of type '<SetScenario-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 obstacles~%upo_msgs/PersonPoseArrayUPO people~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: upo_msgs/PersonPoseArrayUPO~%Header header~%uint32 size~%PersonPoseUPO[] personPoses~%~%================================================================================~%MSG: upo_msgs/PersonPoseUPO~%Header header~%uint32 id~%float64 vel~%geometry_msgs/Point position ~%geometry_msgs/Quaternion orientation ~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetScenario-request)))
  "Returns full string definition for message of type 'SetScenario-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 obstacles~%upo_msgs/PersonPoseArrayUPO people~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: upo_msgs/PersonPoseArrayUPO~%Header header~%uint32 size~%PersonPoseUPO[] personPoses~%~%================================================================================~%MSG: upo_msgs/PersonPoseUPO~%Header header~%uint32 id~%float64 vel~%geometry_msgs/Point position ~%geometry_msgs/Quaternion orientation ~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetScenario-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacles))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'people))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetScenario-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetScenario-request
    (cl:cons ':obstacles (obstacles msg))
    (cl:cons ':people (people msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude SetScenario-response.msg.html

(cl:defclass <SetScenario-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetScenario-response (<SetScenario-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetScenario-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetScenario-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_features-srv:<SetScenario-response> is deprecated: use navigation_features-srv:SetScenario-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetScenario-response>) ostream)
  "Serializes a message object of type '<SetScenario-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetScenario-response>) istream)
  "Deserializes a message object of type '<SetScenario-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetScenario-response>)))
  "Returns string type for a service object of type '<SetScenario-response>"
  "navigation_features/SetScenarioResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetScenario-response)))
  "Returns string type for a service object of type 'SetScenario-response"
  "navigation_features/SetScenarioResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetScenario-response>)))
  "Returns md5sum for a message object of type '<SetScenario-response>"
  "d1a8c49e0969fcedfee28e334b2ff779")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetScenario-response)))
  "Returns md5sum for a message object of type 'SetScenario-response"
  "d1a8c49e0969fcedfee28e334b2ff779")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetScenario-response>)))
  "Returns full string definition for message of type '<SetScenario-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetScenario-response)))
  "Returns full string definition for message of type 'SetScenario-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetScenario-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetScenario-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetScenario-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetScenario)))
  'SetScenario-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetScenario)))
  'SetScenario-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetScenario)))
  "Returns string type for a service object of type '<SetScenario>"
  "navigation_features/SetScenario")