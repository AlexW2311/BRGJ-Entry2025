if (global.isPaused) {
    exit; // Stop updating the object if the game is paused
}

// Move the projectile in the defined direction




//damage collisions
if(place_meeting(x,y,obj_player))
{
    //reduce player health
    global.playerData.playerHealth -= 1;
    //self destruct dmg insannce
    instance_destroy(self);
    exit;

};




if(place_meeting(x,y,obj_collision))
{
    //self destruct dmg insannce
    instance_destroy(self);
    exit;

};


// Destroy the projectile once it moves off-screen
if (x < 0 || x > room_width) 
{
    instance_destroy(self);
    exit;
}




