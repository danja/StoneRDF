RDFLiteral subclass: RDFTypedLiteral [
    | datatype |

    RDFTypedLiteral class >> value: aValue type: aDatatypeUri [
        ^ self new value: aValue type: aDatatypeUri.
    ]

    value: aValue type: aDatatypeUri [
        super value: aValue.
        datatype := aDatatypeUri.
    ]

    datatype [
        ^ datatype.
    ]

    printOn: aStream [
        aStream nextPutAll: 'RDFTypedLiteral(', value printString, '^^', datatype, ')'.
    ]
]
