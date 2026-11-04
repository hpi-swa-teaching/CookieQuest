registration
updateCollisionStrategiesForTile

	self entity
		removeAllCollisionStrategiesFor: CqCollision tileProperty;
		registerCollisionStrategy: (CqPerformStrategyIf 
			newFrom: CqCondition fromHorizontalCollisionCondition conditionBlock
			with: CqTurnStrategy new)
			for: CqCollision tileProperty;
		registerCollisionStrategy: CqAddGroundResistanceStrategy new
			for: CqCollision tileProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: CqCondition fromHorizontalCollisionCondition conditionBlock
			with: CqInvertHorizontalVelocityStrategy new)
			for: CqCollision tileProperty;
		registerCollisionStrategy: CqBlockingCollideStrategy new
			for: CqCollision tileProperty