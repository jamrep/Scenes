
/*
 * Scene2
 * Created by Eqela Studio 2.0b7.4
 */

public class SecondScene : SEScene
{SESprite image2;
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
add_sprite_for_color(Color.instance("red"), get_scene_width(), get_scene_height());
                 rsc.prepare_image("b1","b1", get_scene_width(), get_scene_height());
                 image2= add_sprite_for_image(SEImage.for_resource("b1"));
                 image2.move(0,0);

	}
	 public void on_pointer_press(SEPointerInfo pi) {
            base.on_pointer_press(pi);
            if (pi.is_inside(0,0,get_scene_width(), get_scene_height())) {
                switch_scene(new Main());
            }
        } 
	public void cleanup() {
		base.cleanup();
	}
}
