RDFProperty subclass: RDFSProperty [
    | domain range subproperties |

    RDFSProperty class >> uri: aString [
        ^ self new uri: aString.
    ]

    uri: aString [
        super uri: aString.
        subproperties := OrderedCollection new.
    ]

    domain: aClass [
        domain := aClass.
    ]

    range: aClass [
        range := aClass.
    ]

    domain [
        ^ domain.
    ]

    range [
        ^ range.
    ]

    addSubproperty: aProperty [
        subproperties add: aProperty.
    ]

    subproperties [
        ^ subproperties.
    ]

    isSubpropertyOf: aProperty [
        ^ (subproperties includes: aProperty) ifTrue: [ true ] ifFalse: [ subproperties anySatisfy: [ :sub | sub isSubpropertyOf: aProperty ] ].
    ]

    printOn: aStream [
        aStream nextPutAll: 'RDFSProperty(', self uri, ')'.
    ]

RDFSProperty >> checkDomain: anRDFResource [
    ^ (domain isNil or: [ anRDFResource class isSubclassOf: domain ]) ifFalse: [ self error: 'Domain violation' ].
]

RDFSProperty >> checkRange: anRDFResource [
    ^ (range isNil or: [ anRDFResource class isSubclassOf: range ]) ifFalse: [ self error: 'Range violation' ].
]

]
