| store graph subject predicate object triple |
store := RDFStore new.
graph := RDFNamedGraph name: 'http://example.org/graph1'.
subject := RDFResource uri: 'http://example.org/resource1'.
predicate := RDFProperty uri: 'http://example.org/property1'.
object := RDFLiteral value: 'Some value'.
triple := RDFTriple subject: subject predicate: predicate object: object.
store addTriple: triple toGraph: 'http://example.org/graph1'.
