#lang racket/base

;;
;; Vocabulary: DCMI Metadata Terms -- Terms
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

(define dcterms-prefix-string "dcterms")
(define dcterms-namespace-string "http://purl.org/dc/terms/")

(define dcterms: (string->namespace dcterms-namespace-string))

(define (nsmap-add-dc-terms map)
  (nsmap-set! map
              (string->prefix dcterms-prefix-string)
              (string->namespace dcterms-namespace-string)))

;; ================================================================================================
;; Name definitions
;; ================================================================================================

(define dcterms:abstract (make-nsname dcterms: "abstract"))
(define dcterms:accessRights (make-nsname dcterms: "accessRights"))
(define dcterms:accrualMethod (make-nsname dcterms: "accrualMethod"))
(define dcterms:accrualPeriodicity (make-nsname dcterms: "accrualPeriodicity"))
(define dcterms:accrualPolicy (make-nsname dcterms: "accrualPolicy"))
(define dcterms:alternative (make-nsname dcterms: "alternative"))
(define dcterms:audience (make-nsname dcterms: "audience"))
(define dcterms:available (make-nsname dcterms: "available"))
(define dcterms:bibliographicCitation (make-nsname dcterms: "bibliographicCitation"))
(define dcterms:conformsTo (make-nsname dcterms: "conformsTo"))
(define dcterms:contributor (make-nsname dcterms: "contributor"))
(define dcterms:coverage (make-nsname dcterms: "coverage"))
(define dcterms:creator (make-nsname dcterms: "creator"))
(define dcterms:date (make-nsname dcterms: "date"))
(define dcterms:dateAccepted (make-nsname dcterms: "dateAccepted"))
(define dcterms:dateCopyright (make-nsname dcterms: "dateCopyright"))
(define dcterms:dateSubmitted (make-nsname dcterms: "dateSubmitted"))
(define dcterms:description (make-nsname dcterms: "description"))
(define dcterms:educationLevel (make-nsname dcterms: "educationLevel"))
(define dcterms:extent (make-nsname dcterms: "extent"))
(define dcterms:format (make-nsname dcterms: "format"))
(define dcterms:hasFormat (make-nsname dcterms: "hasFormat"))
(define dcterms:hasPart (make-nsname dcterms: "hasPart"))
(define dcterms:hasVersion (make-nsname dcterms: "hasVersion"))
(define dcterms:identifier (make-nsname dcterms: "identifier"))
(define dcterms:instructionalMethod (make-nsname dcterms: "instructionalMethod"))
(define dcterms:isFormatOf (make-nsname dcterms: "isFormatOf"))
(define dcterms:isPartOf (make-nsname dcterms: "isPartOf"))
(define dcterms:isReferencedBy (make-nsname dcterms: "isReferencedBy"))
(define dcterms:isReplacedBy (make-nsname dcterms: "isReplacedBy"))
(define dcterms:isRequiredBy (make-nsname dcterms: "isRequiredBy"))
(define dcterms:issued (make-nsname dcterms: "issued"))
(define dcterms:isVersionOf (make-nsname dcterms: "isVersionOf"))
(define dcterms:language (make-nsname dcterms: "language"))
(define dcterms:mediator (make-nsname dcterms: "mediator"))
(define dcterms:medium (make-nsname dcterms: "medium"))
(define dcterms:modified (make-nsname dcterms: "modified"))
(define dcterms:provenance (make-nsname dcterms: "provenance"))
(define dcterms:publisher (make-nsname dcterms: "publisher"))
(define dcterms:references (make-nsname dcterms: "references"))
(define dcterms:relation (make-nsname dcterms: "relation"))
(define dcterms:replaces (make-nsname dcterms: "replaces"))
(define dcterms:requires (make-nsname dcterms: "requires"))
(define dcterms:rights (make-nsname dcterms: "rights"))
(define dcterms:rightsHolder (make-nsname dcterms: "rightsHolder"))
(define dcterms:source (make-nsname dcterms: "source"))
(define dcterms:spatial (make-nsname dcterms: "spatial"))
(define dcterms:subject (make-nsname dcterms: "subject"))
(define dcterms:tableOfContents (make-nsname dcterms: "tableOfContents"))
(define dcterms:temporal (make-nsname dcterms: "temporal"))
(define dcterms:title (make-nsname dcterms: "title"))
(define dcterms:type (make-nsname dcterms: "type"))
(define dcterms:valid (make-nsname dcterms: "valid"))

;; ================================================================================================
;; Name definitions -- Vocabulary Encoding Schemes
;; ================================================================================================

(define dcterms:DCMIType (make-nsname dcterms: "DCMIType"))
(define dcterms:DDC (make-nsname dcterms: "DDC"))
(define dcterms:IMT (make-nsname dcterms: "IMT"))
(define dcterms:LCC (make-nsname dcterms: "LCC"))
(define dcterms:LCSH (make-nsname dcterms: "LCSH"))
(define dcterms:MESH (make-nsname dcterms: "MESH"))
(define dcterms:NLM (make-nsname dcterms: "NLM"))
(define dcterms:TGN (make-nsname dcterms: "TGN"))
(define dcterms:UDC (make-nsname dcterms: "UDC"))

;; ================================================================================================
;; Name definitions -- Syntax Encoding Schemes
;; ================================================================================================

(define dcterms:Box (make-nsname dcterms: "Box"))
(define dcterms:ISO3166 (make-nsname dcterms: "ISO3166"))
(define dcterms:ISO639-2 (make-nsname dcterms: "ISO639-2"))
(define dcterms:ISO639-3 (make-nsname dcterms: "ISO639-3"))
(define dcterms:Period (make-nsname dcterms: "Period"))
(define dcterms:Point (make-nsname dcterms: "Point"))
(define dcterms:RFC1766 (make-nsname dcterms: "RFC1766"))
(define dcterms:RFC3066 (make-nsname dcterms: "RFC3066"))
(define dcterms:RFC4646 (make-nsname dcterms: "RFC4646"))
(define dcterms:RFC5646 (make-nsname dcterms: "RFC5646"))
(define dcterms:URI (make-nsname dcterms: "URI"))
(define dcterms:W3CDTF (make-nsname dcterms: "W3CDTF"))

;; ================================================================================================
;; Name definitions -- Classes
;; ================================================================================================

(define dcterms:Agent (make-nsname dcterms: "Agent"))
(define dcterms:AgentClass (make-nsname dcterms: "AgentClass"))
(define dcterms:BibliographicResource (make-nsname dcterms: "BibliographicResource"))
(define dcterms:FileFormat (make-nsname dcterms: "FileFormat"))
(define dcterms:Frequency (make-nsname dcterms: "Frequency"))
(define dcterms:Jurisdiction (make-nsname dcterms: "Jurisdiction"))
(define dcterms:LicenseDocument (make-nsname dcterms: "LicenseDocument"))
(define dcterms:LinguisticSystem (make-nsname dcterms: "LinguisticSystem"))
(define dcterms:Location (make-nsname dcterms: "Location"))
(define dcterms:LocationPeriodOrJurisdiction (make-nsname dcterms: "LocationPeriodOrJurisdiction"))
(define dcterms:MediaType (make-nsname dcterms: "MediaType"))
(define dcterms:MediaTypeOrExtent (make-nsname dcterms: "MediaTypeOrExtent"))
(define dcterms:MethodOfAccrual (make-nsname dcterms: "MethodOfAccrual"))
(define dcterms:MethodOfInstruction (make-nsname dcterms: "MethodOfInstruction"))
(define dcterms:PeriodOfTime (make-nsname dcterms: "PeriodOfTime"))
(define dcterms:PhysicalMedium (make-nsname dcterms: "PhysicalMedium"))
(define dcterms:PhysicalResource (make-nsname dcterms: "PhysicalResource"))
(define dcterms:Policy (make-nsname dcterms: "Policy"))
(define dcterms:ProvenanceStatement (make-nsname dcterms: "ProvenanceStatement"))
(define dcterms:RightsStatement (make-nsname dcterms: "RightsStatement"))
(define dcterms:SizeOrDuration (make-nsname dcterms: "SizeOrDuration"))
(define dcterms:Standard (make-nsname dcterms: "Standard"))
