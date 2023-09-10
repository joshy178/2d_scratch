/// @description Insert description here
// You can write your code in this editor




var str = "";
var array = variable_instance_get_names(id);
array_sort(array, true)
//show_debug_message("Variables for " + object_get_name(object_index) + string(id));
for (var i = 0; i < array_length(array); i++;)
{
	if(is_method(variable_instance_get(id, array[i])))
	{
		continue;	
	}
    str += array[i] + ":" + string(variable_instance_get(id, array[i])) + "\n"
}

draw_text_color( 0,  0, str, c_black, c_black, c_black, c_black, .5)

