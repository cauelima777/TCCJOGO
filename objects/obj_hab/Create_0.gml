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