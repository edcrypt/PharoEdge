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
	self assert: set emitQuery equals: 'SELECT User.foo'.
	"Complex shapes"
	set := EdgeSet new
		select: #User -> #(name age).
	self assert: set emitQuery equals: 'SELECT User {name, age}'.
	"Properties"
	set := EdgeSet new
		select: #User -> { #name -> 42 }.
	self assert: set emitQuery equals: 'SELECT User {name := 42}'