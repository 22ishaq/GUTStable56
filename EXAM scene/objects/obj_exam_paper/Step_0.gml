
if (exam_finished) exit;

var _mx = mouse_x;
var _my = mouse_y;
var _q  = questions[current_q];


if (!is_submitted) {
    var _chosen = -1;

    // Keyboard Selection
    if (keyboard_check_pressed(vk_up)) {
        _chosen = 0;
    } 
    else if (keyboard_check_pressed(vk_down)) {
        _chosen = 1;
    }

    // Trigger submission on choice
    if (_chosen != -1) {
        selected_option = _chosen;
        is_submitted    = true;
        advance_timer   = 0;
        if (_chosen == _q.correct) total_score++;
    }
}

// timer to next question
if (is_submitted) {
    advance_timer++;

    if (advance_timer >= advance_delay) {
        advance_timer = 0;
        
        if (current_q < array_length(questions) - 1) {
            current_q++;
            selected_option = -1;
            is_submitted    = false;
        } else {
            exam_finished = true;
			global.total_score = total_score;
			global.total_questions = array_length(questions);
			
			room_goto(rm_outside);
		
        }
    }
}

