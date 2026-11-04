resource loading
addSound: aFileName

	SampledSound
			addLibrarySoundNamed: (aFileName copyUpTo: $.)
			fromAIFFfileNamed: (self resourceSoundDirectory, aFileName)