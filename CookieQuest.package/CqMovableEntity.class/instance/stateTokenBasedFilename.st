resource loading
stateTokenBasedFilename

	^ self imageDirectory,
	   self nextState stateToken,
	   self level assetLoader spriteExtension