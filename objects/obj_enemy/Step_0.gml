if(global.pause) 
{
	image_speed = 0;

	exit;
	

}

image_speed = 1;
var chao = place_meeting(x,y+1, obj_block);




if(place_meeting(x + 1, y, obj_colision_enemy) || place_meeting(x + 1, y, obj_colision_enemy)){

	direction +=180;

	
}


if (direction == 0) {
	image_xscale = 1;
	
	
}

if(direction == 180){
	image_xscale = -1;

}
if(global.pause) 
{
	speed = 0
	exit;

}


speed = 2;

if(obj_player.y <y) {

	if(place_meeting(x,y - 1, obj_player)){
		
		if(obj_player.velocidade_vertical >0){
			obj_player.velocidade_vertical = 0;
			obj_player.velocidade_vertical -= obj_player.pulo;
			vida -=2;
		
		}

		
	
	}


}

if(vida <=0){

	instance_destroy();
}



if(!chao) {
	velocidade_vertical += gravidade;

}






