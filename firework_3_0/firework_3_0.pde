
ArrayList<Rocket> rocketArrayList = new ArrayList<Rocket>(); // initializes an arraylist to hold the objects from the class rocket 



void setup() { 
  size(600, 600); 
  for (int i = 1; i<11; i++) { // for-loop adding 10 rockets to the array, starting at height, with random x-cords, and size 
    rocketArrayList.add(new Rocket(random(width), height, 10)); 
  }
}



void draw() {
  background(255);
  for (int i=0; i<rocketArrayList.size(); i++) { // the for-loop is running throw the arrays, calling the "draw" and "move" methods from the rocket class
    rocketArrayList.get(i).drawRocket();
    rocketArrayList.get(i).moveRocket();
    if (rocketArrayList.get(i).exp == true) { // if the epx is true, the rocket will explode and it will create 9 smaller rockets, in the same position, with random directions, and removing the bigger rockets

      rocketArrayList.add(new Rocket(rocketArrayList.get(i).x, rocketArrayList.get(i).y, 5, random(0, PI) )); // creating a small rocket
      rocketArrayList.add(new Rocket(rocketArrayList.get(i).x, rocketArrayList.get(i).y, 5, random(0, PI) ));
      rocketArrayList.add(new Rocket(rocketArrayList.get(i).x, rocketArrayList.get(i).y, 5, random(0, PI) ));
      rocketArrayList.add(new Rocket(rocketArrayList.get(i).x, rocketArrayList.get(i).y, 5, random(0, PI) ));
      rocketArrayList.add(new Rocket(rocketArrayList.get(i).x, rocketArrayList.get(i).y, 5, random(0, PI) ));
      rocketArrayList.add(new Rocket(rocketArrayList.get(i).x, rocketArrayList.get(i).y, 5, random(0, PI) ));
      rocketArrayList.add(new Rocket(rocketArrayList.get(i).x, rocketArrayList.get(i).y, 5, random(0, PI) ));
      rocketArrayList.add(new Rocket(rocketArrayList.get(i).x, rocketArrayList.get(i).y, 5, random(0, PI) ));
      rocketArrayList.add(new Rocket(rocketArrayList.get(i).x, rocketArrayList.get(i).y, 5, random(0, PI) ));
      rocketArrayList.remove(i); // removing the big rocket 
    }
  }
}

void mousePressed() { // this method will create new rockets everytime mouse is pressed, with random x-cords
  rocketArrayList.add(new Rocket(random(width), height, 10));
}
