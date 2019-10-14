*EdgeDB
asEQLSelector
	"Create an EQLReference for use in EQLSets to reference types on SELECTs"
	^ EQLReference new
		value: self asString;
		yourself