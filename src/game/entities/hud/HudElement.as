package game.entities.hud 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import game.entities.Entity;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class HudElement extends game.entities.Entity
	{
		public static var elementArray:Array = [];
		public var elementIndex:int;
		public var elementBitmap:Bitmap;
		public var hudText:String;
		public var elementText:Text;
		public var elementBitmapData:BitmapData;
		public function HudElement(_hudText:String = "sampletext") 
		{
			elementArray.push(this);
			elementIndex = elementArray.length - 1;
			hudText = _hudText;
			elementText = new Text();
			elementBitmapData = elementText.textToBitmap(hudText);
			elementBitmap = new Bitmap(elementBitmapData);
			Render.stage.addChild(elementBitmap);
		}
		override public function think():void
		{
			elementBitmapData = elementText.textToBitmap(hudText);
			elementBitmap.bitmapData = elementBitmapData;
		}
	}
}