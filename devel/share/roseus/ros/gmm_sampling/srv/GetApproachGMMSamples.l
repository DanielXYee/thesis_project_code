;; Auto-generated. Do not edit!


(when (boundp 'gmm_sampling::GetApproachGMMSamples)
  (if (not (find-package "GMM_SAMPLING"))
    (make-package "GMM_SAMPLING"))
  (shadow 'GetApproachGMMSamples (find-package "GMM_SAMPLING")))
(unless (find-package "GMM_SAMPLING::GETAPPROACHGMMSAMPLES")
  (make-package "GMM_SAMPLING::GETAPPROACHGMMSAMPLES"))
(unless (find-package "GMM_SAMPLING::GETAPPROACHGMMSAMPLESREQUEST")
  (make-package "GMM_SAMPLING::GETAPPROACHGMMSAMPLESREQUEST"))
(unless (find-package "GMM_SAMPLING::GETAPPROACHGMMSAMPLESRESPONSE")
  (make-package "GMM_SAMPLING::GETAPPROACHGMMSAMPLESRESPONSE"))

(in-package "ROS")





(defclass gmm_sampling::GetApproachGMMSamplesRequest
  :super ros::object
  :slots (_person_orientation _num_samples ))

(defmethod gmm_sampling::GetApproachGMMSamplesRequest
  (:init
   (&key
    ((:person_orientation __person_orientation) 0.0)
    ((:num_samples __num_samples) 0)
    )
   (send-super :init)
   (setq _person_orientation (float __person_orientation))
   (setq _num_samples (round __num_samples))
   self)
  (:person_orientation
   (&optional __person_orientation)
   (if __person_orientation (setq _person_orientation __person_orientation)) _person_orientation)
  (:num_samples
   (&optional __num_samples)
   (if __num_samples (setq _num_samples __num_samples)) _num_samples)
  (:serialization-length
   ()
   (+
    ;; float32 _person_orientation
    4
    ;; int32 _num_samples
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _person_orientation
       (sys::poke _person_orientation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _num_samples
       (write-long _num_samples s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _person_orientation
     (setq _person_orientation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _num_samples
     (setq _num_samples (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gmm_sampling::GetApproachGMMSamplesResponse
  :super ros::object
  :slots (_distances _orientations ))

(defmethod gmm_sampling::GetApproachGMMSamplesResponse
  (:init
   (&key
    ((:distances __distances) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:orientations __orientations) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _distances __distances)
   (setq _orientations __orientations)
   self)
  (:distances
   (&optional __distances)
   (if __distances (setq _distances __distances)) _distances)
  (:orientations
   (&optional __orientations)
   (if __orientations (setq _orientations __orientations)) _orientations)
  (:serialization-length
   ()
   (+
    ;; float32[] _distances
    (* 4    (length _distances)) 4
    ;; float32[] _orientations
    (* 4    (length _orientations)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _distances
     (write-long (length _distances) s)
     (dotimes (i (length _distances))
       (sys::poke (elt _distances i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _orientations
     (write-long (length _orientations) s)
     (dotimes (i (length _orientations))
       (sys::poke (elt _orientations i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _distances
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distances (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _distances i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _orientations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _orientations (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _orientations i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass gmm_sampling::GetApproachGMMSamples
  :super ros::object
  :slots ())

(setf (get gmm_sampling::GetApproachGMMSamples :md5sum-) "39c3821b9d89c2c5ed582a1e164cc75d")
(setf (get gmm_sampling::GetApproachGMMSamples :datatype-) "gmm_sampling/GetApproachGMMSamples")
(setf (get gmm_sampling::GetApproachGMMSamples :request) gmm_sampling::GetApproachGMMSamplesRequest)
(setf (get gmm_sampling::GetApproachGMMSamples :response) gmm_sampling::GetApproachGMMSamplesResponse)

(defmethod gmm_sampling::GetApproachGMMSamplesRequest
  (:response () (instance gmm_sampling::GetApproachGMMSamplesResponse :init)))

(setf (get gmm_sampling::GetApproachGMMSamplesRequest :md5sum-) "39c3821b9d89c2c5ed582a1e164cc75d")
(setf (get gmm_sampling::GetApproachGMMSamplesRequest :datatype-) "gmm_sampling/GetApproachGMMSamplesRequest")
(setf (get gmm_sampling::GetApproachGMMSamplesRequest :definition-)
      "float32 person_orientation
int32 num_samples
---
float32[] distances
float32[] orientations

")

(setf (get gmm_sampling::GetApproachGMMSamplesResponse :md5sum-) "39c3821b9d89c2c5ed582a1e164cc75d")
(setf (get gmm_sampling::GetApproachGMMSamplesResponse :datatype-) "gmm_sampling/GetApproachGMMSamplesResponse")
(setf (get gmm_sampling::GetApproachGMMSamplesResponse :definition-)
      "float32 person_orientation
int32 num_samples
---
float32[] distances
float32[] orientations

")



(provide :gmm_sampling/GetApproachGMMSamples "39c3821b9d89c2c5ed582a1e164cc75d")


