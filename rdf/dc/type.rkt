#lang racket/base

;;
;; Vocabulary: DCMI Type Vocabulary
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

(define dctype-prefix-string "dctype")
(define dctype-namespace-string "http://purl.org/dc/dcmitype/")

(define dctype: (string->namespace dctype-namespace-string))

(define (nsmap-add-dc-terms map)
  (nsmap-set! map
              dctype-prefix-string
              (string->namespace dctype-namespace-string)))

;; ================================================================================================
;; Name definitions
;; ================================================================================================

(define dctype:Collection (namespace+name->nsname dctype: "Collection"))
(define dctype:Dataset (namespace+name->nsname dctype: "Dataset"))
(define dctype:Event (namespace+name->nsname dctype: "Event"))
(define dctype:Image (namespace+name->nsname dctype: "Image"))
(define dctype:InteractiveResource (namespace+name->nsname dctype: "InteractiveResource"))
(define dctype:MovingImage (namespace+name->nsname dctype: "MovingImage"))
(define dctype:PhysicalObject (namespace+name->nsname dctype: "PhysicalObject"))
(define dctype:Service (namespace+name->nsname dctype: "Service"))
(define dctype:Software (namespace+name->nsname dctype: "Software"))
(define dctype:Sound (namespace+name->nsname dctype: "Sound"))
(define dctype:StillImage (namespace+name->nsname dctype: "StillImage"))
(define dctype:Text (namespace+name->nsname dctype: "Text"))
