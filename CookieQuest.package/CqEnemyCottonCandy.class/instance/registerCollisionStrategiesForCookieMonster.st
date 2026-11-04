registration
registerCollisionStrategiesForCookieMonster

	super registerCollisionStrategiesForCookieMonster.
	self registerCollisionStrategy: (CqPerformStrategyIf
		newFrom: CqCondition fromCollideeNormalSizeCondition conditionBlock
		with: CqDieStrategy new)
		for: CqCollision cookieMonsterProperty