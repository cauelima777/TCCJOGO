// Tecla para baixo - A
if (keyboard_check_pressed(ord("A"))) {
    // Verifica se não está em transição já
    if (!transitioning) {
        transitioning = true; // Inicia a transição
        fading_in = false; // Começa o fade out
    }
}
