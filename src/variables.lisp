;;;; variables.lisp --- Variables used by the parser.ini system.
;;;;
;;;; Copyright (C) 2012, 2013 Jan Moringen
;;;;
;;;; Author: Jan Moringen <jmoringe@techfak.uni-bielefeld.de>

(cl:in-package #:parser.ini)

;;; Builder

(declaim (special *builder*))

(defvar *builder* nil
  "The builder object which should be used to construct the result
   objects of a successful parse.")

;;; Syntax variation selectors

(declaim (special *name-component-separator*
                  *assignment-operator*
                  *value-terminating-whitespace-expression*))

(defvar *name-component-separator* #\.
  "Controls the syntax for separating name components. The default
   is the character \".\".

   Note the value nil corresponds to \"no component separator\" which
   leads to names not being split into components.")

(defvar *assignment-operator* #\=
  "Controls the accepted assignment syntax. The default is the
   character \"=\".")

(defvar *value-terminating-whitespace-expression* :all
  "Controls which kinds of whitespace terminate option values. The
   default is :all which corresponds to any whitespace terminating the
   value of an option.

   For some values of this variable, quoting has to be used when
   whitespace in option values is required.")
