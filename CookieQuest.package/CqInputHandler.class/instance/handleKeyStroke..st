event handling
handleKeyStroke: anEvent

	(self keyStrokeActions at: anEvent keyCharacter ifAbsent: []) value