
(cl:in-package :asdf)

(defsystem "upo_navigation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "FeatureCounts" :depends-on ("_package_FeatureCounts"))
    (:file "_package_FeatureCounts" :depends-on ("_package"))
    (:file "PointCosts" :depends-on ("_package_PointCosts"))
    (:file "_package_PointCosts" :depends-on ("_package"))
    (:file "SetWeights" :depends-on ("_package_SetWeights"))
    (:file "_package_SetWeights" :depends-on ("_package"))
  ))