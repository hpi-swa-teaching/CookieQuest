level state management
loadLevel: aLevelName

	| level |
	self display turnOnDisplay.
	self exitContent.
	level := (self assetLoader loadLevel: aLevelName withCookieMonster: self cookieMonster).
	self
		currentLevelName: aLevelName;
		content: level.
	self cookieMonster level: level.
	self cookieMonster applyLevelGravity