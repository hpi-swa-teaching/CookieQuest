transitions
enterState

	super enterState.
	self 
		updateCollisionStrategiesForCookieMonster;
		updateCollisionStrategiesForTile