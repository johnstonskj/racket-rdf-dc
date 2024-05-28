#lang racket/base

;;
;; Vocabulary: DCMI Type Vocabulary
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

(define dctype-prefix-string "dctype")
(define dctype-namespace-string "http://purl.org/dc/dcmitype/")

(define dctype: (string->resource dctype-namespace-string))

(define (nsmap-add-dc-dctype map)
  (nsmap-set! map
              (string->prefix dctype-prefix-string)
              (string->resource dctype-namespace-string)))

;; ================================================================================================
;; Name definitions
;; ================================================================================================

(define dctype:Collection
  (make-nsname dctype: (string->local-name "Collection")))
(define dctype:Dataset
  (make-nsname dctype: (string->local-name "Dataset")))
(define dctype:Event
  (make-nsname dctype: (string->local-name "Event")))
(define dctype:Image
  (make-nsname dctype: (string->local-name "Image")))
(define dctype:InteractiveResource
  (make-nsname dctype: (string->local-name "InteractiveResource")))
(define dctype:MovingImage
  (make-nsname dctype: (string->local-name "MovingImage")))
(define dctype:PhysicalObject
  (make-nsname dctype: (string->local-name "PhysicalObject")))
(define dctype:Service
  (make-nsname dctype: (string->local-name "Service")))
(define dctype:Software
  (make-nsname dctype: (string->local-name "Software")))
(define dctype:Sound
  (make-nsname dctype: (string->local-name "Sound")))
(define dctype:StillImage
  (make-nsname dctype: (string->local-name "StillImage")))
(define dctype:Text
  (make-nsname dctype: (string->local-name "Text")))
