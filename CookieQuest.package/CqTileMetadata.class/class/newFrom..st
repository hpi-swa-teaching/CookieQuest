instance creation
newFrom: aDictionary

	| metadata |
	metadata := self new.
	^ metadata
		filename: 'CookieQuest/tilesets/',(aDictionary at: #path);
		tileType: (aDictionary at: #tileType ifAbsent: #default)