if (global.pause) exit;

var chao = place_meeting(x, y + 1, obj_block);

var esquerda = keyboard_check(ord("A"));
var direita = keyboard_check(ord("D"));
var pulando = keyboard_check_pressed(ord("W"));
var habilidade = keyboard_check_pressed(ord("K"));
var superpulo = keyboard_check(ord("M"));

var avanco_h = (direita - esquerda) * velocidade_h_max;

// Controle da velocidade horizontal
velocidade_horizontal = lerp(velocidade_horizontal, avanco_h, velocidade);

if (abs(velocidade_horizontal) < 0.4) {
    velocidade_horizontal = 0;
}

if (velocidade_horizontal < 0) {
    image_xscale = -1;
} else if (velocidade_horizontal > 0) {
    image_xscale = 1;
}

if (hit > 0) {
    hit -= 0.05;
}

// Se a vida acabar, reinicia no checkpoint
if (vida <= 0) {
    x = global.checkpoint_x;
    y = global.checkpoint_y;
    vida = 3;
}

// Controle de animação e movimento vertical
if (!chao) {
    if (velocidade_vertical < 0) {
        sprite_index = spr_player_jumping;
    } else if (velocidade_vertical > 0) {
        sprite_index = spr_player_falling;
    }
    velocidade = velocidade_ar;
    velocidade_vertical += gravidade;
} else {
    if (hab_a == 0) {
        if (velocidade_horizontal == 0) {
            sprite_index = spr_player_idle;
        } else if (velocidade_horizontal != 0) {
            sprite_index = spr_player_run;
        }
    }
    velocidade = velocidade_chao;
}

// Pulo
if (chao && pulando) {
    velocidade_vertical += -pulo;
}

// Limita a velocidade horizontal
velocidade_horizontal = clamp(velocidade_horizontal, -velocidade_h_max, velocidade_h_max);

// Timer e colisão com inimigos
if (timer >= timer_max) {
    var enemy = instance_nearest(x, y, obj_enemy);
    var enemy_slime = instance_nearest(x, y, obj_enemy_slime);
	var lava = instance_nearest(x, y, obj_lava);

    if (instance_exists(enemy) && place_meeting(x, y, obj_enemy)) {
        if (velocidade_vertical <= 0) {
            if (enemy.direction == 180) {
                velocidade_horizontal -= knockback;
            } else if (enemy.direction == 0) {
                velocidade_horizontal += knockback;
            }
            vida--;
            hit = 1;
            timer = 0;
			//Caso a vida for zero encerra o bagui
			if(vida == 0){
		
				room_restart()
			}
			
        }
    }

    if (instance_exists(enemy_slime) && place_meeting(x, y, obj_enemy_slime)) {
        if (velocidade_vertical <= 0) {
            if (enemy_slime.direction == 180) {
                velocidade_horizontal -= knockback;
            } else if (enemy_slime.direction == 0) {
                velocidade_horizontal += knockback;
            }
            vida--;
            hit = 1;
            timer = 0;
			
			//Caso a vida for zero encerra o bagui
			if(vida == 0){
		
				room_restart()
			}
        }
    }
	
	//lava dos cria dando dano no player
	
	if(instance_exists(lava) && place_meeting(x, y, obj_lava)){
	
	
		vida--;
		//Caso a vida for zero encerra o bagui
		if(vida == 0){
		
			room_restart()
		}
	
	}

} else {
    timer++;
}


// Direção da habilidade
if (velocidade_horizontal < 0) {
    dir_hab = 1;
} else if (velocidade_horizontal > 0) {
    dir_hab = 0;
}

// Controle da habilidade
if (cd_hab == cd_hab_max) {
    if (habilidade) {
        var hab = instance_create_layer(x, y, "Colisores", obj_hab);

        // Direção da habilidade
        if (dir_hab == 1) {
            hab.direction = 180;
            hab.image_xscale = -1;
        } else if (dir_hab == 0) {
            hab.direction = 0;
            hab.image_xscale = 1;
        }



        cd_hab = 0;
        hab_a = 1;
    }
} else {
    cd_hab++;
}

// Controle da animação da habilidade
if (hab_a) {
    sprite_index = spr_soco;

    if (image_index > 2) {
        hab_a = 0;
    }
}
