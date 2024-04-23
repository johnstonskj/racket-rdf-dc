#lang info
(define collection "rdf-dc: RDF Dublin Core Vocabularies")
(define deps '("base" "rdf-core"))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/rdf-dc.scrbl" ())))
(define pkg-desc "RDF vocabularies for Dublin Core specifications.")
(define version "0.1.0")
(define pkg-authors '(johnstonskj))
(define license 'Apache-2.0)
