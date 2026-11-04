comparing
hash

	^ { self directionState . self movementState . self sizeState . self stateHolder }
		asCollection hash