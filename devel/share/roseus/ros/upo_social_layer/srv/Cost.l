;; Auto-generated. Do not edit!


(when (boundp 'upo_social_layer::Cost)
  (if (not (find-package "UPO_SOCIAL_LAYER"))
    (make-package "UPO_SOCIAL_LAYER"))
  (shadow 'Cost (find-package "UPO_SOCIAL_LAYER")))
(unless (find-package "UPO_SOCIAL_LAYER::COST")
  (make-package "UPO_SOCIAL_LAYER::COST"))
(unless (find-package "UPO_SOCIAL_LAYER::COSTREQUEST")
  (make-package "UPO_SOCIAL_LAYER::COSTREQUEST"))
(unless (find-package "UPO_SOCIAL_LAYER::COSTRESPONSE")
  (make-package "UPO_SOCIAL_LAYER::COSTRESPONSE"))

(in-package "ROS")





(defclass upo_social_layer::CostRequest
  :super ros::object
  :slots (_x _y ))

(defmethod upo_social_layer::CostRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass upo_social_layer::CostResponse
  :super ros::object
  :slots (_cost ))

(defmethod upo_social_layer::CostResponse
  (:init
   (&key
    ((:cost __cost) 0.0)
    )
   (send-super :init)
   (setq _cost (float __cost))
   self)
  (:cost
   (&optional __cost)
   (if __cost (setq _cost __cost)) _cost)
  (:serialization-length
   ()
   (+
    ;; float32 _cost
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _cost
       (sys::poke _cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _cost
     (setq _cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass upo_social_layer::Cost
  :super ros::object
  :slots ())

(setf (get upo_social_layer::Cost :md5sum-) "ed1896109ea6ef2d0a5cfbf2d389fc40")
(setf (get upo_social_layer::Cost :datatype-) "upo_social_layer/Cost")
(setf (get upo_social_layer::Cost :request) upo_social_layer::CostRequest)
(setf (get upo_social_layer::Cost :response) upo_social_layer::CostResponse)

(defmethod upo_social_layer::CostRequest
  (:response () (instance upo_social_layer::CostResponse :init)))

(setf (get upo_social_layer::CostRequest :md5sum-) "ed1896109ea6ef2d0a5cfbf2d389fc40")
(setf (get upo_social_layer::CostRequest :datatype-) "upo_social_layer/CostRequest")
(setf (get upo_social_layer::CostRequest :definition-)
      "float32 x
float32 y
---
float32 cost

")

(setf (get upo_social_layer::CostResponse :md5sum-) "ed1896109ea6ef2d0a5cfbf2d389fc40")
(setf (get upo_social_layer::CostResponse :datatype-) "upo_social_layer/CostResponse")
(setf (get upo_social_layer::CostResponse :definition-)
      "float32 x
float32 y
---
float32 cost

")



(provide :upo_social_layer/Cost "ed1896109ea6ef2d0a5cfbf2d389fc40")


