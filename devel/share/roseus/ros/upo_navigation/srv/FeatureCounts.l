;; Auto-generated. Do not edit!


(when (boundp 'upo_navigation::FeatureCounts)
  (if (not (find-package "UPO_NAVIGATION"))
    (make-package "UPO_NAVIGATION"))
  (shadow 'FeatureCounts (find-package "UPO_NAVIGATION")))
(unless (find-package "UPO_NAVIGATION::FEATURECOUNTS")
  (make-package "UPO_NAVIGATION::FEATURECOUNTS"))
(unless (find-package "UPO_NAVIGATION::FEATURECOUNTSREQUEST")
  (make-package "UPO_NAVIGATION::FEATURECOUNTSREQUEST"))
(unless (find-package "UPO_NAVIGATION::FEATURECOUNTSRESPONSE")
  (make-package "UPO_NAVIGATION::FEATURECOUNTSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass upo_navigation::FeatureCountsRequest
  :super ros::object
  :slots (_path _goal ))

(defmethod upo_navigation::FeatureCountsRequest
  (:init
   (&key
    ((:path __path) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _path __path)
   (setq _goal __goal)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
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
    ;; geometry_msgs/PoseStamped[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass upo_navigation::FeatureCountsResponse
  :super ros::object
  :slots (_features ))

(defmethod upo_navigation::FeatureCountsResponse
  (:init
   (&key
    ((:features __features) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _features __features)
   self)
  (:features
   (&optional __features)
   (if __features (setq _features __features)) _features)
  (:serialization-length
   ()
   (+
    ;; float32[] _features
    (* 4    (length _features)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _features
     (write-long (length _features) s)
     (dotimes (i (length _features))
       (sys::poke (elt _features i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _features
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _features (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _features i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass upo_navigation::FeatureCounts
  :super ros::object
  :slots ())

(setf (get upo_navigation::FeatureCounts :md5sum-) "083cfa3c4c78c3b6c6861b11abdcb99a")
(setf (get upo_navigation::FeatureCounts :datatype-) "upo_navigation/FeatureCounts")
(setf (get upo_navigation::FeatureCounts :request) upo_navigation::FeatureCountsRequest)
(setf (get upo_navigation::FeatureCounts :response) upo_navigation::FeatureCountsResponse)

(defmethod upo_navigation::FeatureCountsRequest
  (:response () (instance upo_navigation::FeatureCountsResponse :init)))

(setf (get upo_navigation::FeatureCountsRequest :md5sum-) "083cfa3c4c78c3b6c6861b11abdcb99a")
(setf (get upo_navigation::FeatureCountsRequest :datatype-) "upo_navigation/FeatureCountsRequest")
(setf (get upo_navigation::FeatureCountsRequest :definition-)
      "geometry_msgs/PoseStamped[] path
geometry_msgs/PoseStamped goal

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
float32[] features

")

(setf (get upo_navigation::FeatureCountsResponse :md5sum-) "083cfa3c4c78c3b6c6861b11abdcb99a")
(setf (get upo_navigation::FeatureCountsResponse :datatype-) "upo_navigation/FeatureCountsResponse")
(setf (get upo_navigation::FeatureCountsResponse :definition-)
      "geometry_msgs/PoseStamped[] path
geometry_msgs/PoseStamped goal

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
float32[] features

")



(provide :upo_navigation/FeatureCounts "083cfa3c4c78c3b6c6861b11abdcb99a")


