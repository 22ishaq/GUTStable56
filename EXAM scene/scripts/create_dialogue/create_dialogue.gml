function create_dialogue(_msg_array) {
    var _inst = instance_create_depth(0, 0, -10000, obj_dialogue);
    _inst.messages = _msg_array;
    _inst.current_message = 0;
    return _inst;
}