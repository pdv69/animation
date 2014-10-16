
/*
 * MenuScene
 * Created by Eqela Studio 2.0b7.4
 */

public class MenuScene : SEScene
{
	SESprite button;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		rsc.prepare_image("startb", "start", 0.15 * get_scene_width(), 0.25 * get_scene_height());
		button=add_sprite_for_image(SEImage.for_resource("startb"));
		button.move(0.45 * get_scene_width(), 0.35 * get_scene_height());	
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		if(pi.is_inside(0.45 * get_scene_width(),0.35 * get_scene_height(), 0.6 * get_scene_width(), 0.6 * get_scene_height())) {
				switch_scene(new MainScene());
		}
	}
}
