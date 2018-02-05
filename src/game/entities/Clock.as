package game.entities 
{
	import game.entities.Entity;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	import flash.utils.getTimer;
	public class Clock extends Entity
	{
		public static var lastTime:int = 0;
		public static var alternator:int = 0;
		public static var currentTime:int = 0
		public static var frameTime:int = 0;
		public function Clock()
		{
			super();
		}
		override public function think():void
		{
			currentTime = getTimer();
			frameTime = currentTime - lastTime;
			game.entities.Base.timeElapsed = frameTime;
			lastTime = currentTime;
		}
		
	}

}