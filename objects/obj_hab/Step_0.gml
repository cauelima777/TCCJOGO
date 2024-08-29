// Evento Step do obj_hab
// Movimenta a habilidade de acordo com sua direção
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Verificar colisão com obj_block
if (place_meeting(x, y, obj_block)) {
    // Se colidir, gerar uma partícula
    part_particles_create(particle_system, x, y, particle_type, 30); // Gera 10 partículas
    // Destruir a habilidade
    instance_destroy();
}