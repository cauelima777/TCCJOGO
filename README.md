ATUALIZAÇÕES: 


NOVO OBJ: 

-obj_key
etapa:
if (place_meeting(x, y, obj_player)) {
    obj_player.tem_chave = true; // O jogador agora tem a chave
	
    instance_destroy(); // Destroi o objeto chave
	
	// Evento Collision entre o jogador e o item

    global.tem_chave_incremento += 1;
}






obj_player :

Criar:

//ITEM CHAVE
global.tem_chave_incremento = 0; 


(mostrar no inventário) Desenhar GUI:


//ADICIONA A CHAVE NA TELA

draw_sprite(spr_key,0,1270,20)
draw_text_transformed( 1250, 40, "x" + string(global.tem_chave_incremento), 1.5, 1.5, 1);


// Definir a cor do texto
draw_set_color(c_black);


draw_text_transformed(500, 100, "PROJETO EM DESENVOLVIMENTO (ALPHA)", 1.5, 1.5, 1);











(Gerar partícula ao colidir) obj_hab:

speed = 5


//CRIA PARTÍCULAS
// Evento Create do obj_hab
// Criar o sistema e o tipo de partícula no evento de criação
particle_system = part_system_create();
particle_type = part_type_create();

part_type_shape(particle_type, pt_shape_pixel); // Forma da partícula
part_type_size(particle_type, 10.1, 10, 0, 0);  // Tamanho mínimo e máximo
part_type_color1(particle_type, c_white);         // Cor da partícula
part_type_alpha3(particle_type, 1, 3.5, 0);     // Transparência (início -> meio -> fim)
part_type_speed(particle_type, 1, 2, 0, 0);     // Velocidade da partícula
part_type_life(particle_type, 30, 60);          // Vida útil (frames)








TILESETS: NOVOS BLOCOS
