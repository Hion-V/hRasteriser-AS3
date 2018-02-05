package Geometry 
{
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	import Logic.Vec3d;
	import Logic.Math3d;
	import Logic.Point3D;
	public class Triangle 
	{
		public static var triangleArray:Array
		public var p1:Vertex;
		public var p2:Vertex;
		public var p3:Vertex;
		public var normal:Logic.Vec3d;
		public function Triangle(_p1:Vertex, _p2:Vertex, _p3:Vertex)
		{
			super();
			p1 = _p1;
			p2 = _p2;
			p3 = _p3;
			createTriangle();
		}
		public function createTriangle():void
		{
			p1.fromPoint([p1.x, p1.y, p2.z], [p2.x, p2.y, p2.z]);
			p2.fromPoint([p2.x, p2.y, p2.z], [p3.x, p3.y, p3.z]);
			p3.fromPoint([p3.x, p3.y, p3.z], [p1.x, p1.y, p1.z]);
			normal = new Logic.Vec3d();
			var avg:Logic.Point3D = Logic.Math3d.averagePoints([p1, p2, p3]);
			normal.fromPoint([avg.x, avg.y, avg.z], [p1.x, p1.y, p1.z]);
			normal.fromAngle([normal.x, normal.y, normal.z],[0,0,normal.degreesFromX+90],normal.mag)
		}
	}

}