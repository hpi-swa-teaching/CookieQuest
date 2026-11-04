physics
directionRelativeTo: aMorph with: secondsPassed
	"Answer the collision direction relative to the given morph respecting the elapsed time."

	| effectiveVelocity |
	effectiveVelocity := self calculateEffectiveVelocity: secondsPassed.
	(effectiveVelocity x = 0)
		ifTrue: [^ self directionFor: self class verticalAxisToken with: effectiveVelocity].
	(effectiveVelocity y = 0)
		ifTrue: [^ self directionFor: self class horizontalAxisToken with: effectiveVelocity].
	
	^ self
		directionFor: (self axisFromPenetrationDepthTo: aMorph with: effectiveVelocity)
		with: effectiveVelocity