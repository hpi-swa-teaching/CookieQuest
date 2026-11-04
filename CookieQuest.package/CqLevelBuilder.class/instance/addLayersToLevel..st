level building
addLayersToLevel: aLevel

	aLevel backgroundLayers reverseDo: [:layer | aLevel addMorph: layer].
	aLevel
		addMorph: aLevel foregroundLayer;
		addMorph: aLevel entityLayer