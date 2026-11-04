collision resolving
positionOf: aMovableEntity toDestination: aDestination withHorizontalAdjustment: anAdjustment

	aMovableEntity precisePosition: (aDestination x + anAdjustment) @ (aDestination y)