registration
registerCollisionStrategiesForKillableByJump

	self
		registerCollisionStrategy: (CqPerformStrategyIf 
			newFrom: CqCondition fromJumpingOnItCondition negate conditionBlock
			with: CqDieStrategy new)
			for: CqCollision killableByJumpProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: CqCondition fromJumpingOnItCondition conditionBlock
			with: CqVerticalVelocityToJumpinessStrategy new)
			for: CqCollision killableByJumpProperty;
		registerCollisionStrategy: CqBlockingCollideStrategy new
			for: CqCollision killableByJumpProperty