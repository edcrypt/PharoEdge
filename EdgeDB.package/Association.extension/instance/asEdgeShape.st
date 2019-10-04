*EdgeDB
asEdgeShape
	^ EdgeShape newWith: (String streamContents: [ :stream |
			stream 
				nextPutAll: key asEdgeRootPath;
				nextPutAll: value asEdgeSubPath 
		])