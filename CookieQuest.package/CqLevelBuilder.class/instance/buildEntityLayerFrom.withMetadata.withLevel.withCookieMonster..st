level building
buildEntityLayerFrom: aLevelFile withMetadata: aMetadata withLevel: aLevel withCookieMonster: aCookieMonster
	
	^ CqLevelEntityLayer
		newFrom: aLevelFile entities
       	withMetadata: aMetadata
		withLevel: aLevel
		withCookieMonster: aCookieMonster