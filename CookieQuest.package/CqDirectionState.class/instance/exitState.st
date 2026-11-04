transitions
exitState

	self entity staticAccelerations
		removeKey: self class stateToken
		ifAbsent: [ ]