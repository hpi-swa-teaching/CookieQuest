registration
registerCollisionStrategiesForObjects

	self
		registerCollisionStrategy: CqBlockingCollideStrategy new
			for: CqCollision jumpBarrelProperty;
		registerCollisionStrategy: CqTurnStrategy new
			for: CqCollision jumpBarrelProperty;
		registerCollisionStrategy: CqBlockingCollideStrategy new
			for: CqCollision jumpCoilProperty;
		registerCollisionStrategy: CqTurnStrategy new
			for: CqCollision jumpCoilProperty