#lang racket/base

;;
;; Vocabulary: DCMI Metadata Terms -- Elements.
;;
;; Specification:    <https://www.dublincore.org/specifications/dublin-core/dcmi-terms/>
;; Last Date:        2020-01-20
;;
;; Support status: complete
;;

(require (only-in rdf/core/name
                  string->local-name)
         (only-in rdf/core/nsmap
                  string->prefix
                  nsmap-set!)
         (only-in rdf/core/nsname
                  make-nsname)
         (only-in rdf/core/resource
                  string->resource))

(provide (all-defined-out))

;; ================================================================================================
;; Namespace definition
;; ================================================================================================

(define dc-prefix-string "dc")
(define dc-namespace-string "http://purl.org/dc/elements/1.1/")

(define dc: (string->resource dc-namespace-string))

(define (nsmap-add-dc-elements map)
  (nsmap-set! map
              (string->prefix dc-prefix-string)
              (string->resource dc-namespace-string)))

;; ================================================================================================
;; Name definitions
;; ================================================================================================

(define dc:contributor
  (make-nsname dc: (string->local-name "contributor")))
(define dc:coverage
  (make-nsname dc: (string->local-name "coverage")))
(define dc:creator
  (make-nsname dc: (string->local-name "creator")))
(define dc:date
  (make-nsname dc: (string->local-name "date")))
(define dc:description
  (make-nsname dc: (string->local-name "description")))
(define dc:format
  (make-nsname dc: (string->local-name "format")))
(define dc:identifier
  (make-nsname dc: (string->local-name "identifier")))
(define dc:language
  (make-nsname dc: (string->local-name "language")))
(define dc:publisher
  (make-nsname dc: (string->local-name "publisher")))
(define dc:relation
  (make-nsname dc: (string->local-name "relation")))
(define dc:rights
  (make-nsname dc: (string->local-name "rights")))
(define dc:source
  (make-nsname dc: (string->local-name "source")))
(define dc:subject
  (make-nsname dc: (string->local-name "subject")))
(define dc:title
  (make-nsname dc: (string->local-name "title")))
(define dc:type
  (make-nsname dc: (string->local-name "type")))
