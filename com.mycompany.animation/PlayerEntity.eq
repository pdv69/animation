
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity : SEEntity
{

	SESprite player;
	int w;
	int h;
	int wp;
	int hp;
	
	public void initialize(SEResourceCache rsc) {
		
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();

		rsc.prepare_image("myplayer", "demon", 0.15 * w, 0.2 * h);
		player = add_sprite_for_image(SEImage.for_resource("myplayer"));

		
		wp = player.get_width();
		hp = player.get_height();

		player.move(0.5 * w - 0.5 * wp, 0.5 * h - 0.5 * hp);
	}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		player.move(MainScene.x, MainScene.y);
	}
}
