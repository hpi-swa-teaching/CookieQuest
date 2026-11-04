state actions
changeState

	self activeState exitState.
	self nextState enterState.
	self activeState: self nextState copy.