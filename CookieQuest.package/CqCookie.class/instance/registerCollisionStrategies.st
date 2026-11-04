initialization
registerCollisionStrategies
	
	super registerCollisionStrategies.
	self registerCollisionStrategy: CqDieStrategy new
		for: CqCollision cookieMonsterProperty