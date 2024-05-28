#lang racket/base

;;
;; Vocabulary: Terms for vocabulary description
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

(define dcam-prefix-string "dcam!")
(define dcam-namespace-string "http://purl.org/dc/dcam/")

(define dcam: (string->resource dcam-namespace-string))

(define (nsmap-add-dc-dcam map)
  (nsmap-set! map
              (string->prefix dcam-prefix-string)
              (string->resource dcam-namespace-string)))

;; ================================================================================================
;; Name definitions
;; ================================================================================================

(define dcam:domainIncludes
  (make-nsname dcam: (string->local-name "domainIncludes")))
(define dcam:memberOf
  (make-nsname dcam: (string->local-name "memberOf")))
(define dcam:rangeIncludes
  (make-nsname dcam: (string->local-name "rangeIncludes")))
(define dcam:VocabularyEncodingScheme
  (make-nsname dcam: (string->local-name "VocabularyEncodingScheme")))
