(defpackage #:example
  (:use :hunchentoot :cl-who :cl)
  (:export main))

(in-package #:example)

(define-easy-handler (greet :uri "/hello") (name)
  (with-html-output-to-string (s) (htm (:body (:h1 "hello, " (str name))))))

(export 'main)
(defun main ()
  (let* ((port (parse-integer (uiop:getenv "PORT")))
         (acceptor (make-instance
                    'easy-acceptor
                    :port port)))
    (start acceptor)
    (bt:join-thread
     (find (format nil "hunchentoot-listener-*:~A" port)
           (bt:all-threads)
           :key #'bt:thread-name
           :test #'string=))))
