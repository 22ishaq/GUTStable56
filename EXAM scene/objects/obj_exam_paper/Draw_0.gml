draw_sprite_stretched(spr_table_texture, 0, 0, 0, room_width, room_height)

// Drop Shadow & Paper Sheet
draw_set_color(c_black);
draw_set_alpha(0.3);
draw_rectangle(paper_x + 14, paper_y + 14, paper_x + paper_w + 14, paper_y + paper_h + 14, false);
draw_set_alpha(1.0);

draw_set_color(make_color_rgb(252, 250, 242));
draw_rectangle(paper_x, paper_y, paper_x + paper_w, paper_y + paper_h, false);
draw_set_color(make_color_rgb(215, 210, 195));
draw_rectangle(paper_x, paper_y, paper_x + paper_w, paper_y + paper_h, true);

//exam end
if (exam_finished) {
    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_transformed(paper_x + (paper_w / 2), paper_y + 220, "Exam Completed!", 1.5, 1.5, 0);
    
    var _final_msg = "Final Score: " + string(total_score) + " / " + string(array_length(questions));
    draw_text_transformed(paper_x + (paper_w / 2), paper_y + 290, _final_msg, 1.3, 1.3, 0);
    
    draw_set_valign(fa_top);
    exit;
}

//question
var _q = questions[current_q];

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text_transformed(paper_x + (paper_w / 2), paper_y + 30, _q.title, 1.1, 1.1, 0);

draw_set_halign(fa_left);
draw_set_color(make_color_rgb(110, 110, 110));
draw_text(paper_x + 40, paper_y + 60, "Question " + string(current_q + 1) + " of " + string(array_length(questions)));
draw_text(paper_x + paper_w - 180, paper_y + 60, "SCORE: [ " + string(total_score) + " / " + string(array_length(questions)) + " ]");

// question prompt
draw_set_color(c_black);
draw_text_ext(paper_x + 40, paper_y + 110, _q.text, 24, paper_w - 80);

draw_set_color(make_color_rgb(120, 120, 120));
draw_text(paper_x + 40, paper_y + 265, "Press [up / down Arrow Keys]");


for (var i = 0; i < array_length(_q.options); i++) {
    var _x1 = box_margin_x;
    var _y1 = box_start_y + (i * box_spacing);
    var _x2 = _x1 + box_w;
    var _y2 = _y1 + box_h;

    var _bg_col = make_color_rgb(243, 242, 237);
    var _border_col = make_color_rgb(190, 185, 175);
    var _arrow_col = make_color_rgb(80, 80, 80);

  
    // Box Base & Border
    draw_set_color(_bg_col);
    draw_rectangle(_x1, _y1, _x2, _y2, false);
    draw_set_color(_border_col);
    draw_rectangle(_x1, _y1, _x2, _y2, true);

    // Arrow icons
    var _badge_x = _x1 + 30;
    var _badge_y = _y1 + (box_h / 2);
    
    draw_set_color(c_white);
    draw_rectangle(_badge_x - 16, _badge_y - 16, _badge_x + 16, _badge_y + 16, false);
    draw_set_color(_border_col);
    draw_rectangle(_badge_x - 16, _badge_y - 16, _badge_x + 16, _badge_y + 16, true);

    draw_set_color(_arrow_col);
    if (i == 0) {
        draw_triangle(_badge_x, _badge_y - 10, _badge_x - 9, _badge_y + 2, _badge_x + 9, _badge_y + 2, false);
        draw_rectangle(_badge_x - 3, _badge_y + 2, _badge_x + 3, _badge_y + 10, false);
    } else {
        draw_triangle(_badge_x, _badge_y + 10, _badge_x - 9, _badge_y - 2, _badge_x + 9, _badge_y - 2, false);
        draw_rectangle(_badge_x - 3, _badge_y - 10, _badge_x + 3, _badge_y - 2, false);
    }

    // options
    draw_set_color(c_black);
    draw_set_valign(fa_middle);
    draw_text_ext(_badge_x + 30, _badge_y, _q.options[i], 20, box_w - 85);
}

draw_set_valign(fa_top);

if (is_submitted) {
    draw_set_halign(fa_center);
    
    // results
    if (selected_option == _q.correct) {
        draw_set_color(make_color_rgb(35, 140, 35));
        draw_text(paper_x + (paper_w / 2), paper_y + paper_h - 110, "✔ CORRECT! " + _q.explanation);
    } else {
        draw_set_color(make_color_rgb(200, 40, 40));
        draw_text(paper_x + (paper_w / 2), paper_y + paper_h - 110, "✖ INCORRECT. " + _q.explanation);
    }

  
}