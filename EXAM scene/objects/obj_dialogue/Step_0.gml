if (array_length(messages) == 0) exit;

draw_message = messages[current_message].msg;

if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)) {
    current_message++;
    
    if (current_message >= array_length(messages)) {
        instance_destroy();
    }
}