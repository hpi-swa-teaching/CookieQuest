physics
basicPosition: aPoint
	"mostly copied from morph>>position: "
	
	| delta box |
	delta := (aPoint - bounds topLeft) rounded.
	(delta x = 0 and: [delta y = 0])
		ifTrue: [^ self].
	box := self fullBounds.
	(delta dotProduct: delta) > 100
		ifTrue: [
			self 
				invalidRect: box;
				invalidRect: (box translateBy: delta)]
		ifFalse: [
			self
				invalidRect: (box
				merge: (box translateBy: delta))].
	"changed the following line
	--> want to call default method not our own implementation"
	super privateFullMoveBy: delta.
	owner
		ifNotNil: [owner layoutChanged]