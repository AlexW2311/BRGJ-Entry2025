/// @description Insert description here
// You can write your code in this editor
// Possible Game states:
/// "playing" - Normal gameplay
/// "paused" - Game is paused
/// "gameover" - Player has lost
/// "mainmenu" - Main menu
/// "victory" - Player has won

enum GameState {
    Playing,
    Paused,
    GameOver,
    MainMenu,
    Victory,
    Testing
}

global.gameState = GameState.MainMenu;

global.isPaused = false; // Separate pause variable
global.roomChangable = true;

global.playerData = 
{
    playerHealth: 3,
    
}
