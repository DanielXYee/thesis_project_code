;; Auto-generated. Do not edit!


(when (boundp 'upo_social_layer::Features)
  (if (not (find-package "UPO_SOCIAL_LAYER"))
    (make-package "UPO_SOCIAL_LAYER"))
  (shadow 'Features (find-package "UPO_SOCIAL_LAYER")))
(unless (find-package "UPO_SOCIAL_LAYER::FEATURES")
  (make-package "UPO_SOCIAL_LAYER::FEATURES"))
(unless (find-package "UPO_SOCIAL_LAYER::FEATURESREQUEST")
  (make-package "UPO_SOCIAL_LAYER::FEATURESREQUEST"))
(unless (find-package "UPO_SOCIAL_LAYER::FEATURESRESPONSE")
  (make-package "UPO_SOCIAL_LAYER::FEATURESRESPONSE"))

(in-package "ROS")





(defclass upo_social_layer::FeaturesRequest
  :super ros::object
  :slots (_x _y ))

(defmethod upo_social_layer::FeaturesRequest
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

(defclass upo_social_layer::FeaturesResponse
  :super ros::object
  :slots (_features ))

(defmethod upo_social_layer::FeaturesResponse
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

(defclass upo_social_layer::Features
  :super ros::object
  :slots ())

(setf (get upo_social_layer::Features :md5sum-) "d0f680e5a790f292b7ddcbc7f490dfa6")
(setf (get upo_social_layer::Features :datatype-) "upo_social_layer/Features")
(setf (get upo_social_layer::Features :request) upo_social_layer::FeaturesRequest)
(setf (get upo_social_layer::Features :response) upo_social_layer::FeaturesResponse)

(defmethod upo_social_layer::FeaturesRequest
  (:response () (instance upo_social_layer::FeaturesResponse :init)))

(setf (get upo_social_layer::FeaturesRequest :md5sum-) "d0f680e5a790f292b7ddcbc7f490dfa6")
(setf (get upo_social_layer::FeaturesRequest :datatype-) "upo_social_layer/FeaturesRequest")
(setf (get upo_social_layer::FeaturesRequest :definition-)
      "float32 x
float32 y
---
float32[] features

")

(setf (get upo_social_layer::FeaturesResponse :md5sum-) "d0f680e5a790f292b7ddcbc7f490dfa6")
(setf (get upo_social_layer::FeaturesResponse :datatype-) "upo_social_layer/FeaturesResponse")
(setf (get upo_social_layer::FeaturesResponse :definition-)
      "float32 x
float32 y
---
float32[] features

")



(provide :upo_social_layer/Features "d0f680e5a790f292b7ddcbc7f490dfa6")


