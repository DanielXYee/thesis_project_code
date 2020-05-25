;; Auto-generated. Do not edit!


(when (boundp 'upo_social_layer::SetDemoPath)
  (if (not (find-package "UPO_SOCIAL_LAYER"))
    (make-package "UPO_SOCIAL_LAYER"))
  (shadow 'SetDemoPath (find-package "UPO_SOCIAL_LAYER")))
(unless (find-package "UPO_SOCIAL_LAYER::SETDEMOPATH")
  (make-package "UPO_SOCIAL_LAYER::SETDEMOPATH"))
(unless (find-package "UPO_SOCIAL_LAYER::SETDEMOPATHREQUEST")
  (make-package "UPO_SOCIAL_LAYER::SETDEMOPATHREQUEST"))
(unless (find-package "UPO_SOCIAL_LAYER::SETDEMOPATHRESPONSE")
  (make-package "UPO_SOCIAL_LAYER::SETDEMOPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass upo_social_layer::SetDemoPathRequest
  :super ros::object
  :slots (_demo _use_loss_func ))

(defmethod upo_social_layer::SetDemoPathRequest
  (:init
   (&key
    ((:demo __demo) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    ((:use_loss_func __use_loss_func) nil)
    )
   (send-super :init)
   (setq _demo __demo)
   (setq _use_loss_func __use_loss_func)
   self)
  (:demo
   (&rest __demo)
   (if (keywordp (car __demo))
       (send* _demo __demo)
     (progn
       (if __demo (setq _demo (car __demo)))
       _demo)))
  (:use_loss_func
   (&optional __use_loss_func)
   (if __use_loss_func (setq _use_loss_func __use_loss_func)) _use_loss_func)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped[] _demo
    (apply #'+ (send-all _demo :serialization-length)) 4
    ;; bool _use_loss_func
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped[] _demo
     (write-long (length _demo) s)
     (dolist (elem _demo)
       (send elem :serialize s)
       )
     ;; bool _use_loss_func
       (if _use_loss_func (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped[] _demo
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _demo (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _demo)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _use_loss_func
     (setq _use_loss_func (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass upo_social_layer::SetDemoPathResponse
  :super ros::object
  :slots ())

(defmethod upo_social_layer::SetDemoPathResponse
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

(defclass upo_social_layer::SetDemoPath
  :super ros::object
  :slots ())

(setf (get upo_social_layer::SetDemoPath :md5sum-) "c59916b1047dd2d21fe199789f24e2a1")
(setf (get upo_social_layer::SetDemoPath :datatype-) "upo_social_layer/SetDemoPath")
(setf (get upo_social_layer::SetDemoPath :request) upo_social_layer::SetDemoPathRequest)
(setf (get upo_social_layer::SetDemoPath :response) upo_social_layer::SetDemoPathResponse)

(defmethod upo_social_layer::SetDemoPathRequest
  (:response () (instance upo_social_layer::SetDemoPathResponse :init)))

(setf (get upo_social_layer::SetDemoPathRequest :md5sum-) "c59916b1047dd2d21fe199789f24e2a1")
(setf (get upo_social_layer::SetDemoPathRequest :datatype-) "upo_social_layer/SetDemoPathRequest")
(setf (get upo_social_layer::SetDemoPathRequest :definition-)
      "geometry_msgs/PoseStamped[] demo
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

(setf (get upo_social_layer::SetDemoPathResponse :md5sum-) "c59916b1047dd2d21fe199789f24e2a1")
(setf (get upo_social_layer::SetDemoPathResponse :datatype-) "upo_social_layer/SetDemoPathResponse")
(setf (get upo_social_layer::SetDemoPathResponse :definition-)
      "geometry_msgs/PoseStamped[] demo
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



(provide :upo_social_layer/SetDemoPath "c59916b1047dd2d21fe199789f24e2a1")


