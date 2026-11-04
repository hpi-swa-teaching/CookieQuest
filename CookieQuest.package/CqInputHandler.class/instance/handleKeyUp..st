event handling
handleKeyUp: anEvent

	(self pressedKeys includes: anEvent keyCharacter) ifFalse: [^ self].
	self pressedKeys remove: anEvent keyCharacter ifAbsent: [].
	(self keyUpActions at: anEvent keyCharacter ifAbsent: []) value.