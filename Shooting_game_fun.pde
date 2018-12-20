int t,Px,points=0,streak=0;
long time=0;

void setup()
{
  size(800,600);
}

void draw()
{
  background(0);
  stroke(255);
  
  if(mouseX>=25&&mouseX<=775) Px=mouseX;
  ship(Px);
  
  if(time%50==0)
  {
    t=(int)random(50,750);
  }
  ellipse(t,50,50,50);
  
  time++;
  
  textSize(20);
  text("Score: "+points,0,20);
  text("Total: "+time/50,120,20);
}

void ship(int x)
{
  beginShape();
  vertex(x,550);
  vertex(x-15,585);
  vertex(x,570);
  vertex(x+15,585);
  endShape();
}

void mousePressed()
{
  if(mouseX>=25&&mouseX<=775) Px=mouseX;
  line(Px,0,Px,550);
  
  if(Px>=t-25&&Px<=t+25) points++;
}

void mouseReleased()
{
  stroke(0,0,255,300);
  line(0,550,800,550);
}