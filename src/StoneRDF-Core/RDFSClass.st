Object subclass: RDFSClass [
    | uri subclasses |

    RDFSClass class >> uri: aString [
        ^ self new uri: aString.
    ]

    uri: aString [
        uri := aString.
        subclasses := OrderedCollection new.
    ]

    uri [
        ^ uri.
    ]

    addSubclass: aClass [
        subclasses add: aClass.
    ]

    subclasses [
        ^ subclasses.
    ]

    isSubclassOf: aClass [
        ^ (subclasses includes: aClass) ifTrue: [ true ] ifFalse: [ subclasses anySatisfy: [ :sub | sub isSubclassOf: aClass ] ].
    ]

    printOn: aStream [
        aStream nextPutAll: 'RDFSClass(', uri, ')'.
    ]
]
