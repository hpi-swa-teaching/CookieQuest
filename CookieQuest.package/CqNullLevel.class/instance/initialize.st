initialization
initialize

	self
		metadata: CqNullLevelMetadata new;
		foregroundLayer: CqLevelTileLayer new;
		backgroundLayers: OrderedCollection new;
		entityLayer: CqLevelEntityLayer new