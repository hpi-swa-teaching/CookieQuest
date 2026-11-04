defaults
defaultState

	| state |
	state := CqCompositeState newWith: self.
	state movementState: CqFloatingState new.
	state directionState: CqUpState new.
	^ state