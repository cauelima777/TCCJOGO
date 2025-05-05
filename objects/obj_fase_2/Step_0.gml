if (transicao_ativa && proxima_sala != noone) {
    opacidade += 0.05; // Aumenta a opacidade gradualmente
    if (opacidade >= 1) {
        room_goto(proxima_sala); // Vai para a próxima sala quando a opacidade estiver completa
        transicao_ativa = false; // Reinicia a transição para evitar o loop
        opacidade = 0;           // Reinicia a opacidade ao entrar na nova sala
    }
} else {
    if (opacidade > 0) opacidade -= 0.05; // Reduz a opacidade gradualmente ao retornar à fase
}



if (place_meeting(x, y, obj_player)) {
    if (obj_player.tem_chave && global.tem_chave_incremento == 2 || global.tem_chave_incremento > 2 ){
        if (room != room_last) {
            // A transição será ativada quando o jogador apertar a tecla Enter
            if (keyboard_check_pressed(vk_enter)) {
                transicao_ativa = true;        // Ativa a transição antes de mudar de fase
                proxima_sala = rm_nivel2;      // Define a próxima fase para rm_nivel2
            }
        }
    
	}
	} 