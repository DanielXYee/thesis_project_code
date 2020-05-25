
(cl:in-package :asdf)

(defsystem "path_prediction-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PathPrediction" :depends-on ("_package_PathPrediction"))
    (:file "_package_PathPrediction" :depends-on ("_package"))
  ))