level state management
loadScreen: aScreenType

	self exitContent.
	self content:
		(aScreenType
			newFrom: (CqLevelLoadingBlocks newFrom: self)
			with: self assetLoader).