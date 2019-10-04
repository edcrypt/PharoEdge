*EdgeDB
asEdgeSubPath 
	^ String streamContents: [ :stream |
		stream nextPutAll: ' {'. 
		stream nextPutAll: (', ' join: (self collect: [ :each | each asEdgeRootPath ])).
		stream nextPutAll: '}' ]