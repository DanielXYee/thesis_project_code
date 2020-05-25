;; Auto-generated. Do not edit!


(when (boundp 'navigation_features::SetScenario)
  (if (not (find-package "NAVIGATION_FEATURES"))
    (make-package "NAVIGATION_FEATURES"))
  (shadow 'SetScenario (find-package "NAVIGATION_FEATURES")))
(unless (find-package "NAVIGATION_FEATURES::SETSCENARIO")
  (make-package "NAVIGATION_FEATURES::SETSCENARIO"))
(unless (find-package "NAVIGATION_FEATURES::SETSCENARIOREQUEST")
  (make-package "NAVIGATION_FEATURES::SETSCENARIOREQUEST"))
(unless (find-package "NAVIGATION_FEATURES::SETSCENARIORESPONSE")
  (make-package "NAVIGATION_FEATURES::SETSCENARIORESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "UPO_MSGS"))
  (ros::roseus-add-msgs "upo_msgs"))




(defclass navigation_features::SetScenarioRequest
  :super ros::object
  :slots (_obstacles _people _goal ))

(defmethod navigation_features::SetScenarioRequest
  (:init
   (&key
    ((:obstacles __obstacles) (instance sensor_msgs::PointCloud2 :init))
    ((:people __people) (instance upo_msgs::PersonPoseArrayUPO :init))
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _obstacles __obstacles)
   (setq _people __people)
   (setq _goal __goal)
   self)
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:people
   (&rest __people)
   (if (keywordp (car __people))
       (send* _people __people)
     (progn
       (if __people (setq _people (car __people)))
       _people)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _obstacles
    (send _obstacles :serialization-length)
    ;; upo_msgs/PersonPoseArrayUPO _people
    (send _people :serialization-length)
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _obstacles
       (send _obstacles :serialize s)
     ;; upo_msgs/PersonPoseArrayUPO _people
       (send _people :serialize s)
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _obstacles
     (send _obstacles :deserialize buf ptr-) (incf ptr- (send _obstacles :serialization-length))
   ;; upo_msgs/PersonPoseArrayUPO _people
     (send _people :deserialize buf ptr-) (incf ptr- (send _people :serialization-length))
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass navigation_features::SetScenarioResponse
  :super ros::object
  :slots ())

(defmethod navigation_features::SetScenarioResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass navigation_features::SetScenario
  :super ros::object
  :slots ())

(setf (get navigation_features::SetScenario :md5sum-) "d1a8c49e0969fcedfee28e334b2ff779")
(setf (get navigation_features::SetScenario :datatype-) "navigation_features/SetScenario")
(setf (get navigation_features::SetScenario :request) navigation_features::SetScenarioRequest)
(setf (get navigation_features::SetScenario :response) navigation_features::SetScenarioResponse)

(defmethod navigation_features::SetScenarioRequest
  (:response () (instance navigation_features::SetScenarioResponse :init)))

(setf (get navigation_features::SetScenarioRequest :md5sum-) "d1a8c49e0969fcedfee28e334b2ff779")
(setf (get navigation_features::SetScenarioRequest :datatype-) "navigation_features/SetScenarioRequest")
(setf (get navigation_features::SetScenarioRequest :definition-)
      "sensor_msgs/PointCloud2 obstacles
upo_msgs/PersonPoseArrayUPO people
geometry_msgs/PoseStamped goal

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: upo_msgs/PersonPoseArrayUPO
Header header
uint32 size
PersonPoseUPO[] personPoses

================================================================================
MSG: upo_msgs/PersonPoseUPO
Header header
uint32 id
float64 vel
geometry_msgs/Point position 
geometry_msgs/Quaternion orientation 

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation
---


")

(setf (get navigation_features::SetScenarioResponse :md5sum-) "d1a8c49e0969fcedfee28e334b2ff779")
(setf (get navigation_features::SetScenarioResponse :datatype-) "navigation_features/SetScenarioResponse")
(setf (get navigation_features::SetScenarioResponse :definition-)
      "sensor_msgs/PointCloud2 obstacles
upo_msgs/PersonPoseArrayUPO people
geometry_msgs/PoseStamped goal

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: upo_msgs/PersonPoseArrayUPO
Header header
uint32 size
PersonPoseUPO[] personPoses

================================================================================
MSG: upo_msgs/PersonPoseUPO
Header header
uint32 id
float64 vel
geometry_msgs/Point position 
geometry_msgs/Quaternion orientation 

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation
---


")



(provide :navigation_features/SetScenario "d1a8c49e0969fcedfee28e334b2ff779")


