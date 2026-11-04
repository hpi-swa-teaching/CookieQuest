registration
registerCollisionStrategiesForBalloonified

	self
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: (CqCondition fromJumpingOnItCondition
				and: CqCondition fromCollideeFloatingCondition) conditionBlock
			with: CqVerticalVelocityToJumpinessStrategy new)
			for: CqCollision balloonifiedProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: (CqCondition fromJumpingOnItCondition negate conditionBlock)
			with: CqDieStrategy new)
			for: CqCollision balloonifiedProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: CqCondition fromCollideeFloatingCondition conditionBlock
			with: CqBlockingCollideStrategy new)
			for: CqCollision balloonifiedProperty