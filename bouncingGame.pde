void setup () {
  size (600, 400);
}

float ballX = (random (200));
float ballY = (random (200));
float speedX =18;
float speedY =0;
int hit = 0;
int miss = 0;


void draw () {
  float paddle = 1000/ (hit+10);
  if (ballX < 0 || ballX > width) speedX = -speedX;
  if (ballY > height) {
    speedY = -speedY; 
    float distance = abs (mouseX - ballX);
    if (distance < paddle ) hit +=1;
    else miss +=1;
    //else hit +=1;
  } else speedY += 1;


  ballX += speedX;
  ballY += speedY;


  background(0);
  fill(231, 105, 105);
  ellipse(ballX, ballY, 50, 50);
  fill(58, 155, 255);
  rect( mouseX-paddle, height-10, 2*paddle, 10);

  text ("hit: " + hit, 550, 20);
  text ("miss: " + miss, 550, 40);
}