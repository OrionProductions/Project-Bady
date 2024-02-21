///@param text_id
function scr_game_text(_text_id){
switch(_text_id) {

// ----- template for the shizzle -----
// case "text_id": 
// scr_text("text", "character-emotion", -1 (if otherside) );
// break;
// optional: scr_text_color(start, end, CTL, CTR, CBR, CBL);
// optional: scr_text_shake/float(start, end);

// Bedroom Interactables

case "bedroom_poster":
	scr_text("A Poster of MISTA STAR");
	scr_text_color(12, 22, c_yellow, c_yellow, c_white, c_white)
	scr_text("Been a while since he had a competition...");
	scr_text("Ah, well.")
	break;
	
case "tv_floor_antenna":
	scr_text("Piece of junk.");
	break;
	
case "roof_book_stack":
	scr_text("What about it?");
	break;

case "bedroom_laptop":
	scr_text("My trusty laptop");
	scr_text("It even has a wireless mouse!");
	scr_text("...");
	scr_text("Not what I meant when I explained it, but I'll work with it")
	break;
	
case "bedroom_trashcan":
	scr_text("It's filled with bird seed packages.");
	break;

case "bedroom_bugbear":
	scr_text("Love this thing!");
	break;
	
case "bedroom_beanbag":
	scr_text("My beanbag chair, gosh why did Dog bite it");
	break;
	
case "bedroom_dog_bowl":
	scr_text("A dog Bowl");
	scr_text("It says 'Dog' on it");
	break;
	
// other shit

case "NPC 1":
	scr_text("Hey guy! I'm Legor, I dont fit in this box very well, help me guy", "legor-embarrassed");
		scr_text_color(13, 19, c_blue, c_aqua, c_blue, c_aqua); scr_text_shake(13, 19);
	scr_text("He's sweating a lot");
	scr_text("Is there an ...", "legor-embarrassed" );
	scr_text_float(1, 9);
	scr_text("...", "legor-embarrassed")
	scr_text("Apple... on the teachers desk?", "legor-embarrassed")
		scr_option("Yeah!!", "npc 1 - yes");
		scr_option("Die man", "npc 1 - no");
		break;
	case "npc 1 - yes":
		scr_text("He runs");
		break;
	case "npc 1 - no":
		scr_text("...");
		scr_text("Woah, man...");
		scr_text("I was just trying to make conversation");
		break;

	}

}