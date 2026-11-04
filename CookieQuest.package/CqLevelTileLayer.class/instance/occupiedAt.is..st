collision detection
occupiedAt: anIndex is: aBool

	| x y |
	x := anIndex \\ self metadata tileQuantityHorizontal + 1.
	y := anIndex // self metadata tileQuantityHorizontal + 1.
	self occupiedFields at: x at: y put: aBool