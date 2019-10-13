tests
testCreationWithFilter
	| set |
	set := EQLSet 
		selecting: #User
		filtering: [ :user :db | user age >= 18 ].
	self assert: set emitEdgeQL equals: 'SELECT User FILTER User.name >= 18'