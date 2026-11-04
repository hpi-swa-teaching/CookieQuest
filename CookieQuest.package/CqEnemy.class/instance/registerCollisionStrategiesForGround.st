registration
registerCollisionStrategiesForGround

	super registerCollisionStrategiesForGround.
	self registerCollisionStrategy: (CqPerformStrategyIf
		newFrom: CqCondition fromHorizontalCollisionCondition conditionBlock
		with: CqTurnStrategy new)
		for: CqCollision tileProperty