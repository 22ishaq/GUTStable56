if (state == "WALK") {
    walk_timer++;
    chris_x -= 2; 
    
    if (chris_x <= chris_target_x) {
        chris_x = chris_target_x;
        state = "TALK";
        
        var _score = variable_global_exists("total_score") ? global.total_score : 0;
        var _total = variable_global_exists("total_questions") ? global.total_questions : 3;
        
        if (_score >= 2) {
            create_dialogue([
                { name: "Chris", msg: "Hello Harry! My name's Chris from JPMorgan. I've just reviewed your algorithm exam paper." },
                { name: "Chris", msg: "Congratulations! We'd love to invite you to join JPMorgan!" },
                { name: "Harry", msg: "Thank you Chris! I'm thrilled to join!" }
            ]);
        } else {
            create_dialogue([
                { name: "Chris", msg: "Hello Harry. It's Chris from JPMorgan. I've had a look at your algorithm exam paper." },
                { name: "Chris", msg: "Unfortunately, you failed, meaning we cannot hire you" },
                { name: "Harry", msg: "Its my own fault.. I will do better next time!" }
            ]);
        }
    }
}