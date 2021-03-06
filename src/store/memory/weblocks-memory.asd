
;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-
(defpackage #:weblocks-memory-asd
  (:use :cl :asdf))

(in-package :weblocks-memory-asd)

(defsystem weblocks-memory
  :name "weblocks-memory"
  :maintainer "Olexiy Zamkoviy, Scott L. Burson"
  :author "Slava Akhmechet"
  :version "0.1.3"
  :licence "LLGPL"
  :description "A weblocks backend for memory (not backed on disk)."
  :depends-on (:metatilities :cl-ppcre :weblocks-stores)
  :components ((:file "memory-store")
               (:file "memory-utils"
                      :depends-on ("memory-store"))
               (:file "memory"
                      :depends-on ("memory-store" "memory-utils"))))

