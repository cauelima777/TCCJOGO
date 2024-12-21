// Desenhar
draw_set_alpha(alpha); // Define a opacidade para o desenho

// Verifica se há logos disponíveis para desenhar
if (logo_index < array_length(logos)) {
    // Obtém as dimensões do sprite atual
    var width_sprite = sprite_get_width(logos[logo_index]);
    var height_sprite = sprite_get_height(logos[logo_index]);

    // Calcula a posição centralizada para a resolução 1366x768
    var x_pos = (1366 / 2) - (width_sprite / 2); // Centraliza na largura
    var y_pos = (768 / 2) - (height_sprite / 2);  // Centraliza na altura

    // Desenha o logo no centro da tela
    draw_sprite(logos[logo_index], 0, x_pos, y_pos);
}

// Restaura a opacidade normal para outros desenhos
draw_set_alpha(1);
