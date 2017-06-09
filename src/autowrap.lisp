;;;; autowrap.lisp
;;;;
;;;; Copyright (c) 2016 ArrayFire
;;;; Copyright (c) 2016 Justin Patera <justin.patera@level3inspection.com>

(in-package :arrayfire)

(autowrap:c-include
 '(arrayfire-lisp autowrap-spec "ArrayFire.h")
  :accessor-package :arrayfire-ffi.accessors
  :function-package :arrayfire-ffi.functions
  :spec-path '(arrayfire-lisp autowrap-spec)
  ; I may need to exclude, ot include other sources... IDK yet.
  :exclude-sources ("/usr/local/lib/clang/([^/]*)/include/(?!stddef.h)"
                    "/usr/include/"
                    "/usr/include/arm-linux-gnueabihf"
                    "/usr/include/X11/")
  :include-sources ("arrayfire")
  :no-accessors nil ;; change this to t maybe later
  :release-p nil)   ;; change this to t before we make an actual release
