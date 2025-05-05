if (place_meeting(x, y, obj_player)) {
    with (obj_player) {
        audio_play_sound(snd_item, 1, false); // false = não repetir
        pulo = 15; // Ativa o super pulo
        super_pulo_ativo = true;
        super_pulo_timer = room_speed * 5; // 5 segundos
    }
    instance_destroy(); // Some o power-up
}
