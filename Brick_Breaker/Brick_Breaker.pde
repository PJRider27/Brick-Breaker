ArrayList<Brick> myBricks;

final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode = GAME;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause

//ball variables
float bx, by, bvx, bvy; //ball variables

//paddle variables
float px, py;

//keyboard variables
boolean leftKey, rightKey; 

void setup() {
  size(800, 600);
  
  myBricks = new ArrayList<Brick>();
  
  int i = 0;
  while (i < 100) {
    myBricks.add( new Brick() );
    i = i + 1;
  }
  
  
  //ball initial values
  bx = width/2;
  by = height/2;
  bvx = 0;
  bvy = 3;
  
  //paddle initial values
  px = width/2;
  py = height+10;

  //

}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {  
    pause();
  } else {
    println("?");
  }
}
