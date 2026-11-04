instance creation
newFrom: aPosition with: anAssetLoader

	| display padding cookie life cookietext lifetext font offset |
	
	offset := 10.
	padding := 5.
	display := CqHeadUpDisplay new.
	display position: aPosition.
	cookie := anAssetLoader getSprite: 'cookie.gif'.
	cookie position: display position + offset.
	life := anAssetLoader getSprite: 'cmlife.gif'.
	life position: (display position x + offset) @ (display position y + offset + cookie height + padding).
	font := CqPixmapFont newFrom: 'numbers20' withSpacing: 4.
	cookietext := CqPixmapText newFrom: font.
	cookietext position: (cookie position x + cookie width + padding) @ (cookie position y).
	lifetext := CqPixmapText newFrom: font.
	lifetext position: (life position x + life width + padding) @ (life position y).
	^ display
		cookiePicture: cookie;
		addMorph: display cookiePicture;
		cookieNumber: cookietext;
		addMorph: display cookieNumber;
		lifePicture: life;
		addMorph: display lifePicture;
		lifeNumber: lifetext;
		addMorph: display lifeNumber