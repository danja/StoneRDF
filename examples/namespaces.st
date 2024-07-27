| ns expandedUri compactUri |
ns := RDFNamespace prefix: 'ex' uri: 'http://example.org/'.
expandedUri := ns expand: 'ex:resource1'.
compactUri := ns compact: 'http://example.org/resource1'.
