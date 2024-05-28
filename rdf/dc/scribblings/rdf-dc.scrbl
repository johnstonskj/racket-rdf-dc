#lang scribble/manual

@(require racket/sandbox
          scribble/core
          scribble/eval
          (for-label rdf/core/name
                     rdf/core/nsmap
                     rdf/core/nsname
                     rdf/dc/cam
                     rdf/dc/elements
                     rdf/dc/terms
                     rdf/dc/type
                     rdf/dc/terms))

@;{============================================================================}
@title[#:version  "0.1.1"]{RDF Dublin Core Vocabularies}
@author[(author+email "Simon Johnston" "johnstonskj@gmail.com")]

This package provides modules, using package rdf-core, to capture the vocabularies defined by the @cite["DCMIMT"]
specification. These are commonly-used metadata terms and where they @italic{may be} used they really @italic{should be}
used.

@table-of-contents[]

@;{============================================================================}
@;{============================================================================}
@section[#:style '(toc)]{Module DC Terms}
@defmodule[rdf/dc/terms]

TBD

@defthing[dcterms-prefix-string prefix-string?]{
The string representation of this vocabulary's preferred prefix (@tt{"dcterms"}).
}

@defthing[dcterms-namespace-string string?]{
The string representation of this vocabulary's namespace URI.
}

@defthing[dcterms: namespace?]{
The vocabulary's namespace URI (@racket[dcterms-namespace-string]) as a @racket[namespace] structure.
}

@defproc[(nsmap-add-dc-terms
          [map nsmap?])
         void?]{
Add a mapping to @italic{nsmap} between the prefix in @racket[dcterms-prefix-string] and the namespace
in @racket[dcterms:].
}

All of the names from [DCMI] sections 2, and 4 through 6 are included in this module as values of type
@racket[nsname].

@;{============================================================================}
@;{============================================================================}
@section[#:style '(toc)]{Module DC Elements}
@defmodule[rdf/dc/elements]

TBD

@defthing[elements-prefix-string prefix-string?]{
The string representation of this vocabulary's preferred prefix (@tt{"elements"}).
}

@defthing[elements-namespace-string string?]{
The string representation of this vocabulary's namespace URI.
}

@defthing[elements: namespace?]{
The vocabulary's namespace URI (@racket[elements-namespace-string]) as a @racket[namespace] structure.
}

@defproc[(nsmap-add-dc-elements
          [map nsmap?])
         void?]{
Add a mapping to @italic{nsmap} between the prefix in @racket[elements-prefix-string] and the namespace
in @racket[elements:].
}

All of the names from [DCMI] section 2 are included in this module as values of type
@racket[nsname].

@;{============================================================================}
@;{============================================================================}
@section[#:style '(toc)]{Module DCMI Types}
@defmodule[rdf/dc/type]

TBD

@defthing[dctype-prefix-string prefix-string?]{
The string representation of this vocabulary's preferred prefix (@tt{"dctype"}).
}

@defthing[dctype-namespace-string string?]{
The string representation of this vocabulary's namespace URI.
}

@defthing[dctype: namespace?]{
The vocabulary's namespace URI (@racket[dctype-namespace-string]) as a @racket[namespace] structure.
}

@defproc[(nsmap-add-dc-dctype
          [map nsmap?])
         void?]{
Add a mapping to @italic{nsmap} between the prefix in @racket[dctype-prefix-string] and the namespace
in @racket[dctype:].
}

All of the names from [DCMI] section 7 are included in this module as values of type
@racket[nsname].

@;{============================================================================}
@;{============================================================================}
@section[#:style '(toc)]{Module DCAM}
@defmodule[rdf/dc/cam]

TBD

@defthing[dcam-prefix-string prefix-string?]{
The string representation of this vocabulary's preferred prefix (@tt{"dcam"}).
}

@defthing[dcam-namespace-string string?]{
The string representation of this vocabulary's namespace URI.
}

@defthing[dcam: namespace?]{
The vocabulary's namespace URI (@racket[dcam-namespace-string]) as a @racket[namespace] structure.
}

@defproc[(nsmap-add-dc-dcam
          [map nsmap?])
         void?]{
Add a mapping to @italic{nsmap} between the prefix in @racket[dcam-prefix-string] and the namespace
in @racket[dcam:].
}

All of the names from [DCMI] section 8 are included in this module as values of type
@racket[nsname].

@;{============================================================================}
@;{============================================================================}

@(bibliography

  (bib-entry #:key "DCMIMT"
             #:title "DCMI Metadata Terms"
             #:location "DCMI"
             #:url "https://www.dublincore.org/specifications/dublin-core/dcmi-terms/"
             #:date "20 January 2020")
)

@;{============================================================================}
@;{============================================================================}
@index-section[]
