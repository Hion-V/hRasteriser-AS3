package game 
{
	import game.entities.Player;
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class Game 
	{
		public static var player:game.entities.Player = new game.entities.Player([20, 50, 0], [0, 0]);
		public static var fovHor:int = 120;
		public static var fovVert:int = 112;
		public static var screenWidth:int = 1280
		public static var screenHeight:int = 720
		public function Game() 
		{
			
		}
		
	}

}