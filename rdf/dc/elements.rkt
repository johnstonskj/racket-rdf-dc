#lang racket/base

;;
;; Vocabulary: DCMI Metadata Terms -- Elements.
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

(define dc-prefix-string "dc")
(define dc-namespace-string "http://purl.org/dc/elements/1.1/")

(define dc: (string->namespace dc-namespace-string))

(define (nsmap-add-dc-elements map)
  (nsmap-set! map
              dc-prefix-string
              (string->namespace dc-namespace-string)))

;; ================================================================================================
;; Name definitions
;; ================================================================================================

(define dc:contributor (namespace+name->nsname dc: "contributor"))
(define dc:coverage (namespace+name->nsname dc: "coverage"))
(define dc:creator (namespace+name->nsname dc: "creator"))
(define dc:date (namespace+name->nsname dc: "date"))
(define dc:description (namespace+name->nsname dc: "description"))
(define dc:format (namespace+name->nsname dc: "format"))
(define dc:identifier (namespace+name->nsname dc: "identifier"))
(define dc:language (namespace+name->nsname dc: "language"))
(define dc:publisher (namespace+name->nsname dc: "publisher"))
(define dc:relation (namespace+name->nsname dc: "relation"))
(define dc:rights (namespace+name->nsname dc: "rights"))
(define dc:source (namespace+name->nsname dc: "source"))
(define dc:subject (namespace+name->nsname dc: "subject"))
(define dc:title (namespace+name->nsname dc: "title"))
(define dc:type (namespace+name->nsname dc: "type"))
