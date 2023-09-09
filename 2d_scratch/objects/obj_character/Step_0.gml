/// @description Insert description here
// You can write your code in this editor




if( keyboard_check_direct(vk_left) )
{
	h_speed = -1 * base_h_speed
}
else if( keyboard_check_direct(vk_right) )
{
	h_speed = 1 * base_h_speed
}
else
{
	h_speed = 0 * base_h_speed	
}



if( keyboard_check_pressed(vk_space) and jumping == false )
{
	jumping = true
	jump_amt = 0
	v_speed = j_speed
}


if( !place_meeting(x + h_speed, y, obj_block) )
{
	x += h_speed
}

if( jumping == true )
{
	jump_amt += abs(v_speed)

}

//v_speed += 5

if( jump_amt > jump_height or jumping == false )
{
	v_speed += 2
}
	
if( v_speed > v_t_gravity )
{
	v_speed = v_t_gravity
}

var _inc = 1;

if( v_speed < 0 )
{
	_inc = -1	
}

for(var _i = 0; _i < abs(v_speed); _i++)
{
	if( !place_meeting(x, y + _inc, obj_block) )
	{
		y += _inc
	}
	else
	{
	jumping = false	
	v_speed = 0
	}
}

if( h_speed > 0 )

	object_set_sprite()
}
else if ( h_speed < 0 )
{
	image_xscale = 1
}
