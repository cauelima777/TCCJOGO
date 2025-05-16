// Evento Step

if (global.pause) {
    exit;
}

// Dano ao ser pisado
if (obj_player.y < y && place_meeting(x, y - 1, obj_player)) {
    if (obj_player.velocidade_vertical > 0) {
        obj_player.velocidade_vertical = -obj_player.pulo;
        vida -= 1;
    }
}


if(place_meeting(x + 1, y, obj_colision_enemy) || place_meeting(x + 1, y, obj_colision_enemy)){

	direction +=180;

	
}



// Ativação do poder de chuva
tempo_ataque += 1;
if (tempo_ataque >= tempo_max) {
    // Cria vários projéteis descendo do céu
    for (var i = 0; i < 5; i++) {
        var chuva = instance_create_layer(x - 200 + i * 200, y - 250, "inimigo", obj_chuva);
    }
    tempo_ataque = 0;
}

// Morte do boss
if (vida <= 0) {
    instance_destroy();
}
