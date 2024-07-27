query := SPARQLQuery query: 'SELECT ?s WHERE { ?s <http://example.org/property1> "Some value" }'.
results := store query: query.
Transcript show: results; cr.
