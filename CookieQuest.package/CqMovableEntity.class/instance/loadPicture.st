state actions
loadPicture

	| image verticalOffset |
	image := (self level assetLoader getSprite: self filename) asMorph.
	verticalOffset := self picture extent y - image extent y.
	image 
		isOpaque: false;
		position: self position.
	self
		removeMorph: self picture;
		picture: image;
		extent: image extent;
		addMorph: image;
		position: self position + (0 @ verticalOffset)