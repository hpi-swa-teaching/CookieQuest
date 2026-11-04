registration
updateCollisionStrategiesForCookieMonster

	self entity
		removeAllCollisionStrategiesFor: CqCollision cookieMonsterProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: CqCondition fromCollideeMaxiCondition conditionBlock
			with: CqDieStrategy new)
			for: CqCollision cookieMonsterProperty;
		registerCollisionStrategy: (CqPerformStrategyIf 
			newFrom: CqCondition fromCollideeJumpingOnItCondition conditionBlock
			with: CqGoInShellStrategy new)
			for: CqCollision cookieMonsterProperty