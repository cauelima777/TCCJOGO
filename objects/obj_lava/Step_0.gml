// Inicializa o temporizador global se não existir
if (!variable_global_exists("lava_timer")) {
    global.lava_timer = 0; // Define o temporizador inicial
}

// Verifica se o jogador está em contato com a lava
if (place_meeting(x, y, obj_player)) {
    // Incrementa o temporizador
    global.lava_timer += 1;


    if (global.lava_timer >= room_speed * 5) {
        with (obj_player) {
            vida--; // Reduz a vida do jogador
        }

        global.lava_timer = 0; // Reinicia o temporizador

        // Reinicia o jogo se a vida do jogador for 0
        if (obj_player.vida <= 0) {
            room_restart();
        }
    }
} else {
    // Reseta o temporizador se o jogador sair da lava
    global.lava_timer = 5;
}
