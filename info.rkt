#lang info
(define collection 'multi)
(define deps '("base" "rdf-core"))
(define build-deps '("scribble-lib" "sandbox-lib" "racket-doc"))
(define scribblings '(("rdf/dc/scribblings/rdf-dc.scrbl" (multi-page) (library))))
(define test-omit-paths '("rdf/dc/scribblings"))
(define license 'Apache-2.0)
