;;;; cl-webapp-to-heroku.lisp

(in-package #:cl-webapp-to-heroku)

(defvar *acceptor* nil "the hunchentoot acceptor")

(defun start-server (&optional (port 8080))
  (stop-server)
  (setf *acceptor* (make-instance 'hunchentoot:acceptor
                                  :port port
                                  :document-root (uiop:parse-unix-namestring "./www/")))
  (hunchentoot:start *acceptor*))

(defun stop-server ()
  (when *acceptor*
    (hunchentoot:stop *acceptor*)
    (setf *acceptor* nil)))

;; Start the sever (by default, on port 8080)
(start-server)
