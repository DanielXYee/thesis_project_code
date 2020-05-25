
(cl:in-package :asdf)

(defsystem "upo_social_layer-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Cost" :depends-on ("_package_Cost"))
    (:file "_package_Cost" :depends-on ("_package"))
    (:file "Features" :depends-on ("_package_Features"))
    (:file "_package_Features" :depends-on ("_package"))
    (:file "SetDemoPath" :depends-on ("_package_SetDemoPath"))
    (:file "_package_SetDemoPath" :depends-on ("_package"))
    (:file "SetGoal" :depends-on ("_package_SetGoal"))
    (:file "_package_SetGoal" :depends-on ("_package"))
  ))