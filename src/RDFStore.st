Object subclass: RDFStore [
    | triples namedGraphs |

    RDFStore >> initialize [
        triples := OrderedCollection new.
        namedGraphs := Dictionary new.
    ]

    RDFStore >> addTriple: aTriple [
        triples add: aTriple.
    ]

    RDFStore >> addTriple: aTriple toGraph: graphName [
        (namedGraphs at: graphName ifAbsentPut: [RDFNamedGraph name: graphName]) addTriple: aTriple.
    ]

    RDFStore >> triplesDo: aBlock [
        triples do: aBlock.
    ]

    RDFStore >> triplesInGraph: graphName do: aBlock [
        (namedGraphs at: graphName ifAbsent: [^ self]) triplesDo: aBlock.
    ]
]
