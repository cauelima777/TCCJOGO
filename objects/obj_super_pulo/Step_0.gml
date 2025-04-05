if (place_meeting(x, y, obj_player)) {
    with (obj_player) {
        pulo = 15; // Ativa o super pulo
        super_pulo_ativo = true;
        super_pulo_timer = room_speed * 5; // 5 segundos
    }
    instance_destroy(); // Some o power-up
}
