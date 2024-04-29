#lang racket/base

;;
;; Vocabulary: Terms for vocabulary description
;;
;; Specification:    <https://www.dublincore.org/specifications/dublin-core/dcmi-terms/>
;; Last Date:        2020-01-20
;;
;; Support status: complete
;;

(require (only-in rdf/core/namespace
                  string->namespace
                  make-nsname)
         (only-in rdf/core/nsmap
                  string->prefix
                  nsmap-set!))

(provide (all-defined-out))

;; ================================================================================================
;; Namespace definition
;; ================================================================================================

(define dcam-prefix-string "dcam!")
(define dcam-namespace-string "http://purl.org/dc/dcam/")

(define dcam: (string->namespace dcam-namespace-string))

(define (nsmap-add-dc-dcam map)
  (nsmap-set! map
              (string->prefix dcam-prefix-string)
              (string->namespace dcam-namespace-string)))

;; ================================================================================================
;; Name definitions
;; ================================================================================================

(define dcam:domainIncludes (make-nsname dcam: "domainIncludes"))
(define dcam:memberOf (make-nsname dcam: "memberOf"))
(define dcam:rangeIncludes (make-nsname dcam: "rangeIncludes"))
(define dcam:VocabularyEncodingScheme (make-nsname dcam: "VocabularyEncodingScheme"))
