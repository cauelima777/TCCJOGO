// Laço atrás do coração
draw_sprite(placeholder_player_hearth, 0, 10, -30);


for (i = 0; i < vida; i++) {
    draw_sprite(spr_hearth, 0, 43 + (48 * i), 46);
}










//ADICIONA A CHAVE NA TELA

draw_sprite(spr_key,0,1270,20)
draw_text_transformed( 1250, 40, "x" + string(global.tem_chave_incremento), 1.5, 1.5, 1);

if (global.pause) {
	draw_set_color(c_white);
	draw_text_transformed( 1250, 40, "x" + string(global.tem_chave_incremento), 1.5, 1.5, 1);
}

if(rm_nivel1){


	draw_set_color(c_white);
	
	draw_text_transformed( 1250, 40, "x" + string(global.tem_chave_incremento), 1.5, 1.5, 1);
}


if(rm_nivel1){

	draw_set_color(c_white);
	draw_text_transformed(500, 100, "PROJETO EM DESENVOLVIMENTO (ALPHA)", 1.5, 1.5, 1);
}
// Definir a cor do texto
draw_set_color(c_black);


draw_text_transformed(500, 100, "PROJETO EM DESENVOLVIMENTO (ALPHA)", 1.5, 1.5, 1);



if (global.pause) {
	draw_set_color(c_white);
	draw_text_transformed(700, 400, "PAUSADO", 1.5, 1.5, 1);
	


}

if (super_pulo_ativo) {
    draw_set_color(c_white);
    draw_set_font(-1); // Usa fonte padrão, mas pode trocar
    var segundos = ceil(super_pulo_timer / room_speed);
    draw_text(20, 20, "Super pulo: " + string(segundos) + "s");
}




