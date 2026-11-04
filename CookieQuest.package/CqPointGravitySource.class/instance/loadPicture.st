accessing
loadPicture

	| image |
	image := self level assetLoader getSprite: self filename.
	image isOpaque: false.
	self
		addMorphCentered: image;
		color: Color transparent 