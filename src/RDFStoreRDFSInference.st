RDFStore >> addTriple: aTriple [
    | predicate subject object |
    subject := aTriple subject.
    predicate := aTriple predicate.
    object := aTriple object.
    "Check domain and range constraints"
    (predicate isKindOf: RDFSProperty) ifTrue: [
        predicate checkDomain: subject.
        predicate checkRange: object.
    ].
    triples add: aTriple.
    "Handle subclass and subproperty inferences"
    (predicate isKindOf: RDFSProperty) ifTrue: [
        predicate subproperties do: [ :sub |
            triples add: (RDFTriple subject: subject predicate: sub object: object).
        ].
    ].
    (subject isKindOf: RDFSClass) ifTrue: [
        subject subclasses do: [ :sub |
            triples add: (RDFTriple subject: sub predicate: predicate object: object).
        ].
    ].
]
