resource loading
loadLevel: aFileName withCookieMonster: aCookieMonster

	| levelFile |
	FileStream
		readOnlyFileNamed: (self levelPath: aFileName)
		do: [:stream | levelFile := STON fromStream: stream].
	^  CqLevelBuilder new buildLevelFrom: levelFile with: aCookieMonster with: self