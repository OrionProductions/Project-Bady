// WASD and Arrow Key movement

right_key = keyboard_check(ord("D")) || keyboard_check(vk_right);
left_key = keyboard_check(ord("A")) || keyboard_check(vk_left);
up_key = keyboard_check(ord("W")) || keyboard_check(vk_up);
down_key = keyboard_check(ord("S")) || keyboard_check(vk_down);

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//make pythagoras fuck off
var totalSpeed = xspd * xspd + yspd * yspd
if(totalSpeed > move_spd * move_spd){
	var dir = point_direction(0, 0, xspd, yspd)
	xspd = lengthdir_x(move_spd, dir)
	yspd = lengthdir_y(move_spd, dir)}

//pauser
if instance_exists(obj_pauser)
{
xspd = 0
yspd = 0
}

//normalizing vector

// set sprite
mask_index = sprite[DOWN]
if yspd == 0
	{
	if xspd > 0 {face = RIGHT};
	if xspd < 0 {face = LEFT};
	}
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};
if yspd > 0 && face == UP {face = DOWN};
if yspd < 0 && face == DOWN {face = UP};
if xspd == 0
	{
	if yspd > 0 {face = DOWN};
	if yspd < 0 {face = UP};
	}
	
sprite_index = sprite[face];

// Collision X direction and Y direction 

if place_meeting (x + xspd, y, obj_border) == true
	{
	xspd = 0
	}
if place_meeting (x, y + yspd, obj_border) == true
	{
	yspd = 0
	}

// Calculating Speeds in X and Y
x += xspd;
y += yspd;


// animate
if xspd == 0 && yspd == 0
{ 
	image_index = 0;
}

//depth
depth = -bbox_bottom;