event handling
handleKeyDown: anEvent

	(self pressedKeys includes: anEvent keyCharacter) ifTrue: [^ self].
	pressedKeys add: anEvent keyCharacter.
	(self keyDownActions at: anEvent keyCharacter ifAbsent: []) value.