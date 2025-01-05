
// Set font and color for the text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

// Display health in the top-left corner of the screen
draw_text(10, 10, "Health: " + string(global.playerData.playerHealth));
// In your UI controller's Draw event
draw_text(150, 10, "Current State: " + string(global.gameState));


draw_text(325, 10, "FPS: " + string(fps_real)); 
