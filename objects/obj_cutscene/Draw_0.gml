// Draw Event

if (show_text) {
    // Caixa de fundo do diálogo
    draw_set_color(c_black);
    draw_rectangle(50, 400, 590, 470, false); // Contorno
    draw_set_color(make_color_rgb(222, 184, 135)); // Cor tipo madeira clara
    draw_rectangle(52, 402, 588, 468, false); // Caixa interna
    
    // Retrato do personagem (exemplo: spr_robin)
    draw_sprite(spr_player_idle, 0, 500, 300);

    // Nome do personagem
    draw_set_color(c_black);
    draw_sprite(spr_npc, 0, 500, 300);

    // Texto com quebra de linha (simples)
    var wrapped_text = string_wrap(current_dialogue, 40); // 40 caracteres por linha (aprox.)
    draw_text(60, 420, wrapped_text);
    

}
