class Rocket { // defining af class Rocket, that will hold methods and variables for the behaviour and looks of the rocket 
  
  // initializing all the variables used to create the rocket, from colour, position, direction to the explosion
  color colour; 
  float x;
  float y;
  float size;
  float xSpeed, ySpeed;
  float direction;
  boolean exp = false;

  

  Rocket(float x, float y, float size) { //constructor holding the parameters for position and size for the big rockets
    this.x = x; 
    this.y = y;
    this.size = size;
    this.direction = HALF_PI; // setting the direction to 90 degrees, going upwards
    xSpeed = 2; 
    ySpeed = 2;
    colour = 0; 
  }

  Rocket(float x, float y, float size, float direction) { // constructor holding parameters for postion, size and direction for the small rockets
    colour = color(random(255), random(255), random(255)); // colours set to have a random outcome
    this.x = x;
    this.y = y;
    this.size = size;
    this.direction = direction;
    xSpeed = 2;
    ySpeed = 2;
  }


  void moveRocket() { // method that will determine the direction and speed of the small rockets
    if (this.y>250 || this.size == 5) { // "if-statemen" using "or" to decide the direction and speed of the small rockets 
      this.y -= sin(direction)*ySpeed; // allows the rocket to move upwards on y-cord
      this.x += cos(direction)*xSpeed; // allows the rocket to move horizontally on the x-cord
    }

    if (this.y==250) { // if-statement with a boolean that will make the rocket explode if the statement is true
      exp = true;
    }
  }

  void drawRocket() { // draws the rocket with the colour black 
    fill(colour);
    ellipse(this.x, this.y, this.size, this.size);
  }
}
