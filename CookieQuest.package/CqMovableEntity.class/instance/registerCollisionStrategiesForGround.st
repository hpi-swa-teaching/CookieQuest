registration
registerCollisionStrategiesForGround

	self
		registerCollisionStrategy: CqBlockingCollideStrategy new
			for: CqCollision tileProperty;
		registerCollisionStrategy: CqAddGroundResistanceStrategy  new
			for:  CqCollision tileProperty