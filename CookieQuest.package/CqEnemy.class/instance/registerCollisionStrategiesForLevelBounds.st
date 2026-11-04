registration
registerCollisionStrategiesForLevelBounds

	super registerCollisionStrategiesForLevelBounds.
	self registerCollisionStrategy: (CqPerformStrategyIf
		newFrom: CqCondition fromHorizontalCollisionCondition conditionBlock
		with: CqTurnStrategy new)
		for: CqCollision levelProperty