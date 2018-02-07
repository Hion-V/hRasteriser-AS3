package 
{
	/**
	 * ...
	 * @author Andreas Schaafsma
	 */
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.geom.Point;
	
	import Geometry.Vertex;
	
	import Logic.Vec3d;
	import Logic.Math3d;
	import Logic.Point3D;
	
	import game.Game;
	import game.World;
	import game.entities.WorldSpawn;
	import game.entities.hud.FrameRateDisplay
	import game.entities.hud.ButtonPressDisplay;
	
	public class Render 
	{
		public static var graphics:Graphics;
		public static var stage:Object;
		public static var sprite1:Sprite;
		public static var sprite2:Sprite;
		public static var sprite3:Sprite;
		public static var perspective:int = 2;
		public static var world:World = new World();
		public static function doRender():void
		{
		}
		public static function drawHud():void
		{
			var fpsDisp:FrameRateDisplay = new FrameRateDisplay();
			var btnDisp:ButtonPressDisplay = new ButtonPressDisplay();
			fpsDisp.elementBitmap.scaleX = fpsDisp.elementBitmap.scaleY = 
			btnDisp.elementBitmap.scaleX = btnDisp.elementBitmap.scaleY = 3;
			btnDisp.elementBitmap.y = 3 * 8 + 3;
		}
		public static function drawLine(p1:Point, p2:Point, lineThickness:Number, lineColor:uint):void
		{
			graphics.lineStyle(lineThickness,lineColor);
			graphics.moveTo(p1.x, p1.y);
			graphics.lineTo(p2.x, p2.y);
		}
		public static function drawCircle(position:Point, radius:int = 1, color:uint = 0):void
		{
			graphics.lineStyle(0);
			graphics.beginFill(color);
			graphics.drawCircle(position.x, position.y, radius);
			graphics.endFill();
		}
		/*
		 * RENDERWORLD
		 * 
		 * 
		 * PERSPECTIVE = 0 TOPDOWN
		 * PERSPECTIVE = 1 TOPDOWN FOLLOWING CAM
		 * PERSPECTIVE = 2 FPP
		 */
		public static function renderWorld():void
		{
			
			var cam:Logic.Vec3d = game.Game.player.cam;
			if (perspective == 0){
				graphics = sprite1.graphics;
				graphics.clear();
				graphics.beginFill(0x00ff00);
				graphics.drawRect(0,0,800,600)
				graphics.endFill();
				Render.drawCircle(new Point(cam.x, cam.y), 8, 0x000000);
				Render.drawLine(new Point(cam.x, cam.y), new Point(cam.x + cam.xOff, cam.y + cam.yOff), 1, 0);
				drawPoints(perspective);
			}
			if (perspective == 1){
				graphics = sprite3.graphics;
				graphics.clear();
				graphics.beginFill(0xffff00);
				graphics.drawRect(0,0,800,600)
				graphics.endFill();
				Render.drawCircle(new Point(screenSpaceOrigin.x, screenSpaceOrigin.y), 8, 0x000000);
				//Render.drawLine(new Point(screenSpaceOrigin.x, screenSpaceOrigin.y), new Point(screenSpaceOrigin.x+ cam.mag, screenSpaceOrigin.y), 1, 0);
				drawPoints(perspective);
			}
			if (perspective == 2){
				graphics = sprite3.graphics;
				graphics.clear();
				graphics.beginFill(0x0000ff);
				graphics.drawRect(0,0,800,600)
				graphics.endFill();
				Render.drawCircle(new Point(screenSpaceOrigin.x, screenSpaceOrigin.y), 8, 0x000000);
				//Render.drawLine(new Point(screenSpaceOrigin.x, screenSpaceOrigin.y), new Point(screenSpaceOrigin.x+ cam.mag, screenSpaceOrigin.y), 1, 0);
				drawPoints(perspective);
			}
		}
		public static var screenSpaceOrigin:Logic.Point3D = new Logic.Point3D(400, 300, 0);
		public static function drawPoints(perspective:int):void
		{
			var cam:Logic.Vec3d = game.Game.player.cam;
			if(perspective == 0){
				for each (var i:Vertex in world.vertices) 
				{
					Render.drawCircle(new Point(i.x, i.y), 8, 0xff0000);
				}
			}
			else if(perspective == 1){
				for each (var j:Vertex in world.vertices) 
				{
					var a:Point3D = Logic.Math3d.globalToLocal2D(cam,j,screenSpaceOrigin)
					Render.drawCircle(new Point(a.x,a.y), 8, 0xff0000);
				}
			}
			else if(perspective == 2){
				for each (var k:Vertex in world.vertices) 
				{
					Render.drawCircle(Logic.Math3d.toScreenSpace(cam, k),8,0xff0000);
				}
			}
		}
		public static var worldSpawn:WorldSpawn;
		public static function drawPixel(pixel:Point):void
		{
			//worldSpawn.theBitMapData.setPixel(pixel.x, pixel.y,0x000000);
		}
	}

}