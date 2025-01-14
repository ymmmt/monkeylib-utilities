;;
;; Copyright (c) 2005-2010, Peter Seibel. All rights reserved.
;;

(defpackage :monkeylib-utilities-system (:use :asdf :cl))
(in-package :monkeylib-utilities-system)

(defsystem monkeylib-utilities
  :name "monkeylib-utilities"
  :description "Peter Seibel's collection of 'utilities'."
  :components
  ((:file "packages")
   (:file "heap" :depends-on ("packages"))
   (:file "clos" :depends-on ("packages"))
   (:file "date" :depends-on ("packages" "with-time"))
   (:file "files" :depends-on ("packages"))
   (:file "lists" :depends-on ("packages"))
   (:file "symbols" :depends-on ("packages"))
   (:file "numbers" :depends-on ("packages"))
   (:file "math" :depends-on ("packages"))
   (:file "randomization" :depends-on ("packages"))
   #+allegro(:file "timer" :depends-on ("packages"))
   (:file "with-time" :depends-on ("packages")))
  :depends-on (:alexandria :split-sequence))
