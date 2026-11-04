accessing
privateFullMoveBy: delta

	super privateFullMoveBy: delta.
	self level updateLevelPosition.