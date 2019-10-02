accessing
emitQuery
	^ String streamContents: [ :stream |
		stream nextPutAll: 'SELECT '.
		stream nextPutAll: shape asEdgeQLString.
		filters ifNotNil: [  
			stream nextPutAll: ' FILTER '.
			stream nextPutAll: filters asEdgeQLString.
		]
	]