transitions
saveCollisionStrategies
	"Save all registered collision strategies for the entity which
	owns this state."
	
	self savedCollisionStrategies: self entity collisionStrategies copy