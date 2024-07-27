RDFResource subclass: RDFProperty [
    printOn: aStream [
        aStream nextPutAll: 'RDFProperty(', self uri, ')'.
    ]
]
