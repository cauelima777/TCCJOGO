tem_chave = false; // Inicialmente o jogador não tem a chave




// Evento Create do obj_player
num_espadas = 1; // Inicia com 1 espada






flash_timer = 0; // Inicializa o temporizador de piscada



//ITEM CHAVE
global.tem_chave_incremento = 0; 

persistent = true; // O jogador será o mesmo entre as rooms

velocidade = 0.1;
gravidade = 0.3;
velocidade_chao = velocidade;
velocidade_ar = 0.4;
velocidade_horizontal = 0;
velocidade_vertical = 0;
velocidade_h_max = 6;
pulo = 9;

//personagem lançado pra uma certa direção apos tomar dano
knockback = 16

hit = 0;
//vida do personagem
vida = 3; // Vida inicial do jogador
vida_max = 3; // Vida máxima do jogador

//time pra morrer
timer = 60;
timer_max = timer;

dir_hab = 0;
cd_hab = 1 *60
cd_hab_max = cd_hab;
hab_a = 0;



super_pulo = 15; // Força do super pulo
pulo_normal = pulo; // Guarda o valor do pulo normal
tem_super_pulo = false; // O jogador não tem o super pulo inicialmente







global.x_player = x
global.y_player = y

global.checkpoint_x= x;
global.checkpoint_y = y;

// Variáveis iniciais do jogador
vida = 3; // Vida inicial do jogador
global.invulneravel = false; // Define o jogador como não invulnerável