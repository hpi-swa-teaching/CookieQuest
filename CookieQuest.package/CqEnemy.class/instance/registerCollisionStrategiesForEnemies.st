registration
registerCollisionStrategiesForEnemies

	self
		registerCollisionStrategiesForCookieMonster;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: CqCondition fromCollideeSpinningCondition conditionBlock
			with: CqDieStrategy new)
			for: CqCollision spinnableProperty