logic
and: aCondition

	^ self class new conditionBlock: [:aCollision | 
		(self conditionBlock value: aCollision)
		and: [aCondition conditionBlock value: aCollision]]