// Laço atrás do coração
draw_sprite(placeholder_player_hearth, 0, 10, -30);


for (i = 0; i < vida; i++) {
    draw_sprite(spr_hearth, 0, 43 + (48 * i), 46);
}


//ADICIONA A CHAVE NA TELA

draw_sprite(spr_key,0,1270,20)
draw_text_transformed( 1250, 40, "x" + string(global.tem_chave_incremento), 1.5, 1.5, 1);


// Definir a cor do texto
draw_set_color(c_black);


draw_text_transformed(500, 100, "PROJETO EM DESENVOLVIMENTO (ALPHA)", 1.5, 1.5, 1);
