
/*
 * GameOverScene
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOverScene: SEScene
{
		SESprite text1;
		SESprite text2;
		public void initialize(SEResourceCache rsc) {
			base.initialize(rsc);
			add_entity(SESpriteEntity.for_color(Color.instance("black"), get_scene_width(), get_scene_height()));
			rsc.prepare_font("myfont", "tahoma bold color=white", 80);
			text1 = add_sprite_for_text("GAME OVER", "myfont");
			text1.move(0.35*get_scene_width(), 0.35*get_scene_height());
			text2 = add_sprite_for_text("Play Again", "myfont");
			text2.move(0.35*get_scene_width(), 0.60*get_scene_height());
			AudioClipManager.prepare("scream");
			AudioClipManager.play("scream");
		}

		public void on_pointer_press(SEPointerInfo pi) {
			base.on_pointer_press(pi);
			if(pi.is_inside(0.35*get_scene_width(),0.60*get_scene_height(), 0.50 * get_scene_width(), 0.80 * get_scene_height())) {
				switch_scene(new MainScene());
			}

		}

		public void cleanup() {
			base.cleanup();
		}
}
