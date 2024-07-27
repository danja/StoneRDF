Object subclass: RDFNamedGraph [
    | name triples |

    RDFNamedGraph class >> name: aName [
        ^ self new name: aName.
    ]

    name: aName [
        name := aName.
        triples := OrderedCollection new.
    ]

    name [
        ^ name.
    ]

    addTriple: aTriple [
        triples add: aTriple.
    ]

    triplesDo: aBlock [
        triples do: aBlock.
    ]
]
