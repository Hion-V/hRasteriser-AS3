package game 
{
	import Geometry.Triangle;
	import Geometry.Vertex;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class World 
	{
		public var vertices:Array = [];
		public var geometry:Array = [];
		public function World() 
		{
			geometry.push(new Triangle(new Vertex([0,0,0]),new Vertex([100,100,0]),new Vertex([200,0,0])));
			vertices[0] = new Vertex([100,100,50]);
			vertices[1] = new Vertex([200,100,50]);
			vertices[2] = new Vertex([100,200,50]);
			vertices[3] = new Vertex([200,200,50]);
			vertices[4] = new Vertex([100,100,-50]);
			vertices[5] = new Vertex([200,100,-50]);
			vertices[6] = new Vertex([100,200,-50]);
			vertices[7] = new Vertex([200,200,-50]);
		}
		
	}

}