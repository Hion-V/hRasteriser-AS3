package game.entities.hud 
{
	import game.entities.Clock;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class FrameRateDisplay extends HudElement 
	{
		
		public function FrameRateDisplay() 
		{
			super();
		}
		override public function think():void
		{
			var frameRate:String = int(1000 / Clock.frameTime) + "fps"
			hudText = frameRate;
			super.think();
		}
		
	}

}