if (boss != noone) {
    var vida_atual = boss.vida;
    var vida_maxima = 50; // ou uma variável boss.vida_maxima, se preferir

    // Tamanho da barra
    var largura_total = 200;
    var altura = 30;

    // Posição da barra
    var x_barra = (display_get_gui_width() - largura_total) / 2; // Centraliza horizontalmente
    var y_barra = 30;

    // Porcentagem de vida
    var vida_percentual = vida_atual / vida_maxima;

    // Cor do fundo da barra (vermelho)
    draw_set_color(c_black);
    draw_roundrect(x_barra - 3, y_barra - 3, x_barra + largura_total + 3, y_barra + altura + 3, 10); // Borda arredondada

    // Cor da barra de fundo (vermelho escuro)
    draw_set_color(c_red);
    draw_rectangle(x_barra, y_barra, x_barra + largura_total, y_barra + altura, false);

    // Cor da vida atual (interpolando de vermelho para verde)
    var r = c_red & 255; // Extrair o componente vermelho da cor
    var g = c_lime >> 8 & 255; // Extrair o componente verde da cor lime
    var b = c_lime >> 16 & 255; // Extrair o componente azul da cor lime

    var cor_vida_r = r + (255 - r) * vida_percentual;
    var cor_vida_g = g + (255 - g) * vida_percentual;
    var cor_vida_b = b + (255 - b) * vida_percentual;

    var cor_vida = make_color_rgb(cor_vida_r, cor_vida_g, cor_vida_b);

    // Aplica a cor de vida no retângulo
    draw_set_color(cor_vida);
    draw_rectangle(x_barra, y_barra, x_barra + (largura_total * vida_percentual), y_barra + altura, false);

    // Texto do valor de vida
    var texto_vida = string(vida_atual) + " / " + string(vida_maxima);
    var largura_texto = string_width(texto_vida); // Largura do texto para centralização
    draw_set_color(c_white); // Cor do texto (branco)
    draw_text(x_barra + (largura_total - largura_texto) / 2, y_barra + altura / 2 - 5, texto_vida); // Centraliza o texto

    // Efeito de brilho sutil na borda da barra
    draw_set_alpha(0.5);
    draw_set_color(c_white);
    draw_roundrect(x_barra - 2, y_barra - 2, x_barra + largura_total + 2, y_barra + altura + 2, 10); // Borda com brilho sutil
    draw_set_alpha(1); // Restaura a opacidade para o normal
}
