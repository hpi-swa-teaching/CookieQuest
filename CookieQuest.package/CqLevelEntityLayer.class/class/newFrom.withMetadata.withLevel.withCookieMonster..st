instance creation
newFrom: anEntityMetadata withMetadata: aLevelMetadata withLevel: aLevel withCookieMonster: aCookieMonster

	| instance |
	instance := self new.
	instance
		metadata: aLevelMetadata;
		extent: instance metadata extent;
		color: Color transparent;
		cookieMonster: aCookieMonster.
	anEntityMetadata do:
		[ :each | instance addMorph: (self createEntityFor: aLevel with: each)].
	^ instance
		addMorph: instance cookieMonster;
		resetCookieMonster