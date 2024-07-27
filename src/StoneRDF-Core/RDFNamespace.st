Object subclass: RDFNamespace [
    | prefix uri |

    RDFNamespace class >> prefix: aPrefix uri: anUri [
        ^ self new prefix: aPrefix uri: anUri.
    ]

    prefix: aPrefix uri: anUri [
        prefix := aPrefix.
        uri := anUri.
    ]

    expand: aCompactUri [
        | parts |
        parts := aCompactUri findTokens: ':'.
        ^ (prefix = parts first) ifTrue: [uri, parts second] ifFalse: [aCompactUri].
    ]

    compact: aFullUri [
        ^ (aFullUri beginsWith: uri) ifTrue: [prefix, ':', (aFullUri copyFrom: (uri size + 1) to: aFullUri size)] ifFalse: [aFullUri].
    ]

    prefix [
        ^ prefix.
    ]

    uri [
        ^ uri.
    ]
]
