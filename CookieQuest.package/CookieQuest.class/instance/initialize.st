initialization
initialize

	super initialize.
	SoundPlayer stopPlayingAll.
	self
		viewport: TransformMorph new;
		basicContent: CqNullLevel new;
		assetLoader: CqAssetLoader new;
		cookieMonster: CqCookieMonster new;
		color: Color lightGray;
		extent: self defaultExtent;
		clipSubmorphs: true;
		addMorph: viewport;
		display: (CqHeadUpDisplay newFrom: self position with: self assetLoader);
		addMorph: display;
		content: (CqNullLevel newFrom: self assetLoader);
		loadFirstLevel.
	self viewport
		extent: self extent;
		color: Color black.
	self cookieMonster levelLoadingBlocks: (CqLevelLoadingBlocks newFrom: self).
	self display turnOnDisplay
		