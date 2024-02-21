if (keyboard_check_pressed(ord("Z")) && instance_exists(obj_bady)) {
    var xoffset = lengthdir_x(interactRange, obj_bady.face * 90);
    var yoffset = lengthdir_y(interactRange, obj_bady.face * 90);
    if (place_meeting(x - xoffset, y - yoffset, obj_bady)) {
       create_textbox(text_id);
    }
}