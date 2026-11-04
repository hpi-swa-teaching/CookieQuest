registration
registerCollisionStrategiesDefault

	self
		registerCollisionStrategiesForGround;
		registerCollisionStrategiesForLevelBounds;
		registerCollisionStrategy: CqBlockingCollideStrategy new
			for: CqCollision platformProperty