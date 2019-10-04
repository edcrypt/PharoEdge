*EdgeDB
asEdgeRootPath
	"TODO: parse/quote value as literal/atom or expression"
	^ String streamContents: [ :stream |
		stream nextPutAll: key asEdgeRootPath.
		stream nextPutAll: ' := '.
		stream nextPutAll: value asString ]