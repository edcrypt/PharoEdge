creating
with: anEQLSetArray selecting: anEQLSelectorLike
	^ self new 
		withSets: anEQLSetArray;
		querySelector: anEQLSelectorLike asEQLSelector;
		yourself