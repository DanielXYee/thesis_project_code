;; Auto-generated. Do not edit!


(when (boundp 'upo_social_layer::SetGoal)
  (if (not (find-package "UPO_SOCIAL_LAYER"))
    (make-package "UPO_SOCIAL_LAYER"))
  (shadow 'SetGoal (find-package "UPO_SOCIAL_LAYER")))
(unless (find-package "UPO_SOCIAL_LAYER::SETGOAL")
  (make-package "UPO_SOCIAL_LAYER::SETGOAL"))
(unless (find-package "UPO_SOCIAL_LAYER::SETGOALREQUEST")
  (make-package "UPO_SOCIAL_LAYER::SETGOALREQUEST"))
(unless (find-package "UPO_SOCIAL_LAYER::SETGOALRESPONSE")
  (make-package "UPO_SOCIAL_LAYER::SETGOALRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass upo_social_layer::SetGoalRequest
  :super ros::object
  :slots (_goal ))

(defmethod upo_social_layer::SetGoalRequest
  (:init
   (&key
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _goal __goal)
   self)
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
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass upo_social_layer::SetGoalResponse
  :super ros::object
  :slots ())

(defmethod upo_social_layer::SetGoalResponse
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

(defclass upo_social_layer::SetGoal
  :super ros::object
  :slots ())

(setf (get upo_social_layer::SetGoal :md5sum-) "85ae384b155cfbcdf597bf321f1d0169")
(setf (get upo_social_layer::SetGoal :datatype-) "upo_social_layer/SetGoal")
(setf (get upo_social_layer::SetGoal :request) upo_social_layer::SetGoalRequest)
(setf (get upo_social_layer::SetGoal :response) upo_social_layer::SetGoalResponse)

(defmethod upo_social_layer::SetGoalRequest
  (:response () (instance upo_social_layer::SetGoalResponse :init)))

(setf (get upo_social_layer::SetGoalRequest :md5sum-) "85ae384b155cfbcdf597bf321f1d0169")
(setf (get upo_social_layer::SetGoalRequest :datatype-) "upo_social_layer/SetGoalRequest")
(setf (get upo_social_layer::SetGoalRequest :definition-)
      "geometry_msgs/PoseStamped goal

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
---


")

(setf (get upo_social_layer::SetGoalResponse :md5sum-) "85ae384b155cfbcdf597bf321f1d0169")
(setf (get upo_social_layer::SetGoalResponse :datatype-) "upo_social_layer/SetGoalResponse")
(setf (get upo_social_layer::SetGoalResponse :definition-)
      "geometry_msgs/PoseStamped goal

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
---


")



(provide :upo_social_layer/SetGoal "85ae384b155cfbcdf597bf321f1d0169")


