#lang racket/base

;;
;; Vocabulary: DCMI Metadata Terms -- Terms
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

(define dcterms-prefix-string "dcterms")
(define dcterms-namespace-string "http://purl.org/dc/terms/")

(define dcterms: (string->resource dcterms-namespace-string))

(define (nsmap-add-dc-terms map)
  (nsmap-set! map
              (string->prefix dcterms-prefix-string)
              (string->resource dcterms-namespace-string)))

;; ================================================================================================
;; Name definitions
;; ================================================================================================

(define dcterms:abstract
  (make-nsname dcterms: (string->local-name "abstract")))
(define dcterms:accessRights
  (make-nsname dcterms: (string->local-name "accessRights")))
(define dcterms:accrualMethod
  (make-nsname dcterms: (string->local-name "accrualMethod")))
(define dcterms:accrualPeriodicity
  (make-nsname dcterms: (string->local-name "accrualPeriodicity")))
(define dcterms:accrualPolicy
  (make-nsname dcterms: (string->local-name "accrualPolicy")))
(define dcterms:alternative
  (make-nsname dcterms: (string->local-name "alternative")))
(define dcterms:audience
  (make-nsname dcterms: (string->local-name "audience")))
(define dcterms:available
  (make-nsname dcterms: (string->local-name "available")))
(define dcterms:bibliographicCitation
  (make-nsname dcterms: (string->local-name "bibliographicCitation")))
(define dcterms:conformsTo
  (make-nsname dcterms: (string->local-name "conformsTo")))
(define dcterms:contributor
  (make-nsname dcterms: (string->local-name "contributor")))
(define dcterms:coverage
  (make-nsname dcterms: (string->local-name "coverage")))
(define dcterms:creator
  (make-nsname dcterms: (string->local-name "creator")))
(define dcterms:date
  (make-nsname dcterms: (string->local-name "date")))
(define dcterms:dateAccepted
  (make-nsname dcterms: (string->local-name "dateAccepted")))
(define dcterms:dateCopyright
  (make-nsname dcterms: (string->local-name "dateCopyright")))
(define dcterms:dateSubmitted
  (make-nsname dcterms: (string->local-name "dateSubmitted")))
(define dcterms:description
  (make-nsname dcterms: (string->local-name "description")))
(define dcterms:educationLevel
  (make-nsname dcterms: (string->local-name "educationLevel")))
(define dcterms:extent
  (make-nsname dcterms: (string->local-name "extent")))
(define dcterms:format
  (make-nsname dcterms: (string->local-name "format")))
(define dcterms:hasFormat
  (make-nsname dcterms: (string->local-name "hasFormat")))
(define dcterms:hasPart
  (make-nsname dcterms: (string->local-name "hasPart")))
(define dcterms:hasVersion
  (make-nsname dcterms: (string->local-name "hasVersion")))
(define dcterms:identifier
  (make-nsname dcterms: (string->local-name "identifier")))
(define dcterms:instructionalMethod
  (make-nsname dcterms: (string->local-name "instructionalMethod")))
(define dcterms:isFormatOf
  (make-nsname dcterms: (string->local-name "isFormatOf")))
(define dcterms:isPartOf
  (make-nsname dcterms: (string->local-name "isPartOf")))
(define dcterms:isReferencedBy
  (make-nsname dcterms: (string->local-name "isReferencedBy")))
(define dcterms:isReplacedBy
  (make-nsname dcterms: (string->local-name "isReplacedBy")))
(define dcterms:isRequiredBy
  (make-nsname dcterms: (string->local-name "isRequiredBy")))
(define dcterms:issued
  (make-nsname dcterms: (string->local-name "issued")))
(define dcterms:isVersionOf
  (make-nsname dcterms: (string->local-name "isVersionOf")))
(define dcterms:language
  (make-nsname dcterms: (string->local-name "language")))
(define dcterms:mediator
  (make-nsname dcterms: (string->local-name "mediator")))
(define dcterms:medium
  (make-nsname dcterms: (string->local-name "medium")))
(define dcterms:modified
  (make-nsname dcterms: (string->local-name "modified")))
(define dcterms:provenance
  (make-nsname dcterms: (string->local-name "provenance")))
(define dcterms:publisher
  (make-nsname dcterms: (string->local-name "publisher")))
(define dcterms:references
  (make-nsname dcterms: (string->local-name "references")))
(define dcterms:relation
  (make-nsname dcterms: (string->local-name "relation")))
(define dcterms:replaces
  (make-nsname dcterms: (string->local-name "replaces")))
(define dcterms:requires
  (make-nsname dcterms: (string->local-name "requires")))
(define dcterms:rights
  (make-nsname dcterms: (string->local-name "rights")))
(define dcterms:rightsHolder
  (make-nsname dcterms: (string->local-name "rightsHolder")))
(define dcterms:source
  (make-nsname dcterms: (string->local-name "source")))
(define dcterms:spatial
  (make-nsname dcterms: (string->local-name "spatial")))
(define dcterms:subject
  (make-nsname dcterms: (string->local-name "subject")))
(define dcterms:tableOfContents
  (make-nsname dcterms: (string->local-name "tableOfContents")))
(define dcterms:temporal
  (make-nsname dcterms: (string->local-name "temporal")))
(define dcterms:title
  (make-nsname dcterms: (string->local-name "title")))
(define dcterms:type
  (make-nsname dcterms: (string->local-name "type")))
(define dcterms:valid
  (make-nsname dcterms: (string->local-name "valid")))

;; ================================================================================================
;; Name definitions -- Vocabulary Encoding Schemes
;; ================================================================================================

(define dcterms:DCMIType
  (make-nsname dcterms: (string->local-name "DCMIType")))
(define dcterms:DDC
  (make-nsname dcterms: (string->local-name "DDC")))
(define dcterms:IMT
  (make-nsname dcterms: (string->local-name "IMT")))
(define dcterms:LCC
  (make-nsname dcterms: (string->local-name "LCC")))
(define dcterms:LCSH
  (make-nsname dcterms: (string->local-name "LCSH")))
(define dcterms:MESH
  (make-nsname dcterms: (string->local-name "MESH")))
(define dcterms:NLM
  (make-nsname dcterms: (string->local-name "NLM")))
(define dcterms:TGN
  (make-nsname dcterms: (string->local-name "TGN")))
(define dcterms:UDC
  (make-nsname dcterms: (string->local-name "UDC")))

;; ================================================================================================
;; Name definitions -- Syntax Encoding Schemes
;; ================================================================================================

(define dcterms:Box
  (make-nsname dcterms: (string->local-name "Box")))
(define dcterms:ISO3166
  (make-nsname dcterms: (string->local-name "ISO3166")))
(define dcterms:ISO639-2
  (make-nsname dcterms: (string->local-name "ISO639-2")))
(define dcterms:ISO639-3
  (make-nsname dcterms: (string->local-name "ISO639-3")))
(define dcterms:Period
  (make-nsname dcterms: (string->local-name "Period")))
(define dcterms:Point
  (make-nsname dcterms: (string->local-name "Point")))
(define dcterms:RFC1766
  (make-nsname dcterms: (string->local-name "RFC1766")))
(define dcterms:RFC3066
  (make-nsname dcterms: (string->local-name "RFC3066")))
(define dcterms:RFC4646
  (make-nsname dcterms: (string->local-name "RFC4646")))
(define dcterms:RFC5646
  (make-nsname dcterms: (string->local-name "RFC5646")))
(define dcterms:URI
  (make-nsname dcterms: (string->local-name "URI")))
(define dcterms:W3CDTF
  (make-nsname dcterms: (string->local-name "W3CDTF")))

;; ================================================================================================
;; Name definitions -- Classes
;; ================================================================================================

(define dcterms:Agent
  (make-nsname dcterms: (string->local-name "Agent")))
(define dcterms:AgentClass
  (make-nsname dcterms: (string->local-name "AgentClass")))
(define dcterms:BibliographicResource
  (make-nsname dcterms: (string->local-name "BibliographicResource")))
(define dcterms:FileFormat
  (make-nsname dcterms: (string->local-name "FileFormat")))
(define dcterms:Frequency
  (make-nsname dcterms: (string->local-name "Frequency")))
(define dcterms:Jurisdiction
  (make-nsname dcterms: (string->local-name "Jurisdiction")))
(define dcterms:LicenseDocument
  (make-nsname dcterms: (string->local-name "LicenseDocument")))
(define dcterms:LinguisticSystem
  (make-nsname dcterms: (string->local-name "LinguisticSystem")))
(define dcterms:Location
  (make-nsname dcterms: (string->local-name "Location")))
(define dcterms:LocationPeriodOrJurisdiction
  (make-nsname dcterms: (string->local-name "LocationPeriodOrJurisdiction")))
(define dcterms:MediaType
  (make-nsname dcterms: (string->local-name "MediaType")))
(define dcterms:MediaTypeOrExtent
  (make-nsname dcterms: (string->local-name "MediaTypeOrExtent")))
(define dcterms:MethodOfAccrual
  (make-nsname dcterms: (string->local-name "MethodOfAccrual")))
(define dcterms:MethodOfInstruction
  (make-nsname dcterms: (string->local-name "MethodOfInstruction")))
(define dcterms:PeriodOfTime
  (make-nsname dcterms: (string->local-name "PeriodOfTime")))
(define dcterms:PhysicalMedium
  (make-nsname dcterms: (string->local-name "PhysicalMedium")))
(define dcterms:PhysicalResource
  (make-nsname dcterms: (string->local-name "PhysicalResource")))
(define dcterms:Policy
  (make-nsname dcterms: (string->local-name "Policy")))
(define dcterms:ProvenanceStatement
  (make-nsname dcterms: (string->local-name "ProvenanceStatement")))
(define dcterms:RightsStatement
  (make-nsname dcterms: (string->local-name "RightsStatement")))
(define dcterms:SizeOrDuration
  (make-nsname dcterms: (string->local-name "SizeOrDuration")))
(define dcterms:Standard
  (make-nsname dcterms: (string->local-name "Standard")))
