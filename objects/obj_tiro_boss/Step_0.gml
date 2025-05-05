// Movimento normal
if (global.pause) {
    speed = 0;
    exit;
}

if (place_meeting(x, y, obj_player)) {
    with (obj_player) {
        vida -= 1;
    }
    instance_destroy();
}

if (place_meeting(x, y, obj_block)) {
    instance_destroy();
}
