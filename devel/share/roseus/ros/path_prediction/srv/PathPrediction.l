;; Auto-generated. Do not edit!


(when (boundp 'path_prediction::PathPrediction)
  (if (not (find-package "PATH_PREDICTION"))
    (make-package "PATH_PREDICTION"))
  (shadow 'PathPrediction (find-package "PATH_PREDICTION")))
(unless (find-package "PATH_PREDICTION::PATHPREDICTION")
  (make-package "PATH_PREDICTION::PATHPREDICTION"))
(unless (find-package "PATH_PREDICTION::PATHPREDICTIONREQUEST")
  (make-package "PATH_PREDICTION::PATHPREDICTIONREQUEST"))
(unless (find-package "PATH_PREDICTION::PATHPREDICTIONRESPONSE")
  (make-package "PATH_PREDICTION::PATHPREDICTIONRESPONSE"))

(in-package "ROS")





(defclass path_prediction::PathPredictionRequest
  :super ros::object
  :slots (_input _input_rows _input_cols ))

(defmethod path_prediction::PathPredictionRequest
  (:init
   (&key
    ((:input __input) (make-array 0 :initial-element 0 :element-type :integer))
    ((:input_rows __input_rows) 0)
    ((:input_cols __input_cols) 0)
    )
   (send-super :init)
   (setq _input __input)
   (setq _input_rows (round __input_rows))
   (setq _input_cols (round __input_cols))
   self)
  (:input
   (&optional __input)
   (if __input (setq _input __input)) _input)
  (:input_rows
   (&optional __input_rows)
   (if __input_rows (setq _input_rows __input_rows)) _input_rows)
  (:input_cols
   (&optional __input_cols)
   (if __input_cols (setq _input_cols __input_cols)) _input_cols)
  (:serialization-length
   ()
   (+
    ;; int32[] _input
    (* 4    (length _input)) 4
    ;; int16 _input_rows
    2
    ;; int16 _input_cols
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _input
     (write-long (length _input) s)
     (dotimes (i (length _input))
       (write-long (elt _input i) s)
       )
     ;; int16 _input_rows
       (write-word _input_rows s)
     ;; int16 _input_cols
       (write-word _input_cols s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _input
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _input (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _input i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int16 _input_rows
     (setq _input_rows (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _input_cols
     (setq _input_cols (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass path_prediction::PathPredictionResponse
  :super ros::object
  :slots (_prediction _pred_rows _pred_cols ))

(defmethod path_prediction::PathPredictionResponse
  (:init
   (&key
    ((:prediction __prediction) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pred_rows __pred_rows) 0)
    ((:pred_cols __pred_cols) 0)
    )
   (send-super :init)
   (setq _prediction __prediction)
   (setq _pred_rows (round __pred_rows))
   (setq _pred_cols (round __pred_cols))
   self)
  (:prediction
   (&optional __prediction)
   (if __prediction (setq _prediction __prediction)) _prediction)
  (:pred_rows
   (&optional __pred_rows)
   (if __pred_rows (setq _pred_rows __pred_rows)) _pred_rows)
  (:pred_cols
   (&optional __pred_cols)
   (if __pred_cols (setq _pred_cols __pred_cols)) _pred_cols)
  (:serialization-length
   ()
   (+
    ;; float32[] _prediction
    (* 4    (length _prediction)) 4
    ;; uint8 _pred_rows
    1
    ;; uint8 _pred_cols
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _prediction
     (write-long (length _prediction) s)
     (dotimes (i (length _prediction))
       (sys::poke (elt _prediction i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8 _pred_rows
       (write-byte _pred_rows s)
     ;; uint8 _pred_cols
       (write-byte _pred_cols s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _prediction
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _prediction (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _prediction i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint8 _pred_rows
     (setq _pred_rows (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _pred_cols
     (setq _pred_cols (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass path_prediction::PathPrediction
  :super ros::object
  :slots ())

(setf (get path_prediction::PathPrediction :md5sum-) "81867dfe7d3311b753270178479e45b9")
(setf (get path_prediction::PathPrediction :datatype-) "path_prediction/PathPrediction")
(setf (get path_prediction::PathPrediction :request) path_prediction::PathPredictionRequest)
(setf (get path_prediction::PathPrediction :response) path_prediction::PathPredictionResponse)

(defmethod path_prediction::PathPredictionRequest
  (:response () (instance path_prediction::PathPredictionResponse :init)))

(setf (get path_prediction::PathPredictionRequest :md5sum-) "81867dfe7d3311b753270178479e45b9")
(setf (get path_prediction::PathPredictionRequest :datatype-) "path_prediction/PathPredictionRequest")
(setf (get path_prediction::PathPredictionRequest :definition-)
      "int32[] input
int16 input_rows
int16 input_cols
---
float32[] prediction
uint8 pred_rows
uint8 pred_cols

")

(setf (get path_prediction::PathPredictionResponse :md5sum-) "81867dfe7d3311b753270178479e45b9")
(setf (get path_prediction::PathPredictionResponse :datatype-) "path_prediction/PathPredictionResponse")
(setf (get path_prediction::PathPredictionResponse :definition-)
      "int32[] input
int16 input_rows
int16 input_cols
---
float32[] prediction
uint8 pred_rows
uint8 pred_cols

")



(provide :path_prediction/PathPrediction "81867dfe7d3311b753270178479e45b9")


