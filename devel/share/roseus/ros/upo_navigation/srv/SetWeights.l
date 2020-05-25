;; Auto-generated. Do not edit!


(when (boundp 'upo_navigation::SetWeights)
  (if (not (find-package "UPO_NAVIGATION"))
    (make-package "UPO_NAVIGATION"))
  (shadow 'SetWeights (find-package "UPO_NAVIGATION")))
(unless (find-package "UPO_NAVIGATION::SETWEIGHTS")
  (make-package "UPO_NAVIGATION::SETWEIGHTS"))
(unless (find-package "UPO_NAVIGATION::SETWEIGHTSREQUEST")
  (make-package "UPO_NAVIGATION::SETWEIGHTSREQUEST"))
(unless (find-package "UPO_NAVIGATION::SETWEIGHTSRESPONSE")
  (make-package "UPO_NAVIGATION::SETWEIGHTSRESPONSE"))

(in-package "ROS")





(defclass upo_navigation::SetWeightsRequest
  :super ros::object
  :slots (_weights ))

(defmethod upo_navigation::SetWeightsRequest
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

(defclass upo_navigation::SetWeightsResponse
  :super ros::object
  :slots ())

(defmethod upo_navigation::SetWeightsResponse
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

(defclass upo_navigation::SetWeights
  :super ros::object
  :slots ())

(setf (get upo_navigation::SetWeights :md5sum-) "d5ad370da8a2ea46419264bcdd331bf8")
(setf (get upo_navigation::SetWeights :datatype-) "upo_navigation/SetWeights")
(setf (get upo_navigation::SetWeights :request) upo_navigation::SetWeightsRequest)
(setf (get upo_navigation::SetWeights :response) upo_navigation::SetWeightsResponse)

(defmethod upo_navigation::SetWeightsRequest
  (:response () (instance upo_navigation::SetWeightsResponse :init)))

(setf (get upo_navigation::SetWeightsRequest :md5sum-) "d5ad370da8a2ea46419264bcdd331bf8")
(setf (get upo_navigation::SetWeightsRequest :datatype-) "upo_navigation/SetWeightsRequest")
(setf (get upo_navigation::SetWeightsRequest :definition-)
      "float32[] weights
---


")

(setf (get upo_navigation::SetWeightsResponse :md5sum-) "d5ad370da8a2ea46419264bcdd331bf8")
(setf (get upo_navigation::SetWeightsResponse :datatype-) "upo_navigation/SetWeightsResponse")
(setf (get upo_navigation::SetWeightsResponse :definition-)
      "float32[] weights
---


")



(provide :upo_navigation/SetWeights "d5ad370da8a2ea46419264bcdd331bf8")


