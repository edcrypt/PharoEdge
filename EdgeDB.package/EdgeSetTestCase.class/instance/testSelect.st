tests
testSelect
	| set |
	"Reference"
	set := EdgeSet new
		select: #User.
	self assert: set emitQuery equals: 'SELECT User'.
	"Path"
	set := EdgeSet new
		select: #User -> #foo.
	self assert: set emitQuery equals: 'SELECT User.foo'