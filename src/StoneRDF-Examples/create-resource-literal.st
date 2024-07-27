| store subject predicate object triple query results |
store := RDFStore new.
subject := RDFResource uri: 'http://example.org/resource1'.
predicate := RDFProperty uri: 'http://example.org/property1'.
object := RDFLiteral value: 'Some value'.
triple := RDFTriple subject: subject predicate: predicate object: object.
store addTriple: triple.
