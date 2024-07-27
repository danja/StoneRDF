Object subclass: RDFResource [
    | uri |

    RDFResource class >> uri: aString [
        ^ self new uri: aString.
    ]

    uri: aString [
        uri := aString.
    ]

    uri [
        ^ uri.
    ]

    printOn: aStream [
        aStream nextPutAll: 'RDFResource(', uri, ')'.
    ]
]
