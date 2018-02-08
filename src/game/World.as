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
			vertices.push(new Vertex([100, 100, 50]));
			vertices.push(new Vertex([200, 100, 50]));
			vertices.push(new Vertex([100, 200, 50]));
			vertices.push(new Vertex([200, 200, 50]));			
			vertices.push(new Vertex([100, 100, -50]));			
			vertices.push(new Vertex([200, 100, -50]));
			vertices.push(new Vertex([100, 200, -50]));
			vertices.push(new Vertex([200, 200, -50]));
		}
		
	}

}