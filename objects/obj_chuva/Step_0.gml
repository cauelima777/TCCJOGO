// Evento Step
y += velocidade;

// Dano ao encostar no player
if (place_meeting(x, y, obj_player)) {
    obj_player.vida -= 1; // ou qualquer nome de variável que represente a vida do player
    instance_destroy();
}

// Se sair da tela, destrói
if (y > room_height) {
    instance_destroy();
}
