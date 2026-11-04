instance creation
newFrom: aConditionBlock with: aStrategy

	^ self new
		conditionBlock: aConditionBlock;
		strategy: aStrategy