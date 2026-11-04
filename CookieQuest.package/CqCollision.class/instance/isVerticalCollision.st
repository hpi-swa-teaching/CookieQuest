testing
isVerticalCollision
	
	| verticalDirections |
	verticalDirections := {self class directionBelow. self class directionAbove}.
	^ verticalDirections includes: self direction 