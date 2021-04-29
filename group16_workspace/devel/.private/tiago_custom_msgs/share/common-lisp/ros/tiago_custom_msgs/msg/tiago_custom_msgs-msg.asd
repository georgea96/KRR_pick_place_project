
(cl:in-package :asdf)

(defsystem "tiago_custom_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PickAction" :depends-on ("_package_PickAction"))
    (:file "_package_PickAction" :depends-on ("_package"))
    (:file "PickActionFeedback" :depends-on ("_package_PickActionFeedback"))
    (:file "_package_PickActionFeedback" :depends-on ("_package"))
    (:file "PickActionGoal" :depends-on ("_package_PickActionGoal"))
    (:file "_package_PickActionGoal" :depends-on ("_package"))
    (:file "PickActionResult" :depends-on ("_package_PickActionResult"))
    (:file "_package_PickActionResult" :depends-on ("_package"))
    (:file "PickFeedback" :depends-on ("_package_PickFeedback"))
    (:file "_package_PickFeedback" :depends-on ("_package"))
    (:file "PickGoal" :depends-on ("_package_PickGoal"))
    (:file "_package_PickGoal" :depends-on ("_package"))
    (:file "PickResult" :depends-on ("_package_PickResult"))
    (:file "_package_PickResult" :depends-on ("_package"))
  ))