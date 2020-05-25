
(cl:in-package :asdf)

(defsystem "navigation_features-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :upo_msgs-msg
)
  :components ((:file "_package")
    (:file "GetFeatureCount" :depends-on ("_package_GetFeatureCount"))
    (:file "_package_GetFeatureCount" :depends-on ("_package"))
    (:file "InitWeights" :depends-on ("_package_InitWeights"))
    (:file "_package_InitWeights" :depends-on ("_package"))
    (:file "PoseValid" :depends-on ("_package_PoseValid"))
    (:file "_package_PoseValid" :depends-on ("_package"))
    (:file "SetLossCost" :depends-on ("_package_SetLossCost"))
    (:file "_package_SetLossCost" :depends-on ("_package"))
    (:file "SetScenario" :depends-on ("_package_SetScenario"))
    (:file "_package_SetScenario" :depends-on ("_package"))
    (:file "SetWeights" :depends-on ("_package_SetWeights"))
    (:file "_package_SetWeights" :depends-on ("_package"))
  ))