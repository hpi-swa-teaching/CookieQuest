registration
registerCollisionStrategiesForObjects

	self
		registerCollisionStrategy: CqBlockingCollideStrategy new
			for: CqCollision jumpBarrelProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: CqCondition fromHorizontalCollisionCondition conditionBlock
			with: CqTurnStrategy new)
			for: CqCollision jumpBarrelProperty;
		registerCollisionStrategy: CqBlockingCollideStrategy new
			for: CqCollision jumpCoilProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: CqCondition fromHorizontalCollisionCondition conditionBlock
			with: CqTurnStrategy new)
			for: CqCollision jumpCoilProperty