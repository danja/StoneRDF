Object subclass: SPARQLQuery [
    | queryString |

    SPARQLQuery class >> query: aString [
        ^ self new query: aString.
    ]

    query: aString [
        queryString := aString.
    ]

    query [
        ^ queryString.
    ]

    executeOn: anRDFStore [
        | results |
        results := OrderedCollection new.
        "Parse the query and match against RDF triples in the store"
        "For simplicity, this example only handles basic SELECT queries with a single triple pattern"
        | subject predicate object pattern |
        (queryString beginsWith: 'SELECT') ifFalse: [ ^ results ].
        pattern := queryString copyFrom: (queryString indexOf: '{') + 1 to: (queryString indexOf: '}') - 1.
        subject := (pattern substrings: ' ') first.
        predicate := (pattern substrings: ' ') second.
        object := (pattern substrings: ' ') third.
        anRDFStore triplesDo: [ :triple |
            ((subject = '?' or: [ triple subject uri = subject ]) and:
             (predicate = '?' or: [ triple predicate uri = predicate ]) and:
             (object = '?' or: [ triple object value = object or: [ triple object uri = object ] ])) ifTrue: [
                results add: triple
            ].
        ].
        ^ results.
    ]
]
