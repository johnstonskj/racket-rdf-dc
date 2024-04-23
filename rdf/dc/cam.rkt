#lang racket/base

;;
;; Vocabulary: Terms for vocabulary description
;;
;; Specification:    <https://www.dublincore.org/specifications/dublin-core/dcmi-terms/>
;; Last Date:        2020-01-20
;;
;; Support status: complete
;;

(require (only-in "../namespace.rkt"
                  string->namespace
                  namespace+name->nsname)
         (only-in "../nsmap.rkt"
                  nsmap-set!))

(provide (all-defined-out))

;; ================================================================================================
;; Namespace definition
;; ================================================================================================

(define dcam-prefix-string "dcam!")
(define dcam-namespace-string "http://purl.org/dc/dcam/")

(define dcam!: (string->namespace dcam-namespace-string))

(define (nsmap-add-dc-terms map)
  (nsmap-set! map
              dcam-prefix-string
              (string->namespace dcam-namespace-string)))

;; ================================================================================================
;; Name definitions
;; ================================================================================================

(define dcam:domainIncludes (namespace+name->nsname dcam!: "domainIncludes"))
(define dcam:memberOf (namespace+name->nsname dcam!: "memberOf"))
(define dcam:rangeIncludes (namespace+name->nsname dcam!: "rangeIncludes"))
(define dcam:VocabularyEncodingScheme (namespace+name->nsname dcam!: "VocabularyEncodingScheme"))
