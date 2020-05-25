;; Auto-generated. Do not edit!


(when (boundp 'navigation_features::SetWeights)
  (if (not (find-package "NAVIGATION_FEATURES"))
    (make-package "NAVIGATION_FEATURES"))
  (shadow 'SetWeights (find-package "NAVIGATION_FEATURES")))
(unless (find-package "NAVIGATION_FEATURES::SETWEIGHTS")
  (make-package "NAVIGATION_FEATURES::SETWEIGHTS"))
(unless (find-package "NAVIGATION_FEATURES::SETWEIGHTSREQUEST")
  (make-package "NAVIGATION_FEATURES::SETWEIGHTSREQUEST"))
(unless (find-package "NAVIGATION_FEATURES::SETWEIGHTSRESPONSE")
  (make-package "NAVIGATION_FEATURES::SETWEIGHTSRESPONSE"))

(in-package "ROS")





(defclass navigation_features::SetWeightsRequest
  :super ros::object
  :slots (_weights ))

(defmethod navigation_features::SetWeightsRequest
  (:init
   (&key
    ((:weights __weights) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _weights __weights)
   self)
  (:weights
   (&optional __weights)
   (if __weights (setq _weights __weights)) _weights)
  (:serialization-length
   ()
   (+
    ;; float32[] _weights
    (* 4    (length _weights)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _weights
     (write-long (length _weights) s)
     (dotimes (i (length _weights))
       (sys::poke (elt _weights i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _weights
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _weights (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _weights i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass navigation_features::SetWeightsResponse
  :super ros::object
  :slots ())

(defmethod navigation_features::SetWeightsResponse
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

(defclass navigation_features::SetWeights
  :super ros::object
  :slots ())

(setf (get navigation_features::SetWeights :md5sum-) "d5ad370da8a2ea46419264bcdd331bf8")
(setf (get navigation_features::SetWeights :datatype-) "navigation_features/SetWeights")
(setf (get navigation_features::SetWeights :request) navigation_features::SetWeightsRequest)
(setf (get navigation_features::SetWeights :response) navigation_features::SetWeightsResponse)

(defmethod navigation_features::SetWeightsRequest
  (:response () (instance navigation_features::SetWeightsResponse :init)))

(setf (get navigation_features::SetWeightsRequest :md5sum-) "d5ad370da8a2ea46419264bcdd331bf8")
(setf (get navigation_features::SetWeightsRequest :datatype-) "navigation_features/SetWeightsRequest")
(setf (get navigation_features::SetWeightsRequest :definition-)
      "float32[] weights
---

")

(setf (get navigation_features::SetWeightsResponse :md5sum-) "d5ad370da8a2ea46419264bcdd331bf8")
(setf (get navigation_features::SetWeightsResponse :datatype-) "navigation_features/SetWeightsResponse")
(setf (get navigation_features::SetWeightsResponse :definition-)
      "float32[] weights
---

")



(provide :navigation_features/SetWeights "d5ad370da8a2ea46419264bcdd331bf8")


