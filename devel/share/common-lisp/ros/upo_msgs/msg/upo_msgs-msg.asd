
(cl:in-package :asdf)

(defsystem "upo_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PersonGoalArrayUPO" :depends-on ("_package_PersonGoalArrayUPO"))
    (:file "_package_PersonGoalArrayUPO" :depends-on ("_package"))
    (:file "PersonGoalUPO" :depends-on ("_package_PersonGoalUPO"))
    (:file "_package_PersonGoalUPO" :depends-on ("_package"))
    (:file "PersonPoseArrayUPO" :depends-on ("_package_PersonPoseArrayUPO"))
    (:file "_package_PersonPoseArrayUPO" :depends-on ("_package"))
    (:file "PersonPoseUPO" :depends-on ("_package_PersonPoseUPO"))
    (:file "_package_PersonPoseUPO" :depends-on ("_package"))
  ))