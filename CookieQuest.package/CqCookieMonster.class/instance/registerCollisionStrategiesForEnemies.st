registration
registerCollisionStrategiesForEnemies

	self
		registerCollisionStrategy: CqDieStrategy new
			for: CqCollision deadlyProperty;
		registerCollisionStrategy: CqBlockingCollideStrategy new
			for: CqCollision deadlyProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: (CqCondition fromColliderMiniCondition conditionBlock)
			with: CqDieStrategy new)
			for: CqCollision smallEnemyProperty; 
		registerCollisionStrategiesForSpinnable;
		registerCollisionStrategiesForBalloonified;
		registerCollisionStrategiesForKillableByJump