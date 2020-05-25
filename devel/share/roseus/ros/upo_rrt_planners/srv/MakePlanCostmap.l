;; Auto-generated. Do not edit!


(when (boundp 'upo_rrt_planners::MakePlanCostmap)
  (if (not (find-package "UPO_RRT_PLANNERS"))
    (make-package "UPO_RRT_PLANNERS"))
  (shadow 'MakePlanCostmap (find-package "UPO_RRT_PLANNERS")))
(unless (find-package "UPO_RRT_PLANNERS::MAKEPLANCOSTMAP")
  (make-package "UPO_RRT_PLANNERS::MAKEPLANCOSTMAP"))
(unless (find-package "UPO_RRT_PLANNERS::MAKEPLANCOSTMAPREQUEST")
  (make-package "UPO_RRT_PLANNERS::MAKEPLANCOSTMAPREQUEST"))
(unless (find-package "UPO_RRT_PLANNERS::MAKEPLANCOSTMAPRESPONSE")
  (make-package "UPO_RRT_PLANNERS::MAKEPLANCOSTMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass upo_rrt_planners::MakePlanCostmapRequest
  :super ros::object
  :slots (_goal _costmap ))

(defmethod upo_rrt_planners::MakePlanCostmapRequest
  (:init
   (&key
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    ((:costmap __costmap) (instance nav_msgs::OccupancyGrid :init))
    )
   (send-super :init)
   (setq _goal __goal)
   (setq _costmap __costmap)
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:costmap
   (&rest __costmap)
   (if (keywordp (car __costmap))
       (send* _costmap __costmap)
     (progn
       (if __costmap (setq _costmap (car __costmap)))
       _costmap)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ;; nav_msgs/OccupancyGrid _costmap
    (send _costmap :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;; nav_msgs/OccupancyGrid _costmap
       (send _costmap :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; nav_msgs/OccupancyGrid _costmap
     (send _costmap :deserialize buf ptr-) (incf ptr- (send _costmap :serialization-length))
   ;;
   self)
  )

(defclass upo_rrt_planners::MakePlanCostmapResponse
  :super ros::object
  :slots (_ok _path ))

(defmethod upo_rrt_planners::MakePlanCostmapResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:path __path) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    )
   (send-super :init)
   (setq _ok __ok)
   (setq _path __path)
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ;; geometry_msgs/PoseStamped[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/PoseStamped[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass upo_rrt_planners::MakePlanCostmap
  :super ros::object
  :slots ())

(setf (get upo_rrt_planners::MakePlanCostmap :md5sum-) "4f495652d3b6b0d89b3de5f9e6e2da92")
(setf (get upo_rrt_planners::MakePlanCostmap :datatype-) "upo_rrt_planners/MakePlanCostmap")
(setf (get upo_rrt_planners::MakePlanCostmap :request) upo_rrt_planners::MakePlanCostmapRequest)
(setf (get upo_rrt_planners::MakePlanCostmap :response) upo_rrt_planners::MakePlanCostmapResponse)

(defmethod upo_rrt_planners::MakePlanCostmapRequest
  (:response () (instance upo_rrt_planners::MakePlanCostmapResponse :init)))

(setf (get upo_rrt_planners::MakePlanCostmapRequest :md5sum-) "4f495652d3b6b0d89b3de5f9e6e2da92")
(setf (get upo_rrt_planners::MakePlanCostmapRequest :datatype-) "upo_rrt_planners/MakePlanCostmapRequest")
(setf (get upo_rrt_planners::MakePlanCostmapRequest :definition-)
      "geometry_msgs/PoseStamped goal
nav_msgs/OccupancyGrid costmap

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

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
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
---
bool ok
geometry_msgs/PoseStamped[] path


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

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
")

(setf (get upo_rrt_planners::MakePlanCostmapResponse :md5sum-) "4f495652d3b6b0d89b3de5f9e6e2da92")
(setf (get upo_rrt_planners::MakePlanCostmapResponse :datatype-) "upo_rrt_planners/MakePlanCostmapResponse")
(setf (get upo_rrt_planners::MakePlanCostmapResponse :definition-)
      "geometry_msgs/PoseStamped goal
nav_msgs/OccupancyGrid costmap

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

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
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
---
bool ok
geometry_msgs/PoseStamped[] path


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

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
")



(provide :upo_rrt_planners/MakePlanCostmap "4f495652d3b6b0d89b3de5f9e6e2da92")


