initialization
createOccupiedFields
	| occupiedFields |
 	occupiedFields := (Matrix
		rows:  self metadata tileQuantityHorizontal
		columns: self metadata tileQuantityVertical).
	 occupiedFields atAllPut: false.
	^ occupiedFields