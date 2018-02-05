package game.entities 
{
	import game.entities.Base;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class Entity extends game.entities.Base
	{
		public var entityIndex:int;
		public static var entityArray:Array = [];
		public static function doThink():void
		{
			for each (var i:Entity in entityArray) 
			{
				i.think();
			}
		}
		public function Entity() 
		{
			entityArray.push(this);
			entityIndex = entityArray.length - 1;
		}
		public function think():void
		{
			trace("baseentity think called");
		}
	}

}