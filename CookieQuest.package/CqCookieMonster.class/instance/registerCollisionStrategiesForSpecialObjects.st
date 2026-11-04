registration
registerCollisionStrategiesForSpecialObjects

	self
		registerCollisionStrategy: CqLoadNextLevelStrategy new
			for: CqCollision cookieMonsterGoalProperty;
		registerCollisionStrategy: CqTeleportStrategy new
			for: CqCollision portalProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: CqCondition fromAboveCollisionCondition conditionBlock
			with: CqInheritAccelerationStrategy new)
			for: CqCollision platformProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: CqCondition fromAboveCollisionCondition conditionBlock
			with: CqInheritVelocityStrategy new)
			for: CqCollision platformProperty;
		registerCollisionStrategy: CqAddPointGravityStrategy new
			for: CqCollision pointGravitySourceProperty