creating
selecting: anEQLSelectorLike filtering: aFilterBlock
	^ self new 
		querySelector: anEQLSelectorLike asEQLSelector;
		filterBlock: aFilterBlock;
		yourself