registration
updateCollisionStrategiesForCookieMonster

	self entity
		removeAllCollisionStrategiesFor: CqCollision cookieMonsterProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: CqCondition fromCollideeMaxiCondition conditionBlock
			with: CqDieStrategy new)
			for: CqCollision cookieMonsterProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: CqCondition fromFacingCollideeCondition conditionBlock
			with: CqTurnStrategy new)
			for: CqCollision cookieMonsterProperty;
		registerCollisionStrategy: CqSpinStrategy new
			for: CqCollision cookieMonsterProperty