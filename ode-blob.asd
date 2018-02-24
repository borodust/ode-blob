(asdf:defsystem ode-blob
  :author "Pavel Korolev"
  :description "Foreign library collection of ODE 3d physics library"
  :license "MIT"
  :defsystem-depends-on (:bodge-blobs-support)
  :class :bodge-blob-system
  :depends-on (base-blobs)
  :libraries (((:darwin :x86-64) "libode.dylib.bodged" "x86_64/")
              ((:darwin :x86) "libode.dylib.bodged" "x86/")
              ((:unix (:not :darwin) :x86-64) "libode.so.bodged" "x86_64/")
              ((:unix (:not :darwin) :x86) "libode.so.bodged" "x86/")
              ((:windows :x86-64) "libode.dll.bodged" "x86_64/")
              ((:windows :x86) "libode.dll.bodged" "x86/"))
    :perform (asdf:load-op :before (o c)
                         #+darwin
                         (uiop:symbol-call :bodge-blobs-support 'link-system-foreign-libraries
                                           :ode-blob #+x86 "x86/" #+x86-64 "x86_64/")))
