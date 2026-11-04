instance creation
fromFacingCollideeLeftCondition

	^ self new conditionBlock: [:aCollision |
		(aCollision direction == CqCollision directionRight)
		and: [aCollision collider activeState directionToken == CqLeftState stateToken]] 