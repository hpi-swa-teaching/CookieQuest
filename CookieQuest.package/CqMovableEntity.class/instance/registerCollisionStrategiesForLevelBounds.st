registration
registerCollisionStrategiesForLevelBounds

	self
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: (CqCondition fromAboveCollisionCondition conditionBlock)
			with: CqDieStrategy new)
			for: CqCollision levelProperty;
		registerCollisionStrategy: CqBlockingCollideStrategy new
			for: CqCollision levelProperty