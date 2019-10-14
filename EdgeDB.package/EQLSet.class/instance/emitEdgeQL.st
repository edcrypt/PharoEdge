converting
emitEdgeQL
	^ String streamContents: [ :stream |
		stream nextPutAll: 'SELECT '.
		stream nextPutAll: querySelector asEdgeQLString.
		filterBlock ifNotNil: [  
			stream nextPutAll: ' FILTER '.
			stream nextPutAll: filterBlock asEdgeQLString.
		]
	]