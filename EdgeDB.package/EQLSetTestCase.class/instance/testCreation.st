tests
testCreation
	| set |
	set := EQLSet selecting: #User.
	self assert: set emitEdgeQL equals: 'SELECT User'