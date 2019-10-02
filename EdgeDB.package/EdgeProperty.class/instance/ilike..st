as yet unclassified
ilike: anExpression
	^ EdgeFilter new
		operation: #ilike;
		expression: anExpression;
		property: self;
		yourself