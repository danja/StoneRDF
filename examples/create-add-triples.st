| store subject predicate object triple |
store := RDFStore new.
subject := RDFResource uri: 'http://example.org/Alice'.
predicate := teachesProperty.
object := RDFResource uri: 'http://example.org/Math'.
triple := RDFTriple subject: subject predicate: predicate object: object.
store addTriple: triple.
