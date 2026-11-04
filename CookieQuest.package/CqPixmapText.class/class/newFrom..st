instance creation
newFrom: aFont

	| pixmapText |
	pixmapText := self new.
	pixmapText font: aFont.
	^ pixmapText