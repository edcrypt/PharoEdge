creating
with: anEQLSetArray selecting: anEQLSelectorLike filtering: aFilterBlock
	^ self new 
		withSets: anEQLSetArray;
		querySelector: anEQLSelectorLike asEQLSelector;
		filterBlock: aFilterBlock;
		yourself