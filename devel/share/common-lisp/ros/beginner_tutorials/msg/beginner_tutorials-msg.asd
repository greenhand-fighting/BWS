
(cl:in-package :asdf)

(defsystem "beginner_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "action_expect_utility_msg" :depends-on ("_package_action_expect_utility_msg"))
    (:file "_package_action_expect_utility_msg" :depends-on ("_package"))
    (:file "egoinfo" :depends-on ("_package_egoinfo"))
    (:file "_package_egoinfo" :depends-on ("_package"))
  ))