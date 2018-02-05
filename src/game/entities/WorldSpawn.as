package game.entities 
{
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	import game.Game;
	import flash.display.BitmapData;
	import flash.display.Bitmap;
	import Render;
	public class WorldSpawn extends Entity 
	{
		public var theBitMapData:BitmapData;
		public var theBitMap:Bitmap;
		public function WorldSpawn() 
		{
			super();
			theBitMapData = new BitmapData(Game.screenWidth, Game.screenHeight);
			theBitMap = new Bitmap();
			Render.stage.addChild(theBitMap);
		}
		override public function think():void
		{
			theBitMapData = new BitmapData(Game.screenWidth, Game.screenHeight);
			theBitMap.bitmapData = theBitMapData;
		}
		
	}

}