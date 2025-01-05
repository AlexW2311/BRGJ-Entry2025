

if (keyboard_check_pressed(vk_escape)) 
{
    global.isPaused = !global.isPaused; // Toggle the pause state
    instance_create_layer(0,0,"instance_ui",obj_pauseMenu);
    
}

// Updated switch-case logic
switch (global.gameState) 
{
    case GameState.Playing:
        // Normal gameplay logic
        break;

    case GameState.Paused:
        // Pause logic (e.g., freeze objects, show pause menu)
    
        break;

    case GameState.GameOver:
        // Game over logic (e.g., display menu, restart option)
        break;

    case GameState.MainMenu:
        // Main menu logic
        break;

    case GameState.Victory:
        // Show victory screen or transition to the next level
        break;

    case GameState.Testing:
        if (global.roomChangable) 
        {
            show_debug_message("Here");
            goToRoom(rm_testing);
            show_debug_message("Here as well");
            global.roomChangable = false;
        }
        break;
}
