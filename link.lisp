#+darwin
(bodge-blobs-support:link-system-foreign-libraries
 :base-blobs (asdf:system-relative-pathname :ode-blob #+x86-64 "x86_64" #+x86 "x86"
                                                      #-(or x86-64 x86)
                                                      (error "Unsupported architecture")))
