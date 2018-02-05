package
{
	import Logic.Vec3d;
	import Logic.Input;
	import Logic.Point3D;
	import game.Game;
	import game.Screen;
	import game.entities.Base;
	import game.entities.Clock;
	import game.entities.Entity;
	import game.entities.WorldSpawn;
	import game.entities.hud.ButtonPressDisplay;
	import game.entities.hud.FrameRateDisplay;
	import game.entities.hud.HudElement;
	import com.adobe.tvsdk.mediacore.events.NotificationEvent;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	public class Main extends Sprite 
	{
		
		public function Main() 
		{
			var a:Screen = new Screen();
			var b:Screen = new Screen();
			var mask1:Sprite = new Sprite();
			mask1.graphics.beginFill(0x000000);
			mask1.graphics.drawRect(0, 0, 400, 600);
			var mask2:Sprite = new Sprite();
			mask2.graphics.beginFill(0x000000);
			mask2.graphics.drawRect(400, 0, 800, 600);
			a.mask = mask1;
			b.mask = mask2;
			addChild(a);
			addChild(b);
			addChild(mask1);
			addChild(mask2);
			Render.stage = stage;
			Render.sprite1 = a;
			Render.sprite2 = b;
			Render.sprite3 = this;
			Render.graphics = graphics;
			handleEvents();
			constructWorld();
		}
		public function handleEvents():void
		{
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, Logic.Input.onKey);
			stage.addEventListener(KeyboardEvent.KEY_UP, Logic.Input.onKey);
		}
		public function constructWorld():void
		{
			//Render.worldSpawn = new WorldSpawn();
			var clock:Clock = new Clock();
			createHudElements();
			var a:Logic.Point3D = new Logic.Point3D([100, 200, 0]);
			a = new Logic.Point3D([300, 200, 0]);
		}
		public function createHudElements():void
		{
			var fpsDisp:FrameRateDisplay = new FrameRateDisplay();
			var btnDisp:ButtonPressDisplay = new ButtonPressDisplay();
			fpsDisp.elementBitmap.scaleX = fpsDisp.elementBitmap.scaleY = 
			btnDisp.elementBitmap.scaleX = btnDisp.elementBitmap.scaleY = 3;
			btnDisp.elementBitmap.y = 3 * 8 + 3;
		}
		public function onEnterFrame(e:Event):void
		{
			game.entities.Entity.doThink();
			Render.renderWorld();
		}
	}
}