Object subclass: RDFTriple [
    | subject predicate object |

    RDFTriple class >> subject: aSubject predicate: aPredicate object: anObject [
        ^ self new subject: aSubject predicate: aPredicate object: anObject.
    ]

    subject: aSubject predicate: aPredicate object: anObject [
        subject := aSubject.
        predicate := aPredicate.
        object := anObject.
    ]

    subject [
        ^ subject.
    ]

    predicate [
        ^ predicate.
    ]

    object [
        ^ object.
    ]

    printOn: aStream [
        aStream nextPutAll: 'RDFTriple(', subject printString, ', ', predicate printString, ', ', object printString, ')'.
    ]
]
