tests
testEmitEmptySet
	| set |
	set := EdgeSet new.
	self assert: set emitQuery equals: 'SELECT {}'