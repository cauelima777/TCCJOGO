cutscene = [
    [cutscenes_wait, 5],          // Espera por 3 segundos
    [cutscenes_walk_right, 24],    // Anda para a direita por 2 segundos
    [cutscenes_wait, 1],          // Espera por 1 segundo
    [cutscenes_walk_left, 24],     // Anda para a esquerda por 2 segundos
    [cutscenes_wait, 9999]        // Fica parado no final "pra sempre"
];


// Variáveis de controle
action = 0;
timer = 0;
