instance creation
newFrom: aLevel withMetadata: anEntityMetadata
	
	^ (super newFrom: aLevel withMetadata: anEntityMetadata)
		destination: (anEntityMetadata properties at: #destination)
	