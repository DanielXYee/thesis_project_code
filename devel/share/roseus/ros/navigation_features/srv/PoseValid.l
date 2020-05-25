;; Auto-generated. Do not edit!


(when (boundp 'navigation_features::PoseValid)
  (if (not (find-package "NAVIGATION_FEATURES"))
    (make-package "NAVIGATION_FEATURES"))
  (shadow 'PoseValid (find-package "NAVIGATION_FEATURES")))
(unless (find-package "NAVIGATION_FEATURES::POSEVALID")
  (make-package "NAVIGATION_FEATURES::POSEVALID"))
(unless (find-package "NAVIGATION_FEATURES::POSEVALIDREQUEST")
  (make-package "NAVIGATION_FEATURES::POSEVALIDREQUEST"))
(unless (find-package "NAVIGATION_FEATURES::POSEVALIDRESPONSE")
  (make-package "NAVIGATION_FEATURES::POSEVALIDRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass navigation_features::PoseValidRequest
  :super ros::object
  :slots (_pose ))

(defmethod navigation_features::PoseValidRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass navigation_features::PoseValidResponse
  :super ros::object
  :slots (_ok ))

(defmethod navigation_features::PoseValidResponse
  (:init
   (&key
    ((:ok __ok) nil)
    )
   (send-super :init)
   (setq _ok __ok)
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass navigation_features::PoseValid
  :super ros::object
  :slots ())

(setf (get navigation_features::PoseValid :md5sum-) "4821b1f643199b9b14db486b922422d9")
(setf (get navigation_features::PoseValid :datatype-) "navigation_features/PoseValid")
(setf (get navigation_features::PoseValid :request) navigation_features::PoseValidRequest)
(setf (get navigation_features::PoseValid :response) navigation_features::PoseValidResponse)

(defmethod navigation_features::PoseValidRequest
  (:response () (instance navigation_features::PoseValidResponse :init)))

(setf (get navigation_features::PoseValidRequest :md5sum-) "4821b1f643199b9b14db486b922422d9")
(setf (get navigation_features::PoseValidRequest :datatype-) "navigation_features/PoseValidRequest")
(setf (get navigation_features::PoseValidRequest :definition-)
      "geometry_msgs/PoseStamped pose

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
bool ok

")

(setf (get navigation_features::PoseValidResponse :md5sum-) "4821b1f643199b9b14db486b922422d9")
(setf (get navigation_features::PoseValidResponse :datatype-) "navigation_features/PoseValidResponse")
(setf (get navigation_features::PoseValidResponse :definition-)
      "geometry_msgs/PoseStamped pose

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
bool ok

")



(provide :navigation_features/PoseValid "4821b1f643199b9b14db486b922422d9")

