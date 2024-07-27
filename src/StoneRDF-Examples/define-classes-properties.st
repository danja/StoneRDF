| personClass studentClass teachesProperty |
personClass := RDFSClass uri: 'http://example.org/Person'.
studentClass := RDFSClass uri: 'http://example.org/Student'.
personClass addSubclass: studentClass.
teachesProperty := RDFSProperty uri: 'http://example.org/teaches'.
teachesProperty domain: personClass.
