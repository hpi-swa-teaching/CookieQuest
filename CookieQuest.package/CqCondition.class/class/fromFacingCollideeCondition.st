instance creation
fromFacingCollideeCondition

	^ self new conditionBlock:
		[:aCollision | 
		(self fromFacingCollideeRightCondition conditionBlock value: aCollision)
		| (self fromFacingCollideeLeftCondition conditionBlock value: aCollision)] 