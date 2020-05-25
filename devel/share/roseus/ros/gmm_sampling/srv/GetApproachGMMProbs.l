;; Auto-generated. Do not edit!


(when (boundp 'gmm_sampling::GetApproachGMMProbs)
  (if (not (find-package "GMM_SAMPLING"))
    (make-package "GMM_SAMPLING"))
  (shadow 'GetApproachGMMProbs (find-package "GMM_SAMPLING")))
(unless (find-package "GMM_SAMPLING::GETAPPROACHGMMPROBS")
  (make-package "GMM_SAMPLING::GETAPPROACHGMMPROBS"))
(unless (find-package "GMM_SAMPLING::GETAPPROACHGMMPROBSREQUEST")
  (make-package "GMM_SAMPLING::GETAPPROACHGMMPROBSREQUEST"))
(unless (find-package "GMM_SAMPLING::GETAPPROACHGMMPROBSRESPONSE")
  (make-package "GMM_SAMPLING::GETAPPROACHGMMPROBSRESPONSE"))

(in-package "ROS")





(defclass gmm_sampling::GetApproachGMMProbsRequest
  :super ros::object
  :slots (_x _y _person_orientation ))

(defmethod gmm_sampling::GetApproachGMMProbsRequest
  (:init
   (&key
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:person_orientation __person_orientation) 0.0)
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _person_orientation (float __person_orientation))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:person_orientation
   (&optional __person_orientation)
   (if __person_orientation (setq _person_orientation __person_orientation)) _person_orientation)
  (:serialization-length
   ()
   (+
    ;; float32[] _x
    (* 4    (length _x)) 4
    ;; float32[] _y
    (* 4    (length _y)) 4
    ;; float32 _person_orientation
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _person_orientation
       (sys::poke _person_orientation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _person_orientation
     (setq _person_orientation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gmm_sampling::GetApproachGMMProbsResponse
  :super ros::object
  :slots (_probs ))

(defmethod gmm_sampling::GetApproachGMMProbsResponse
  (:init
   (&key
    ((:probs __probs) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _probs __probs)
   self)
  (:probs
   (&optional __probs)
   (if __probs (setq _probs __probs)) _probs)
  (:serialization-length
   ()
   (+
    ;; float32[] _probs
    (* 4    (length _probs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _probs
     (write-long (length _probs) s)
     (dotimes (i (length _probs))
       (sys::poke (elt _probs i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _probs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _probs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _probs i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass gmm_sampling::GetApproachGMMProbs
  :super ros::object
  :slots ())

(setf (get gmm_sampling::GetApproachGMMProbs :md5sum-) "7d2e9fd8df330e05a0d7f3f45a2a580e")
(setf (get gmm_sampling::GetApproachGMMProbs :datatype-) "gmm_sampling/GetApproachGMMProbs")
(setf (get gmm_sampling::GetApproachGMMProbs :request) gmm_sampling::GetApproachGMMProbsRequest)
(setf (get gmm_sampling::GetApproachGMMProbs :response) gmm_sampling::GetApproachGMMProbsResponse)

(defmethod gmm_sampling::GetApproachGMMProbsRequest
  (:response () (instance gmm_sampling::GetApproachGMMProbsResponse :init)))

(setf (get gmm_sampling::GetApproachGMMProbsRequest :md5sum-) "7d2e9fd8df330e05a0d7f3f45a2a580e")
(setf (get gmm_sampling::GetApproachGMMProbsRequest :datatype-) "gmm_sampling/GetApproachGMMProbsRequest")
(setf (get gmm_sampling::GetApproachGMMProbsRequest :definition-)
      "float32[] x
float32[] y
float32 person_orientation
---
float32[] probs

")

(setf (get gmm_sampling::GetApproachGMMProbsResponse :md5sum-) "7d2e9fd8df330e05a0d7f3f45a2a580e")
(setf (get gmm_sampling::GetApproachGMMProbsResponse :datatype-) "gmm_sampling/GetApproachGMMProbsResponse")
(setf (get gmm_sampling::GetApproachGMMProbsResponse :definition-)
      "float32[] x
float32[] y
float32 person_orientation
---
float32[] probs

")



(provide :gmm_sampling/GetApproachGMMProbs "7d2e9fd8df330e05a0d7f3f45a2a580e")


