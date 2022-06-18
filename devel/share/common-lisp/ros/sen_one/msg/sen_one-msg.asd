
(cl:in-package :asdf)

(defsystem "sen_one-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "dist" :depends-on ("_package_dist"))
    (:file "_package_dist" :depends-on ("_package"))
  ))