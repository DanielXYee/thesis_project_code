;; Auto-generated. Do not edit!


(when (boundp 'navigation_features::InitWeights)
  (if (not (find-package "NAVIGATION_FEATURES"))
    (make-package "NAVIGATION_FEATURES"))
  (shadow 'InitWeights (find-package "NAVIGATION_FEATURES")))
(unless (find-package "NAVIGATION_FEATURES::INITWEIGHTS")
  (make-package "NAVIGATION_FEATURES::INITWEIGHTS"))
(unless (find-package "NAVIGATION_FEATURES::INITWEIGHTSREQUEST")
  (make-package "NAVIGATION_FEATURES::INITWEIGHTSREQUEST"))
(unless (find-package "NAVIGATION_FEATURES::INITWEIGHTSRESPONSE")
  (make-package "NAVIGATION_FEATURES::INITWEIGHTSRESPONSE"))

(in-package "ROS")





(defclass navigation_features::InitWeightsRequest
  :super ros::object
  :slots (_random _normalize ))

(defmethod navigation_features::InitWeightsRequest
  (:init
   (&key
    ((:random __random) nil)
    ((:normalize __normalize) nil)
    )
   (send-super :init)
   (setq _random __random)
   (setq _normalize __normalize)
   self)
  (:random
   (&optional __random)
   (if __random (setq _random __random)) _random)
  (:normalize
   (&optional __normalize)
   (if __normalize (setq _normalize __normalize)) _normalize)
  (:serialization-length
   ()
   (+
    ;; bool _random
    1
    ;; bool _normalize
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _random
       (if _random (write-byte -1 s) (write-byte 0 s))
     ;; bool _normalize
       (if _normalize (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _random
     (setq _random (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _normalize
     (setq _normalize (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass navigation_features::InitWeightsResponse
  :super ros::object
  :slots (_weights ))

(defmethod navigation_features::InitWeightsResponse
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

(defclass navigation_features::InitWeights
  :super ros::object
  :slots ())

(setf (get navigation_features::InitWeights :md5sum-) "a974b2e5d8cf5299fc01afe16b877882")
(setf (get navigation_features::InitWeights :datatype-) "navigation_features/InitWeights")
(setf (get navigation_features::InitWeights :request) navigation_features::InitWeightsRequest)
(setf (get navigation_features::InitWeights :response) navigation_features::InitWeightsResponse)

(defmethod navigation_features::InitWeightsRequest
  (:response () (instance navigation_features::InitWeightsResponse :init)))

(setf (get navigation_features::InitWeightsRequest :md5sum-) "a974b2e5d8cf5299fc01afe16b877882")
(setf (get navigation_features::InitWeightsRequest :datatype-) "navigation_features/InitWeightsRequest")
(setf (get navigation_features::InitWeightsRequest :definition-)
      "bool random
bool normalize
---
float32[] weights

")

(setf (get navigation_features::InitWeightsResponse :md5sum-) "a974b2e5d8cf5299fc01afe16b877882")
(setf (get navigation_features::InitWeightsResponse :datatype-) "navigation_features/InitWeightsResponse")
(setf (get navigation_features::InitWeightsResponse :definition-)
      "bool random
bool normalize
---
float32[] weights

")



(provide :navigation_features/InitWeights "a974b2e5d8cf5299fc01afe16b877882")


