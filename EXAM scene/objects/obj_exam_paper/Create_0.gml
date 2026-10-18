//ALGORITHM QUESTIONS 
questions = [
    {
        title: "GLASGOW UNIVERSITY: ALGORITHMS & DATA STRUCTURES",
        text: "Q1: In an array sorted in ASCENDING order, which direction does a Binary Search eliminate half the array if the middle element is GREATER than the target value?",
        options: [
            "Search in the LOWER half of index positions.",
            "Search in the UPPER half of index positions."
        ],
        correct: 0, 
        explanation: ""
    },
    {
        title: "GLASGOW UNIVERSITY: ALGORITHMS & DATA STRUCTURES",
        text: "Q2: In Insertion Sort, in which index direction do existing elements shift when making room for a smaller target value?",
        options: [
            "Elements shift UP towards higher index positions.",
            "Elements shift DOWN towards index position zero."
        ],
        correct: 0,
        explanation: ""
    },
    {
        title: "GLASGOW UNIVERSITY: ALGORITHMS & DATA STRUCTURES",
        text: "Q3: What happens to memory stack allocation during an infinite recursive call without a base case?",
        options: [
            "Memory stack usage goes DOWN as function frames are popped off.",
			"Memory stack usage goes UP until a Stack Overflow occurs."
        ],
        correct: 1,
        explanation: ""
    }
];

current_q       = 0;
selected_option = -1;
hovered_option  = -1;
is_submitted    = false;
total_score     = 0;
exam_finished   = false;


advance_timer = 0;
advance_delay = 90; 

paper_w = 640;
paper_h = 700;
paper_x = (room_width - paper_w) / 2;
paper_y = (room_height - paper_h) / 2;

box_w        = 560;
box_h        = 75;
box_margin_x = paper_x + 40;
box_start_y  = paper_y + 300;
box_spacing  = 95;