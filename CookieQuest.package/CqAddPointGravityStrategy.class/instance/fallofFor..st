physics
fallofFor: aCollision

	| distance |
	distance := (aCollision collidee center - aCollision collider center) abs length.
	^ aCollision collidee fallofFor: distance