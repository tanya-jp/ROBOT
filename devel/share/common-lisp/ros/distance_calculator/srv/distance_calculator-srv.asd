
(cl:in-package :asdf)

(defsystem "distance_calculator-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetDistance" :depends-on ("_package_GetDistance"))
    (:file "_package_GetDistance" :depends-on ("_package"))
  ))