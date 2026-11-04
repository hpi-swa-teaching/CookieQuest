registration
registerCollisionStrategiesForCookieMonster

	self registerCollisionStrategy: (CqPerformStrategyIf
		newFrom: CqCondition fromCollideeMaxiCondition conditionBlock
		with: CqDieStrategy new)
		for: CqCollision cookieMonsterProperty