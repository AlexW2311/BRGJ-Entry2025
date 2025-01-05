/// @description Insert description here
// You can write your code in this editor

if (global.isPaused) {
    exit; // Stop updating the object if the game is paused
}

if(maxRotate > currentRotate && floorTrigger == true)
{
currentRotate +=1;
image_angle += 1;
}
