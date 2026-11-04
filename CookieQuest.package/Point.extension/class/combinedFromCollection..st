*CookieQuest-Core instance creation
combinedFromCollection: aCollection
	"Answer a new Point which is the resulting
	point of all points in the given collection"
	
	^ aCollection detectSum: [:each | each]