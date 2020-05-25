
(cl:in-package :asdf)

(defsystem "gmm_sampling-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetApproachGMMProb" :depends-on ("_package_GetApproachGMMProb"))
    (:file "_package_GetApproachGMMProb" :depends-on ("_package"))
    (:file "GetApproachGMMProbs" :depends-on ("_package_GetApproachGMMProbs"))
    (:file "_package_GetApproachGMMProbs" :depends-on ("_package"))
    (:file "GetApproachGMMSamples" :depends-on ("_package_GetApproachGMMSamples"))
    (:file "_package_GetApproachGMMSamples" :depends-on ("_package"))
  ))