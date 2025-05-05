cutscene = [
   
	[cutscenes_wait, 2],          // Espera por 3 segundos
    [cutscenes_walk_right, 2],    // Anda para a direita por 2 segundos
    [cutscenes_dialogue, "Oi, tudo bem? Como você está?"], // Diálogo 1
	[cutscenes_wait, 4],          // Espera por 1 segundo
	[cutscenes_dialogue, "teste"], // Diálogo 1
	[cutscenes_walk_left, 2],     // Anda para a esquerda por 2 segundos
    [cutscenes_wait, 9999]        // Fica parado no final "pra sempre"
];



// Create Event
show_text = false;          // Texto inicialmente não mostrado
current_dialogue = "";      // Nenhum texto no início
action = 0;                 // Ação inicial
timer = 0;                  // Timer inicial
