if(instance_exists(obj_player)) {
    var tiro = instance_create_layer(x, y, "inimigo", obj_tiro_boss);
    
    // Faz o tiro ir na direção do player
    tiro.direction = point_direction(x, y, obj_player.x, obj_player.y);
    tiro.speed = 20;
}

// Reinicia o alarm pra continuar atirando
alarm[0] = room_speed * 2; // 2 segundos entre cada tiro
