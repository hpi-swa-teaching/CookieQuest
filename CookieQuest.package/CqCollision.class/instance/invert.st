inverting
invert
	"Invert the collision in order that it is described from collidee perspective."
	
	^ self
		invertEntities;
		invertDirection;
		yourself
		