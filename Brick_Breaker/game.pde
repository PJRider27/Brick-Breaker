void game() {
  background(0, 0, 255);
  
  int i = 0;
  while (i < 15) {
    Brick b = myBricks.get(i);
    b.show();
    b.act();
    i = i + 1;
  }
  
  ball();
  paddle();
}

void gameClicks() {
}

void ball() {
  ellipse(bx, by, 20, 20);

  //move the ball
  bx = bx + bvx;
  by = by + bvy;
  
  //bounce the ball off the walls
  if (bx < 0 || bx > width) {
    bvx = -bvx; //bounce off the left and right walls
  }
  if (by < 0 || by > height) {
    bvy = -bvy; //bounce off the top and bottom walls
  }
  
  //bounce off of paddle
  if (dist(px, py, bx, by) < 60) {
     bvx = (bx - px)/10;
     bvy = (by - py)/10;
  }
}








void paddle() {
   ellipse(px, py, 100, 100);
   if (leftKey)  px = px - 5;
   if (rightKey) px = px + 5;
}
