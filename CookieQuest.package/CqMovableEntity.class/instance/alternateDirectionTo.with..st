physics
alternateDirectionTo: aDirection with: secondsPassed
	"Answer the alternative collision direction to the given direction,
	i.e. calculate the collision direction but answering aDirection isn't allowed."

	| effectiveVelocity |
	effectiveVelocity := self velocity + (0.5 * self currentAcceleration * secondsPassed).
	(aDirection == CqCollision directionAbove) | (aDirection == CqCollision directionBelow)
		ifTrue: [^ self directionFor: self class horizontalAxisToken with: effectiveVelocity]
		ifFalse: [^ self directionFor: self class verticalAxisToken with: effectiveVelocity]