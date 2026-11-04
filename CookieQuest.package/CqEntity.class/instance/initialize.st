initialization
initialize

	super initialize.
	self
		collisionStrategies: self collisionStrategiesClass new;
		jumpiness: self defaultJumpiness;
		jumpinessFactor: self defaultJumpinessFactor;
		level: CqNullLevel new;
		registerCollisionStrategies