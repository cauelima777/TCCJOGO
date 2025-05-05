if (place_meeting(x, y + 1, obj_block)) {
    draw_set_color(c_green); // Está no chão
} else {
    draw_set_color(c_red);   // Está no ar
}
draw_self();
