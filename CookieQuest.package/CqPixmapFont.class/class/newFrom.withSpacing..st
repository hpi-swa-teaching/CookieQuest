instance creation
newFrom: aFontDirectoryName withSpacing: aSpacing

	| pixmapFont fileNames fontDirectory |
	pixmapFont := self new.
	fontDirectory :=
		'CookieQuest',
		FileDirectory pathNameDelimiter,
		'fonts',
		FileDirectory pathNameDelimiter,
		aFontDirectoryName,
		FileDirectory pathNameDelimiter.
	fileNames := (FileDirectory uri: fontDirectory) fileNamesMatching: '*.png'.
	fileNames do: [:fileName |
		| image |
		image := (Form fromFileNamed: (fontDirectory, fileName)).
		pixmapFont fontMapping at: (fileName readStream upToAll: '.png') asCharacter put: image ].
	pixmapFont spacing: aSpacing.
	^ pixmapFont