initialization
loadPicture
	"Loads and displays the picture"

	| image |
	image := self level assetLoader getSprite: self filename.
	self
		addMorph: image;
		color: Color transparent;
		extent: image extent