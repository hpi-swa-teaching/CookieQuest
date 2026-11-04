accessing
filename
	"replaces '/' with '\\', if running on a Windows platform"

	| osSpecificFilename |
	osSpecificFilename := filename.
	(Smalltalk platformName = 'Win32')
		ifTrue:
			[ osSpecificFilename := filename copyReplaceAll: '/' with: '\' ].
	^ osSpecificFilename