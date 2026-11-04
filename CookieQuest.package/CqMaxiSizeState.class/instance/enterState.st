transitions
enterState

	super enterState.
	self entity
		removeAllCollisionStrategiesFor: CqCollision deadlyProperty;
		removeAllCollisionStrategiesFor: CqCollision killableByJumpProperty;
		removeAllCollisionStrategiesFor: CqCollision spinnableProperty.