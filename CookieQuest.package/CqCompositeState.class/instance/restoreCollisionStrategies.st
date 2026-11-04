transitions
restoreCollisionStrategies
	"Restore all registered collision strategies (which were
	saved previously) for the entity which owns this state."
	
	self entity collisionStrategies: self savedCollisionStrategies