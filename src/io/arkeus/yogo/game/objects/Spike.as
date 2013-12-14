package io.arkeus.yogo.game.objects {
	import io.arkeus.yogo.assets.Resource;
	import io.arkeus.yogo.game.Entity;
	import io.arkeus.yogo.game.player.Player;

	public class Spike extends Entity {
		public function Spike(x:uint, y:uint) {
			super(x, y, Resource.SPIKE);
			
			height = 8;
			width = 8;
			offset.x = 4;
			offset.y = 8;
			
			this.x += 4;
			this.y += 8;
		}
		
		override public function collide(player:Player):void {
			if (collided) {
				return;
			}
			player.destroy();
			collided = true;
		}
	}
}
