instance creation
newFrom: aCookieQuestInstance

	| blocks |
	blocks := self new.
	blocks
		loadLevelBlock: [:aLevel | aCookieQuestInstance loadLevel: aLevel];
		loadFirstLevelBlock: [aCookieQuestInstance loadFirstLevel];
		reloadLevelBlock: [aCookieQuestInstance reloadLevel];
		cookieMonsterDieBlock: [aCookieQuestInstance cookieMonsterDie];
		gameOverBlock: [aCookieQuestInstance gameOver];
		cookieMonsterLifeQuantityGetterBlock: [aCookieQuestInstance cookieMonster lifeQuantity];
		exitBlock: [aCookieQuestInstance exit].
	^ blocks