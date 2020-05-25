;; Auto-generated. Do not edit!


(when (boundp 'gmm_sampling::GetApproachGMMProb)
  (if (not (find-package "GMM_SAMPLING"))
    (make-package "GMM_SAMPLING"))
  (shadow 'GetApproachGMMProb (find-package "GMM_SAMPLING")))
(unless (find-package "GMM_SAMPLING::GETAPPROACHGMMPROB")
  (make-package "GMM_SAMPLING::GETAPPROACHGMMPROB"))
(unless (find-package "GMM_SAMPLING::GETAPPROACHGMMPROBREQUEST")
  (make-package "GMM_SAMPLING::GETAPPROACHGMMPROBREQUEST"))
(unless (find-package "GMM_SAMPLING::GETAPPROACHGMMPROBRESPONSE")
  (make-package "GMM_SAMPLING::GETAPPROACHGMMPROBRESPONSE"))

(in-package "ROS")





(defclass gmm_sampling::GetApproachGMMProbRequest
  :super ros::object
  :slots (_x _y _person_orientation ))

(defmethod gmm_sampling::GetApproachGMMProbRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:person_orientation __person_orientation) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
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
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _person_orientation
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
     ;; float32 _person_orientation
       (sys::poke _person_orientation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _person_orientation
     (setq _person_orientation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gmm_sampling::GetApproachGMMProbResponse
  :super ros::object
  :slots (_prob ))

(defmethod gmm_sampling::GetApproachGMMProbResponse
  (:init
   (&key
    ((:prob __prob) 0.0)
    )
   (send-super :init)
   (setq _prob (float __prob))
   self)
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:serialization-length
   ()
   (+
    ;; float32 _prob
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _prob
       (sys::poke _prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _prob
     (setq _prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gmm_sampling::GetApproachGMMProb
  :super ros::object
  :slots ())

(setf (get gmm_sampling::GetApproachGMMProb :md5sum-) "ccd2986d40d561ab74fba4a6bdb71848")
(setf (get gmm_sampling::GetApproachGMMProb :datatype-) "gmm_sampling/GetApproachGMMProb")
(setf (get gmm_sampling::GetApproachGMMProb :request) gmm_sampling::GetApproachGMMProbRequest)
(setf (get gmm_sampling::GetApproachGMMProb :response) gmm_sampling::GetApproachGMMProbResponse)

(defmethod gmm_sampling::GetApproachGMMProbRequest
  (:response () (instance gmm_sampling::GetApproachGMMProbResponse :init)))

(setf (get gmm_sampling::GetApproachGMMProbRequest :md5sum-) "ccd2986d40d561ab74fba4a6bdb71848")
(setf (get gmm_sampling::GetApproachGMMProbRequest :datatype-) "gmm_sampling/GetApproachGMMProbRequest")
(setf (get gmm_sampling::GetApproachGMMProbRequest :definition-)
      "float32 x
float32 y
float32 person_orientation
---
float32 prob

")

(setf (get gmm_sampling::GetApproachGMMProbResponse :md5sum-) "ccd2986d40d561ab74fba4a6bdb71848")
(setf (get gmm_sampling::GetApproachGMMProbResponse :datatype-) "gmm_sampling/GetApproachGMMProbResponse")
(setf (get gmm_sampling::GetApproachGMMProbResponse :definition-)
      "float32 x
float32 y
float32 person_orientation
---
float32 prob

")



(provide :gmm_sampling/GetApproachGMMProb "ccd2986d40d561ab74fba4a6bdb71848")


