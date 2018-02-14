package Geometry 
{
	import logic.Point3D;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class Brush 
	{
		public var squareArray:Array
		public static var brushArray:Array
		public function Brush(_squareArray:Array) 
		{
			squareArray = _squareArray;
			brushArray.push(this);
		}
	}

}