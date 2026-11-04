accessing
text: aText

	| morph |
	(self text = aText) ifTrue: [^ self].
	text := aText.
	self submorphs do: [ :each | each abandon ].
	morph := self font getTextAsMorph: aText.
	self extent: morph extent.
	self addMorphCentered: morph.