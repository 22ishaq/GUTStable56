
draw_sprite_stretched(Sprite10, 0, 0, 0, room_width, room_height);

draw_sprite_ext(spr_harry_idle, 0, harry_x, harry_y, char_scale, char_scale, 0, c_white, 1);

if (state == "WALK") {
    if ((walk_timer % 30) < 15) {
        draw_sprite_ext(spr_chris_walk1, 0, chris_x, chris_y, char_scale, char_scale, 0, c_white, 1);
    } else {
        draw_sprite_ext(spr_chris_walk2, 0, chris_x, chris_y, char_scale, char_scale, 0, c_white, 1);
    }
} 
else {
    draw_sprite_ext(spr_chris_idle, 0, chris_x, chris_y, char_scale, char_scale, 0, c_white, 1);
}