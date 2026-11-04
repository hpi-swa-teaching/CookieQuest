registration
registerCollisionStrategiesForCookieMonster

	super registerCollisionStrategiesForCookieMonster.
	self registerCollisionStrategy: (CqPerformStrategyIf
		newFrom: CqCondition fromCollideeJumpingOnItCondition conditionBlock
		with: CqDieStrategy new)
		for: CqCollision cookieMonsterProperty