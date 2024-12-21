// Etapa
if (!transitioning) { // Apenas controla o fade se não estiver em transição
    // Controle do fade in e fade out
    if (fading_in) {
        alpha += fade_speed; // Aumenta a opacidade
        if (alpha >= 1) {
            alpha = 1; // Garante que alpha não exceda 1
            time_counter += 1; // Aumenta o contador de tempo
            
            // Quando o logo estiver totalmente visível, começa a contar o tempo
            if (time_counter > display_time) {
                fading_in = false; // Começa o fade out após o tempo limite
            }
        }
    } else {
        alpha -= fade_speed; // Diminui a opacidade
        if (alpha <= 0) {
            alpha = 0; // Garante que a alpha não fique negativa
            time_counter = 0; // Reinicia o contador de tempo
            logo_index += 1; // Avança para o próximo logo
            fading_in = true; // Reinicia o fade in para o próximo logo
            
            // Verifica se todos os logos já foram mostrados
            if (logo_index >= array_length(logos)) {
                room_goto(rm_menu); // Vai para o menu principal após o último logo
            }
        }
    }
} else {
    // Se estiver em transição, controla o fade out
    alpha -= fade_speed; // Faz o fade out
    if (alpha <= 0) {
        alpha = 0; // Garante que a alpha não fique negativa
        room_goto(rm_menu); // Vai para o menu principal
    }
}
