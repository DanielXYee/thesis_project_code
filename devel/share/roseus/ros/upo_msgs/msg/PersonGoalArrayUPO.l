;; Auto-generated. Do not edit!


(when (boundp 'upo_msgs::PersonGoalArrayUPO)
  (if (not (find-package "UPO_MSGS"))
    (make-package "UPO_MSGS"))
  (shadow 'PersonGoalArrayUPO (find-package "UPO_MSGS")))
(unless (find-package "UPO_MSGS::PERSONGOALARRAYUPO")
  (make-package "UPO_MSGS::PERSONGOALARRAYUPO"))

(in-package "ROS")
;;//! \htmlinclude PersonGoalArrayUPO.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass upo_msgs::PersonGoalArrayUPO
  :super ros::object
  :slots (_header _size _personGoals ))

(defmethod upo_msgs::PersonGoalArrayUPO
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:size __size) 0)
    ((:personGoals __personGoals) (let (r) (dotimes (i 0) (push (instance upo_msgs::PersonGoalUPO :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _size (round __size))
   (setq _personGoals __personGoals)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:personGoals
   (&rest __personGoals)
   (if (keywordp (car __personGoals))
       (send* _personGoals __personGoals)
     (progn
       (if __personGoals (setq _personGoals (car __personGoals)))
       _personGoals)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _size
    4
    ;; upo_msgs/PersonGoalUPO[] _personGoals
    (apply #'+ (send-all _personGoals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _size
       (write-long _size s)
     ;; upo_msgs/PersonGoalUPO[] _personGoals
     (write-long (length _personGoals) s)
     (dolist (elem _personGoals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; upo_msgs/PersonGoalUPO[] _personGoals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _personGoals (let (r) (dotimes (i n) (push (instance upo_msgs::PersonGoalUPO :init) r)) r))
     (dolist (elem- _personGoals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get upo_msgs::PersonGoalArrayUPO :md5sum-) "c2da875097c42a5e599c47bb399c2877")
(setf (get upo_msgs::PersonGoalArrayUPO :datatype-) "upo_msgs/PersonGoalArrayUPO")
(setf (get upo_msgs::PersonGoalArrayUPO :definition-)
      "Header header
uint32 size
PersonGoalUPO[] personGoals

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
MSG: upo_msgs/PersonGoalUPO
Header header
uint32 id
geometry_msgs/PoseStamped[] goals
float32[] belief

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



(provide :upo_msgs/PersonGoalArrayUPO "c2da875097c42a5e599c47bb399c2877")


