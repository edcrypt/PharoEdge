instance creation
newFor: anEdgeShape at: aString
	^ self new 
		edgeShape: anEdgeShape;
		property: aString;
		yourself