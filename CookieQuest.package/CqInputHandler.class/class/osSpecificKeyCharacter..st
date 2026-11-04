os compatibility
osSpecificKeyCharacter: aKeyCharacter

	(Smalltalk platformName = 'Mac OS')
		ifTrue:
			[ ^ self osxKeyMapping at: (aKeyCharacter asUnicode) ]
		ifFalse:
			[ ^ aKeyCharacter ]