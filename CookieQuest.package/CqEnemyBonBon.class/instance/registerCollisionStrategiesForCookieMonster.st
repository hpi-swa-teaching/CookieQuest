registration
registerCollisionStrategiesForCookieMonster

	super registerCollisionStrategiesForCookieMonster.
	self registerCollisionStrategy: (CqPerformStrategyIf
		newFrom: CqCondition fromCollideeJumpingOnItCondition conditionBlock
		with: CqGoInShellStrategy new)
		for: CqCollision cookieMonsterProperty