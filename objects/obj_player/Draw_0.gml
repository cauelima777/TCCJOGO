/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self();



if (hit >= 0) {
	shader_set(shader_hit)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_red, hit)
	shader_reset()
}