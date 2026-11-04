resource loading
loadSounds
	"Add all sound files in the sound directory to the sound library."
	
	| fileNames |
	fileNames := (FileDirectory uri: self resourceSoundDirectory) fileNamesMatching: '*', self soundExtension.
	fileNames do: [:fileName | self addSound: fileName]