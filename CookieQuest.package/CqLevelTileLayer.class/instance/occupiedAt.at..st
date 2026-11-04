collision detection
occupiedAt: x at: y

	(x > self occupiedFields rowCount or: [y > self occupiedFields columnCount])
		ifTrue: [^ false].
	^ self occupiedFields at: x at: y