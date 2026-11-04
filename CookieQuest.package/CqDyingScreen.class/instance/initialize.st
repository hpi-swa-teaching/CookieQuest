initialization
initialize

	super initialize.
	self cookieMonsterLifeQuantityText: (CqPixmapText
		newFrom: (CqPixmapFont
			newFrom: 'numbers40'
			withSpacing: 4)).
	self content addMorph: self cookieMonsterLifeQuantityText.
	self cookieMonsterLifeQuantityText position: 370@110