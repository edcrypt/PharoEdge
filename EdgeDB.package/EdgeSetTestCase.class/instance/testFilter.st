tests
testFilter
	| set |
	set := EdgeSet new
		filter: [ :a | (a at: #b) ilike: 10 ].
	self assert: set emitQuery equals: 'SELECT {} FILTER .b ILIKE 10'