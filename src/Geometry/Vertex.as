package Geometry 
{
	import Logic.Vec3d;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class Vertex extends Vec3d
	{
		public static var vertexArray:Array = [];
		public var vertexIndex:int;
		public var screenSpaceCoords:Array = [0, 0, 0];
		public function Vertex(i:* = "undefined") 
		{
			super();
			if (i is String){
				i = [0, 0, 0];
			}
			vertexArray.push(this);
			vertexIndex = vertexArray.length - 1;
			x = i[0];
			y = i[1];
			z = i[2];
		}
		override public function fromAngle(p1:Array, ang:Array, _mag:Number = 0):void
		{
			super.fromAngle(p1, ang, _mag);
		}
		
	}

}