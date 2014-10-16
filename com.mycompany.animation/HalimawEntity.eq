
/*
 * HalimawEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class HalimawEntity : SEEntity
{

	SESprite halimaw;
	int w;
	int h;
	int hx;
	int hy;

	public void initialize(SEResourceCache rsc) {

		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();

		rsc.prepare_image("myhalimaw", "monster", 0.15 * w, 0.2 * h);
		halimaw = add_sprite_for_image(SEImage.for_resource("myhalimaw"));
		halimaw.move(Math.random(0,w), Math.random(0,h));
	}	

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		hx = halimaw.get_x();
		hy = halimaw.get_y();
		halimaw.move(hx + (MainScene.x - hx) / Math.random(30, 99), hy + (MainScene.y - hy) / Math.random(30, 99));
		if((hx + 0.15*w >= MainScene.x &&  hx <= MainScene.x) && (hy + 0.15*h >= MainScene.y && hy <= MainScene.y)) {
			MainScene.collide=true;
		} 
	}
}
