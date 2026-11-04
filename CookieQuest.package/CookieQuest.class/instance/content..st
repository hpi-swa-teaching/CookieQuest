level state management
content: aMorph

	self viewport removeAllMorphs.
	self basicContent: aMorph.
	aMorph playBackgroundSound.
	self viewport addMorph: aMorph