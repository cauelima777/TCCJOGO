// Step Event
if (action < array_length_1d(cutscene)) {
    var _current_action = cutscene[action];
    
    // Se for uma ação de diálogo
    if (_current_action[0] == cutscenes_dialogue) {
        current_dialogue = _current_action[1];  // Define o texto do diálogo
        show_text = true;  // Exibe o texto
        action++;          // Avança para a próxima ação

        // Aguardar o pressionamento da tecla para avançar
        if (keyboard_check_pressed(ord("M"))) {
            show_text = false;  // Fecha o texto atual
            action++;           // Avança para a próxima ação
        }
    } else {
        // Executa ações como andar, esperar, etc.
        script_execute(_current_action[0], _current_action[1]);

        if (timer >= room_speed * _current_action[1]) {
            timer = 0;
            action++;
        }
    }
} else {
    instance_destroy(); // Destrói o objeto após a cutscene terminar
}
