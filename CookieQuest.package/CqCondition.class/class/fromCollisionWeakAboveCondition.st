instance creation
fromCollisionWeakAboveCondition

	^ self new conditionBlock: [:aCollision |
		| colliderEnd collideeMiddle |
		colliderEnd := aCollision collider position y + aCollision collider height.
		collideeMiddle := aCollision collidee position y + (aCollision collidee height / 2).
		(colliderEnd < collideeMiddle) and: [aCollision collider velocity y positive]]