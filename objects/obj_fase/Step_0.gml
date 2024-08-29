if (place_meeting(x, y, obj_player)) {
    if (obj_player.tem_chave && global.tem_chave_incremento == 1) {
        if (room != room_last) {
            room_goto(Room2); // Vai para a próxima fase se o jogador tem a chave
        }
		
}


if (place_meeting(x, y, obj_player)) {
    if (obj_player.tem_chave && global.tem_chave_incremento == 2) {
        if (room != room_last) {
            room_goto(Room1); // Vai para a próxima fase se o jogador tem a chave
        }
		
}


}

}