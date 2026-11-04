inverting
invertEntities
	"change collider with collidee"
	
	| tmpCollidex |
	tmpCollidex := self collidee.
	self collidee: self collider.
	self collider: tmpCollidex.