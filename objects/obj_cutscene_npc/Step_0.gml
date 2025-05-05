// Verifica se ainda há ações na cutscene
if (action < array_length_1d(cutscene)) {
    // Pega a ação e o tempo associado à ação atual
    var _current_action = cutscene[action];

    // Executa a função associada à ação com o tempo necessário
    script_execute(_current_action[0], _current_action[1]);

    // Aumenta o timer para esperar ou andar
    timer++;

    // Quando o tempo da ação atual terminar, passa para a próxima ação
    if (timer >= room_speed * _current_action[1]) {
        timer = 0;
        action++;
    }
} else {

    instance_destroy(); // Caso queira destruir o objeto quando a cutscene acabar
}
