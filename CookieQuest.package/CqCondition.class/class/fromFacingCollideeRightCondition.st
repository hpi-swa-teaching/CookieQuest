instance creation
fromFacingCollideeRightCondition

	^ self new conditionBlock: [:aCollision |
		(aCollision direction == CqCollision directionLeft)
		and: [aCollision collider activeState directionToken == CqRightState stateToken]] 