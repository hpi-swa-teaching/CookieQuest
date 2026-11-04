registration
registerCollisionStrategiesForJumps

	self
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: (CqCondition fromAboveCollisionCondition conditionBlock)
			with: CqVerticalVelocityToJumpinessStrategy new)
			for: CqCollision jumpBarrelProperty;
		registerCollisionStrategy: CqBlockingCollideStrategy new
			for: CqCollision jumpBarrelProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: (CqCondition fromAboveCollisionCondition conditionBlock)
			with: CqVerticalVelocityTimesJumpinessfactorStrategy new)
			for: CqCollision jumpCoilProperty;
		registerCollisionStrategy: CqBlockingCollideStrategy new
			for: CqCollision jumpCoilProperty