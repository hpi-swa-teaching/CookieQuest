testing
isHorizontalCollision
	
	| horizontalDirections |
	horizontalDirections := {self class directionRight. self class directionLeft}.
	^ horizontalDirections includes: self direction 