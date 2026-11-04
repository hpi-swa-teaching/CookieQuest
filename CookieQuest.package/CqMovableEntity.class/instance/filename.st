resource loading
filename

	(self level assetLoader sprites keys includes: self stateTokenBasedFilename)
		ifTrue: [^ self stateTokenBasedFilename]
		ifFalse: [^ self fallbackFilename]