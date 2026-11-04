instance creation
withCollider: aCollider withCollidee: aCollidee from: aDirection

	| event |
	event := self new.
	event
		collider: aCollider;
		collidee: aCollidee;
		direction: aDirection.
	^ event