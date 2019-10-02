tests
testSelect
	| set |
	set := EdgeSet new
		select: #User.
	self assert: set emitQuery equals: 'SELECT User'