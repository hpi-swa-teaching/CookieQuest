physics
fallofFor: aDistance
	"Answer fallof factor of the base gravity for aDistance. A linear fallof is used because of good visual/gameplay results."

	| divider |
	divider := aDistance / self pixelsPerMeter.
	divider isZero
		ifTrue: [^ Float infinity]
		ifFalse: [^ 1/divider]