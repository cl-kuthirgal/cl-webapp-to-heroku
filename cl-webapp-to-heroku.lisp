;;;; cl-webapp-to-heroku.lisp

(in-package #:cl-webapp-to-heroku)

(defvar *acceptor* nil "the hunchentoot acceptor")

;; Set the directory to serve
;; (defparameter *path-to-www* (uiop:merge-pathnames* (uiop:parse-unix-namestring "./www/")))

(defun start-server (&optional (port 8080))
  (stop-server)
  (setf *acceptor* (make-instance 'hunchentoot:acceptor
                                  :port port
                                  :document-root (uiop:parse-unix-namestring "./www/"))) ;; 
  ;;(setf (hunchentoot:acceptor-document-root *acceptor*) *path-to-www*)  ;; if you include the option :document-root in the above expression, this line is not necessary anymore
  (hunchentoot:start *acceptor*))

(defun stop-server ()
  (when *acceptor*
    (hunchentoot:stop *acceptor*)
    (setf *acceptor* nil)))

;; Start the sever (by default, on port 8080)
(start-server)
