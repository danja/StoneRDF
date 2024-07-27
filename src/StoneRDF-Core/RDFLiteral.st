Object subclass: RDFLiteral [
    | value |

    RDFLiteral class >> value: aValue [
        ^ self new value: aValue.
    ]

    value: aValue [
        value := aValue.
    ]

    value [
        ^ value.
    ]

    printOn: aStream [
        aStream nextPutAll: 'RDFLiteral(', value printString, ')'.
    ]
]
