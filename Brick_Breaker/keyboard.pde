void keyPressed() {
  if (keyCode == LEFT)  leftKey  = true;
  if (keyCode == RIGHT) rightKey = true;
}

void keyReleased() {
  if (keyCode == LEFT)  leftKey  = false;
  if (keyCode == RIGHT) rightKey = false;
}
