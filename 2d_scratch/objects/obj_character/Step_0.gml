/// @description Insert description here
// You can write your code in this editor


if( v_speed > 0 )
{
	jumping = true	
}

//var _move

if( keyboard_check_direct(vk_left) )
{
	h_speed = -1 * base_h_speed
	//_move = -1
}
else if( keyboard_check_direct(vk_right) )
{
	h_speed = 1 * base_h_speed
	//_move = 1
}
else
{
	h_speed = 0 * base_h_speed	
	//_move = -sign(h_speed)
}
//_move *= 2

//h_speed += _move

if( h_speed < -base_h_speed )
{
	h_speed = -base_h_speed	
}
if( h_speed > base_h_speed )
{
	h_speed = base_h_speed	
}

if( keyboard_check_pressed(vk_space) and jumping == false )
{
	jumping = true
	jump_amt = 0
	v_speed = j_speed
}
//else if( !keyboard_check_direct(vk_space) )
//{
//	jumping = false	
//}

//if( !place_meeting(x + h_speed, y, obj_block) )
//{
//	x += h_speed
//}

if( jumping == true )
{
	jump_amt += abs(v_speed)

}

//v_speed += 5

if( jump_amt > jump_height or !keyboard_check_direct(vk_space) )
{
	v_speed += 1
}



if( v_speed > v_t_gravity )
{
	v_speed = v_t_gravity
}

var _inc = 1;

_inc = sign(h_speed)

for(var _i = 0; _i < abs(h_speed); _i++)
{
	if( !place_meeting(x + _inc, y, obj_block) )
	{
		x += _inc
	}
}

_inc = sign(v_speed)


for(var _i = 0; _i < abs(v_speed); _i++)
{
	if( !place_meeting(x, y + _inc, obj_block) )
	{
		y += _inc
	}
	else
	{
	if( _inc > 0 )
	{
		jumping = false
	}
	jump_amt = jump_height + 1
	v_speed = 0
	}
}

if( h_speed > 0 )
{
	sprite_index = spr_r
}
else if ( h_speed < 0 )
{
	sprite_index = spr_l

}
