instance creation
start

	| instance |
	instance := self new.
	World addMorphCentered: instance.
	^ instance