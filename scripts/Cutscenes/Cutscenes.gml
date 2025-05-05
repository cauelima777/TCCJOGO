// Função de espera
function cutscenes_wait(_segundos){
    obj_personagem.sprite_index = spr_player_idle; // Animação de parado
    obj_personagem.image_speed = 1;              // Controla a velocidade da animação

    timer++; // Incrementa o timer no loop principal

    if (timer >= room_speed * _segundos){
        timer = 0; // Reset do timer
        action++;  // Passa para a próxima ação
    }
}

// Função para andar para a direita
function cutscenes_walk_right(_segundos){
    obj_personagem.sprite_index = spr_player_run; // Animação de correr
    obj_personagem.image_xscale = 1;              // Olhando para a direita
    obj_personagem.image_speed = 1;             // Controla a velocidade da animação

    obj_personagem.x += 2; // Move o personagem para a direita

    timer++; // Incrementa o timer no loop principal

    if (timer >= room_speed * _segundos){
        timer = 0; // Reset do timer
        action++;  // Passa para a próxima ação
    }
}


// Função para andar para a esquerda
function cutscenes_walk_left(_segundos){
    obj_personagem.sprite_index = spr_player_run; // animação de correr
    obj_personagem.image_xscale = -1;             // olhando para a esquerda
    obj_personagem.image_speed = 1;

    obj_personagem.x -= 1; // Move o personagem para a esquerda
    timer++;
    if (timer >= room_speed * _segundos){
        timer = 0;
        action++;
    }
}


// Função para exibir o diálogo
function cutscenes_dialogue(_texto){
    obj_personagem.sprite_index = spr_player_idle; // Personagem parado enquanto fala
    obj_personagem.image_speed = 1;

    // Desenha a caixa de diálogo
    draw_set_color(c_black);
    draw_rectangle(50, 400, 590, 470, false); // Caixa de fundo
    draw_set_color(c_white);
    draw_text(60, 420, _texto); // Exibe o texto na caixa

    // Espera por input para avançar o diálogo
    if (keyboard_check_pressed(vk_space)) {
        show_text = false;
        action++;
    }
}

