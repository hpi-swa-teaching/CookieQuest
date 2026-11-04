registration
registerCollisionStrategiesForCookieMonster

	super registerCollisionStrategiesForCookieMonster.
	self registerCollisionStrategy: (CqPerformStrategyIf
		newFrom: CqCondition fromCollideeJumpingOnItCondition conditionBlock
		with: CqFallStrategy new)
		for: CqCollision cookieMonsterProperty