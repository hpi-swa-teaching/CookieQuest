level state management
exitContent

	self content pauseBackgroundSound.
	self cookieMonster level: (CqNullLevel newFrom: self assetLoader).