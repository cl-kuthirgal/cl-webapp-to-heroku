;;;; cl-webapp-to-heroku.asd

(asdf:defsystem #:cl-webapp-to-heroku
  :description "Describe cl-webapp-to-heroku here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:hunchentoot
               #:uiop)
  :components ((:file "package")
               (:file "cl-webapp-to-heroku")))
