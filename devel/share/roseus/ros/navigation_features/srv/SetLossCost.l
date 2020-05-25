;; Auto-generated. Do not edit!


(when (boundp 'navigation_features::SetLossCost)
  (if (not (find-package "NAVIGATION_FEATURES"))
    (make-package "NAVIGATION_FEATURES"))
  (shadow 'SetLossCost (find-package "NAVIGATION_FEATURES")))
(unless (find-package "NAVIGATION_FEATURES::SETLOSSCOST")
  (make-package "NAVIGATION_FEATURES::SETLOSSCOST"))
(unless (find-package "NAVIGATION_FEATURES::SETLOSSCOSTREQUEST")
  (make-package "NAVIGATION_FEATURES::SETLOSSCOSTREQUEST"))
(unless (find-package "NAVIGATION_FEATURES::SETLOSSCOSTRESPONSE")
  (make-package "NAVIGATION_FEATURES::SETLOSSCOSTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass navigation_features::SetLossCostRequest
  :super ros::object
  :slots (_demo_path _use_loss_func ))

(defmethod navigation_features::SetLossCostRequest
  (:init
   (&key
    ((:demo_path __demo_path) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    ((:use_loss_func __use_loss_func) nil)
    )
   (send-super :init)
   (setq _demo_path __demo_path)
   (setq _use_loss_func __use_loss_func)
   self)
  (:demo_path
   (&rest __demo_path)
   (if (keywordp (car __demo_path))
       (send* _demo_path __demo_path)
     (progn
       (if __demo_path (setq _demo_path (car __demo_path)))
       _demo_path)))
  (:use_loss_func
   (&optional __use_loss_func)
   (if __use_loss_func (setq _use_loss_func __use_loss_func)) _use_loss_func)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped[] _demo_path
    (apply #'+ (send-all _demo_path :serialization-length)) 4
    ;; bool _use_loss_func
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped[] _demo_path
     (write-long (length _demo_path) s)
     (dolist (elem _demo_path)
       (send elem :serialize s)
       )
     ;; bool _use_loss_func
       (if _use_loss_func (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped[] _demo_path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _demo_path (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _demo_path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _use_loss_func
     (setq _use_loss_func (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass navigation_features::SetLossCostResponse
  :super ros::object
  :slots ())

(defmethod navigation_features::SetLossCostResponse
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

(defclass navigation_features::SetLossCost
  :super ros::object
  :slots ())

(setf (get navigation_features::SetLossCost :md5sum-) "1ad92c7623984460307dafddcd731d68")
(setf (get navigation_features::SetLossCost :datatype-) "navigation_features/SetLossCost")
(setf (get navigation_features::SetLossCost :request) navigation_features::SetLossCostRequest)
(setf (get navigation_features::SetLossCost :response) navigation_features::SetLossCostResponse)

(defmethod navigation_features::SetLossCostRequest
  (:response () (instance navigation_features::SetLossCostResponse :init)))

(setf (get navigation_features::SetLossCostRequest :md5sum-) "1ad92c7623984460307dafddcd731d68")
(setf (get navigation_features::SetLossCostRequest :datatype-) "navigation_features/SetLossCostRequest")
(setf (get navigation_features::SetLossCostRequest :definition-)
      "geometry_msgs/PoseStamped[] demo_path
bool use_loss_func

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

(setf (get navigation_features::SetLossCostResponse :md5sum-) "1ad92c7623984460307dafddcd731d68")
(setf (get navigation_features::SetLossCostResponse :datatype-) "navigation_features/SetLossCostResponse")
(setf (get navigation_features::SetLossCostResponse :definition-)
      "geometry_msgs/PoseStamped[] demo_path
bool use_loss_func

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



(provide :navigation_features/SetLossCost "1ad92c7623984460307dafddcd731d68")


