#lang racket/base

;;
;; Vocabulary: DCMI Type Vocabulary
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

(define dctype-prefix-string "dctype")
(define dctype-namespace-string "http://purl.org/dc/dcmitype/")

(define dctype: (string->namespace dctype-namespace-string))

(define (nsmap-add-dc-dctype map)
  (nsmap-set! map
              (string->prefix dctype-prefix-string)
              (string->namespace dctype-namespace-string)))

;; ================================================================================================
;; Name definitions
;; ================================================================================================

(define dctype:Collection (make-nsname dctype: "Collection"))
(define dctype:Dataset (make-nsname dctype: "Dataset"))
(define dctype:Event (make-nsname dctype: "Event"))
(define dctype:Image (make-nsname dctype: "Image"))
(define dctype:InteractiveResource (make-nsname dctype: "InteractiveResource"))
(define dctype:MovingImage (make-nsname dctype: "MovingImage"))
(define dctype:PhysicalObject (make-nsname dctype: "PhysicalObject"))
(define dctype:Service (make-nsname dctype: "Service"))
(define dctype:Software (make-nsname dctype: "Software"))
(define dctype:Sound (make-nsname dctype: "Sound"))
(define dctype:StillImage (make-nsname dctype: "StillImage"))
(define dctype:Text (make-nsname dctype: "Text"))
