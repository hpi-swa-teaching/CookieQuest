instance creation
fromDirectionNotEqualCondition

	^ self new conditionBlock: [:aCollision | 
		aCollision collider activeState directionToken ~= aCollision collidee state directionToken] 