#lang racket/base

;;
;; Vocabulary: DCMI Metadata Terms -- Terms
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

(define dcterms-prefix-string "dcterms")
(define dcterms-namespace-string "http://purl.org/dc/terms/")

(define dcterms: (string->namespace dcterms-namespace-string))

(define (nsmap-add-dc-terms map)
  (nsmap-set! map
              dcterms-prefix-string
              (string->namespace dcterms-namespace-string)))

;; ================================================================================================
;; Name definitions
;; ================================================================================================

(define dcterms:abstract (namespace+name->nsname dcterms: "abstract"))
(define dcterms:accessRights (namespace+name->nsname dcterms: "accessRights"))
(define dcterms:accrualMethod (namespace+name->nsname dcterms: "accrualMethod"))
(define dcterms:accrualPeriodicity (namespace+name->nsname dcterms: "accrualPeriodicity"))
(define dcterms:accrualPolicy (namespace+name->nsname dcterms: "accrualPolicy"))
(define dcterms:alternative (namespace+name->nsname dcterms: "alternative"))
(define dcterms:audience (namespace+name->nsname dcterms: "audience"))
(define dcterms:available (namespace+name->nsname dcterms: "available"))
(define dcterms:bibliographicCitation (namespace+name->nsname dcterms: "bibliographicCitation"))
(define dcterms:conformsTo (namespace+name->nsname dcterms: "conformsTo"))
(define dcterms:contributor (namespace+name->nsname dcterms: "contributor"))
(define dcterms:coverage (namespace+name->nsname dcterms: "coverage"))
(define dcterms:creator (namespace+name->nsname dcterms: "creator"))
(define dcterms:date (namespace+name->nsname dcterms: "date"))
(define dcterms:dateCopyright (namespace+name->nsname dcterms: "dateAccepted"))
(define dcterms:date (namespace+name->nsname dcterms: "dateCopyright"))
(define dcterms:dateSubmitted (namespace+name->nsname dcterms: "dateSubmitted"))
(define dcterms:description (namespace+name->nsname dcterms: "description"))
(define dcterms:educationLevel (namespace+name->nsname dcterms: "educationLevel"))
(define dcterms:extent (namespace+name->nsname dcterms: "extent"))
(define dcterms:format (namespace+name->nsname dcterms: "format"))
(define dcterms:hasFormat (namespace+name->nsname dcterms: "hasFormat"))
(define dcterms:hasPart (namespace+name->nsname dcterms: "hasPart"))
(define dcterms:hasVersion (namespace+name->nsname dcterms: "hasVersion"))
(define dcterms:identifier (namespace+name->nsname dcterms: "identifier"))
(define dcterms:instructionalMethod (namespace+name->nsname dcterms: "instructionalMethod"))
(define dcterms:isFormatOf (namespace+name->nsname dcterms: "isFormatOf"))
(define dcterms:isPartOf (namespace+name->nsname dcterms: "isPartOf"))
(define dcterms:isReferencedBy (namespace+name->nsname dcterms: "isReferencedBy"))
(define dcterms:isReplacedBy (namespace+name->nsname dcterms: "isReplacedBy"))
(define dcterms:isRequiredBy (namespace+name->nsname dcterms: "isRequiredBy"))
(define dcterms:issued (namespace+name->nsname dcterms: "issued"))
(define dcterms:isVersionOf (namespace+name->nsname dcterms: "isVersionOf"))
(define dcterms:language (namespace+name->nsname dcterms: "language"))
(define dcterms:mediator (namespace+name->nsname dcterms: "mediator"))
(define dcterms:medium (namespace+name->nsname dcterms: "medium"))
(define dcterms:modified (namespace+name->nsname dcterms: "modified"))
(define dcterms:provenance (namespace+name->nsname dcterms: "provenance"))
(define dcterms:publisher (namespace+name->nsname dcterms: "publisher"))
(define dcterms:references (namespace+name->nsname dcterms: "references"))
(define dcterms:relation (namespace+name->nsname dcterms: "relation"))
(define dcterms:replaces (namespace+name->nsname dcterms: "replaces"))
(define dcterms:requires (namespace+name->nsname dcterms: "requires"))
(define dcterms:rights (namespace+name->nsname dcterms: "rights"))
(define dcterms:rightsHolder (namespace+name->nsname dcterms: "rightsHolder"))
(define dcterms:source (namespace+name->nsname dcterms: "source"))
(define dcterms:spatial (namespace+name->nsname dcterms: "spatial"))
(define dcterms:subject (namespace+name->nsname dcterms: "subject"))
(define dcterms:tableOfContents (namespace+name->nsname dcterms: "tableOfContents"))
(define dcterms:temporal (namespace+name->nsname dcterms: "temporal"))
(define dcterms:title (namespace+name->nsname dcterms: "title"))
(define dcterms:type (namespace+name->nsname dcterms: "type"))
(define dcterms:valid (namespace+name->nsname dcterms: "valid"))

;; ================================================================================================
;; Name definitions -- Vocabulary Encoding Schemes
;; ================================================================================================

(define dcterms:DCMIType (namespace+name->nsname dcterms: "DCMIType"))
(define dcterms:DDC (namespace+name->nsname dcterms: "DDC"))
(define dcterms:IMT (namespace+name->nsname dcterms: "IMT"))
(define dcterms:LCC (namespace+name->nsname dcterms: "LCC"))
(define dcterms:LCSH (namespace+name->nsname dcterms: "LCSH"))
(define dcterms:MESH (namespace+name->nsname dcterms: "MESH"))
(define dcterms:NLM (namespace+name->nsname dcterms: "NLM"))
(define dcterms:TGN (namespace+name->nsname dcterms: "TGN"))
(define dcterms:UDC (namespace+name->nsname dcterms: "UDC"))

;; ================================================================================================
;; Name definitions -- Syntax Encoding Schemes
;; ================================================================================================

(define dcterms:Box (namespace+name->nsname dcterms: "Box"))
(define dcterms:ISO3166 (namespace+name->nsname dcterms: "ISO3166"))
(define dcterms:ISO639-2 (namespace+name->nsname dcterms: "ISO639-2"))
(define dcterms:ISO639-3 (namespace+name->nsname dcterms: "ISO639-3"))
(define dcterms:Period (namespace+name->nsname dcterms: "Period"))
(define dcterms:Point (namespace+name->nsname dcterms: "Point"))
(define dcterms:RFC1766 (namespace+name->nsname dcterms: "RFC1766"))
(define dcterms:RFC3066 (namespace+name->nsname dcterms: "RFC3066"))
(define dcterms:RFC4646 (namespace+name->nsname dcterms: "RFC4646"))
(define dcterms:RFC5646 (namespace+name->nsname dcterms: "RFC5646"))
(define dcterms:URI (namespace+name->nsname dcterms: "URI"))
(define dcterms:W3CDTF (namespace+name->nsname dcterms: "W3CDTF"))

;; ================================================================================================
;; Name definitions -- Classes
;; ================================================================================================

(define dcterms:Box (namespace+name->nsname dcterms: "Agent"))
(define dcterms:Box (namespace+name->nsname dcterms: "AgentClass"))
(define dcterms:Box (namespace+name->nsname dcterms: "BibliographicResource"))
(define dcterms:Box (namespace+name->nsname dcterms: "FileFormat"))
(define dcterms:Box (namespace+name->nsname dcterms: "Frequency"))
(define dcterms:Box (namespace+name->nsname dcterms: "Jurisdiction"))
(define dcterms:Box (namespace+name->nsname dcterms: "LicenseDocument"))
(define dcterms:Box (namespace+name->nsname dcterms: "LinguisticSystem"))
(define dcterms:Box (namespace+name->nsname dcterms: "Location"))
(define dcterms:Box (namespace+name->nsname dcterms: "LocationPeriodOrJurisdiction"))
(define dcterms:Box (namespace+name->nsname dcterms: "MediaType"))
(define dcterms:Box (namespace+name->nsname dcterms: "MediaTypeOrExtent"))
(define dcterms:Box (namespace+name->nsname dcterms: "MethodOfAccrual"))
(define dcterms:Box (namespace+name->nsname dcterms: "MethodOfInstruction"))
(define dcterms:Box (namespace+name->nsname dcterms: "PeriodOfTime"))
(define dcterms:Box (namespace+name->nsname dcterms: "PhysicalMedium"))
(define dcterms:Box (namespace+name->nsname dcterms: "PhysicalResource"))
(define dcterms:Box (namespace+name->nsname dcterms: "Policy"))
(define dcterms:Box (namespace+name->nsname dcterms: "ProvenanceStatement"))
(define dcterms:Box (namespace+name->nsname dcterms: "RightsStatement"))
(define dcterms:Box (namespace+name->nsname dcterms: "SizeOrDuration"))
(define dcterms:Box (namespace+name->nsname dcterms: "Standard"))
