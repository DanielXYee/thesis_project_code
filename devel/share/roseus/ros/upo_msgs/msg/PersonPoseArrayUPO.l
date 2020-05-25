;; Auto-generated. Do not edit!


(when (boundp 'upo_msgs::PersonPoseArrayUPO)
  (if (not (find-package "UPO_MSGS"))
    (make-package "UPO_MSGS"))
  (shadow 'PersonPoseArrayUPO (find-package "UPO_MSGS")))
(unless (find-package "UPO_MSGS::PERSONPOSEARRAYUPO")
  (make-package "UPO_MSGS::PERSONPOSEARRAYUPO"))

(in-package "ROS")
;;//! \htmlinclude PersonPoseArrayUPO.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass upo_msgs::PersonPoseArrayUPO
  :super ros::object
  :slots (_header _size _personPoses ))

(defmethod upo_msgs::PersonPoseArrayUPO
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:size __size) 0)
    ((:personPoses __personPoses) (let (r) (dotimes (i 0) (push (instance upo_msgs::PersonPoseUPO :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _size (round __size))
   (setq _personPoses __personPoses)
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
  (:personPoses
   (&rest __personPoses)
   (if (keywordp (car __personPoses))
       (send* _personPoses __personPoses)
     (progn
       (if __personPoses (setq _personPoses (car __personPoses)))
       _personPoses)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _size
    4
    ;; upo_msgs/PersonPoseUPO[] _personPoses
    (apply #'+ (send-all _personPoses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _size
       (write-long _size s)
     ;; upo_msgs/PersonPoseUPO[] _personPoses
     (write-long (length _personPoses) s)
     (dolist (elem _personPoses)
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
   ;; upo_msgs/PersonPoseUPO[] _personPoses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _personPoses (let (r) (dotimes (i n) (push (instance upo_msgs::PersonPoseUPO :init) r)) r))
     (dolist (elem- _personPoses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get upo_msgs::PersonPoseArrayUPO :md5sum-) "b639a8fec51263bcdabcb919ea55b99e")
(setf (get upo_msgs::PersonPoseArrayUPO :datatype-) "upo_msgs/PersonPoseArrayUPO")
(setf (get upo_msgs::PersonPoseArrayUPO :definition-)
      "Header header
uint32 size
PersonPoseUPO[] personPoses

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

")



(provide :upo_msgs/PersonPoseArrayUPO "b639a8fec51263bcdabcb919ea55b99e")


