registration
registerCollisionStrategiesForSpinnable

	self
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: (CqCondition fromJumpingOnItCondition negate
				and: CqCondition fromCollideeInShellCondition negate) conditionBlock
			with: CqDieStrategy new)
			for: CqCollision spinnableProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: (CqCondition fromJumpingOnItCondition conditionBlock)
			with: CqVerticalVelocityToJumpinessStrategy new)
			for: CqCollision spinnableProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: CqCondition fromCollideeInShellCondition conditionBlock
			with: CqBlockingCollideStrategy new)
			for: CqCollision spinnableProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: CqCondition fromJumpingOnItCondition conditionBlock
			with: CqBlockingCollideStrategy new)
			for: CqCollision spinnableProperty;
		registerCollisionStrategy: (CqPerformStrategyIf
			newFrom: (CqCondition fromHorizontalCollisionCondition
				and: CqCondition fromCollideeInShellCondition) conditionBlock
			with: CqLittleBounceAwayStrategy new)
			for: CqCollision spinnableProperty