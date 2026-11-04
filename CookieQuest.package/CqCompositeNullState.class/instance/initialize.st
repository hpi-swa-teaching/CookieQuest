initialization
initialize
	"direct setting is used because no extra stuff should be performed
	(e.g. setting the stateHolder, see CqCompositeState)"
	
	super initialize.
	movementState := nil.
	directionState := nil.
	sizeState := nil