accessing
getTextAsMorph: aText

	| morph currentWidth fullWidth fullHeight |
	morph := (Morph new) color: Color transparent.
	currentWidth := 0.
	fullHeight := 0.
	aText do: [ :each |
		| currentLetter |
		currentLetter := (self fontMapping at: each) asMorph.
		morph addMorph: currentLetter.
		currentLetter position: currentWidth @ 0.
		currentWidth := currentWidth + currentLetter extent x + self spacing.
		(currentLetter extent y > fullHeight) ifTrue: [ fullHeight := currentLetter extent y ] ].
	fullWidth := { 0 . (currentWidth - self spacing) } max.
	morph extent: (fullWidth @ fullHeight).
	^ morph