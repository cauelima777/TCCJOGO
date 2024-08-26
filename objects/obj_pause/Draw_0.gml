//exibindo se o jogo está pausado


if (global.pause){


	draw_set_color(c_black);
	draw_text(room_width / 2, room_height / 2, "PAUSADO")
	draw_set_color(-1);
}