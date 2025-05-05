if (place_meeting(x, y, obj_player)) {
    obj_player.tem_chave = true; // O jogador agora tem a chave
	audio_play_sound(snd_item, 1, false); // false = não repetir
    instance_destroy(); // Destroi o objeto chave
	
	// Evento Collision entre o jogador e o item

    global.tem_chave_incremento += 1;

	
	
}



