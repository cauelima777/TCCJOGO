if (opacidade > 0) {
    draw_set_alpha(opacidade);
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false); // Desenha uma tela preta sobre toda a GUI
    draw_set_alpha(1); // Restaura a opacidade para outros elementos
}
