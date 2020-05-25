;; Auto-generated. Do not edit!


(when (boundp 'navigation_features::GetFeatureCount)
  (if (not (find-package "NAVIGATION_FEATURES"))
    (make-package "NAVIGATION_FEATURES"))
  (shadow 'GetFeatureCount (find-package "NAVIGATION_FEATURES")))
(unless (find-package "NAVIGATION_FEATURES::GETFEATURECOUNT")
  (make-package "NAVIGATION_FEATURES::GETFEATURECOUNT"))
(unless (find-package "NAVIGATION_FEATURES::GETFEATURECOUNTREQUEST")
  (make-package "NAVIGATION_FEATURES::GETFEATURECOUNTREQUEST"))
(unless (find-package "NAVIGATION_FEATURES::GETFEATURECOUNTRESPONSE")
  (make-package "NAVIGATION_FEATURES::GETFEATURECOUNTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass navigation_features::GetFeatureCountRequest
  :super ros::object
  :slots (_path ))

(defmethod navigation_features::GetFeatureCountRequest
  (:init
   (&key
    ((:path __path) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    )
   (send-super :init)
   (setq _path __path)
   self)
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
    ;; geometry_msgs/PoseStamped[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
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
   ;;
   self)
  )

(defclass navigation_features::GetFeatureCountResponse
  :super ros::object
  :slots (_fc ))

(defmethod navigation_features::GetFeatureCountResponse
  (:init
   (&key
    ((:fc __fc) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _fc __fc)
   self)
  (:fc
   (&optional __fc)
   (if __fc (setq _fc __fc)) _fc)
  (:serialization-length
   ()
   (+
    ;; float32[] _fc
    (* 4    (length _fc)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _fc
     (write-long (length _fc) s)
     (dotimes (i (length _fc))
       (sys::poke (elt _fc i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _fc
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fc (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fc i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass navigation_features::GetFeatureCount
  :super ros::object
  :slots ())

(setf (get navigation_features::GetFeatureCount :md5sum-) "bcbe55a0b60ae0b44299673e70206f76")
(setf (get navigation_features::GetFeatureCount :datatype-) "navigation_features/GetFeatureCount")
(setf (get navigation_features::GetFeatureCount :request) navigation_features::GetFeatureCountRequest)
(setf (get navigation_features::GetFeatureCount :response) navigation_features::GetFeatureCountResponse)

(defmethod navigation_features::GetFeatureCountRequest
  (:response () (instance navigation_features::GetFeatureCountResponse :init)))

(setf (get navigation_features::GetFeatureCountRequest :md5sum-) "bcbe55a0b60ae0b44299673e70206f76")
(setf (get navigation_features::GetFeatureCountRequest :datatype-) "navigation_features/GetFeatureCountRequest")
(setf (get navigation_features::GetFeatureCountRequest :definition-)
      "geometry_msgs/PoseStamped[] path

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
float32[] fc

")

(setf (get navigation_features::GetFeatureCountResponse :md5sum-) "bcbe55a0b60ae0b44299673e70206f76")
(setf (get navigation_features::GetFeatureCountResponse :datatype-) "navigation_features/GetFeatureCountResponse")
(setf (get navigation_features::GetFeatureCountResponse :definition-)
      "geometry_msgs/PoseStamped[] path

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
float32[] fc

")



(provide :navigation_features/GetFeatureCount "bcbe55a0b60ae0b44299673e70206f76")


