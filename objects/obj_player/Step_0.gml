if (global.isPaused) {
    exit; // Stop updating the object if the game is paused
}

#region Keyboard Checks
var rightKEy = keyboard_check(ord("D"));
var leftKey = keyboard_check(ord("A"));
var jumpKeyPressed = keyboard_check_pressed(vk_space);
var jumpKeyHold = keyboard_check(vk_space);

#endregion

//getting x y speeds
xSpd = (rightKEy - leftKey) * move_speed;
//apply grav to y
ySpd += grav;

#region Jump Code
//check to see if theres ground below, if so, set the jump count to 0
if(place_meeting(x, y + 1, obj_collision)){jumpCount = 0;} else {if(jumpCount == 0) {jumpCount = 1;}};
    
if (jumpKeyPressed && jumpCount < jumpMax){
    //increase count
    jumpCount++;
    
    //set timer
    jumpTimer = jumpHoldFrames;
    
    
    ySpd = jumpingSpeed;
}

if(!jumpKeyHold){jumpTimer = 0;}

if (jumpTimer > 0)
{
    
    ySpd = jumpingSpeed;
    //count down timer
    jumpTimer--;
}
#endregion

#region Collisions



if (place_meeting(x + xSpd, y, obj_collision))
{
    //check a single pixel at a time
    var pixelCheck = sign(xSpd);
    
    while !place_meeting(x+ pixelCheck, y, obj_collision){x+=pixelCheck;}
    //set speed to 0
    xSpd = 0;
}

//Y
if place_meeting(x, y + ySpd, obj_collision)
{
    
    //pixel perfect
    var pixelCheck = sign(ySpd);
    while !place_meeting(x, y + pixelCheck, obj_collision){y +=pixelCheck;}
    //set y spd to 0
    ySpd = 0;
    
}

if place_meeting(x, y + ySpd, obj_floorRotation)
{
    
    //pixel perfect
    var pixelCheck = sign(ySpd);
    while !place_meeting(x, y + pixelCheck, obj_floorRotation){y +=pixelCheck;}
    //set y spd to 0
    ySpd = 0;
    
    
}



#endregion

//move player
x += xSpd;
y += ySpd;