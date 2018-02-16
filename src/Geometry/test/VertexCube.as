package Geometry.test 
{
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	import Geometry.Vertex;
	
	public class VertexCube 
	{
		public var vertices:Array = [];
		public function VertexCube(xOffset:int = 0, yOffset:int = 0, zOffset:int = 0, width:int = 100, length:int = 100, height:int = 100) 
		{
			vertices.push(new Vertex([-width/2+xOffset, -length/2+yOffset, height/2+zOffset]));
			vertices.push(new Vertex([width/2+xOffset, -length/2+yOffset, height/2+zOffset]));
			vertices.push(new Vertex([-width/2+xOffset, length/2+yOffset, height/2+zOffset]));
			vertices.push(new Vertex([width/2+xOffset, length/2+yOffset, height/2+zOffset]));			
			vertices.push(new Vertex([-width/2+xOffset, -length/2+yOffset, -height/2+zOffset]));			
			vertices.push(new Vertex([width/2+xOffset, -length/2+yOffset, -height/2+zOffset]));
			vertices.push(new Vertex([-width/2+xOffset, length/2+yOffset, -height/2+zOffset]));
			vertices.push(new Vertex([width/2+xOffset, length/2+yOffset, -height/2+zOffset]));
		}
		
	}

}