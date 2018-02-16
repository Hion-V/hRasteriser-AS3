package game 
{
	import Geometry.test.VertexCube;
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
			geometry.push(new VertexCube(400, 300, 100, 100, 200, 300));
			for each (var a:* in geometry){
				vertices = vertices.concat(a.vertices);
			}
		}
		
	}

}