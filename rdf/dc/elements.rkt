#lang racket/base

;;
;; Vocabulary: DCMI Metadata Terms -- Elements.
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

(define dc-prefix-string "dc")
(define dc-namespace-string "http://purl.org/dc/elements/1.1/")

(define dc: (string->namespace dc-namespace-string))

(define (nsmap-add-dc-elements map)
  (nsmap-set! map
              (string->prefix dc-prefix-string)
              (string->namespace dc-namespace-string)))

;; ================================================================================================
;; Name definitions
;; ================================================================================================

(define dc:contributor (make-nsname dc: "contributor"))
(define dc:coverage (make-nsname dc: "coverage"))
(define dc:creator (make-nsname dc: "creator"))
(define dc:date (make-nsname dc: "date"))
(define dc:description (make-nsname dc: "description"))
(define dc:format (make-nsname dc: "format"))
(define dc:identifier (make-nsname dc: "identifier"))
(define dc:language (make-nsname dc: "language"))
(define dc:publisher (make-nsname dc: "publisher"))
(define dc:relation (make-nsname dc: "relation"))
(define dc:rights (make-nsname dc: "rights"))
(define dc:source (make-nsname dc: "source"))
(define dc:subject (make-nsname dc: "subject"))
(define dc:title (make-nsname dc: "title"))
(define dc:type (make-nsname dc: "type"))
