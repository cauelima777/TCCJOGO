// Substitua obj_player pelo nome correto do objeto do jogador
var player = instance_place(x, y, obj_player);
if (player != noone) {
    if (player.vida < player.vida_max) {
        player.vida += 1; // Aumenta a vida do jogador
     
        instance_destroy(); // Remove o item de vida do jogo
    }
}
