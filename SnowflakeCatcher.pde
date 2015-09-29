final int num=40;
Snowflake [] storm=new Snowflake[num];
void setup()
{
  size(400,400);

  background(0);


for(int i=0; i<num; i++){
    storm[i]=new Snowflake((int)(Math.random()*400), (int)(Math.random()*400));
  }
}
void draw()
{
  for(int i=0; i<num; i++){
    storm[i].move();
    storm[i].show();
    storm[i].wrap();
  }
}
void mousePressed()
{
  fill(255,0,0);
  ellipse(mouseX,mouseY,10,10);
}

class Snowflake
{
  int sX,sY;
  Snowflake(int x,int y)
  {
    sX=x;
    sY=y;
  }
  void show()
  {
    fill(255);
    strokeWeight(2);
    ellipse(sX,sY, 5,5);
  }
  void lookDown()
  {
    
  }
  void erase()
  {
    //your code here
  }
  void move()
  {
  if(get(sX,sY+6)==color(0) || get(sX,sY+6)==color(255) || sY+6>=400){
    sY++;
  }
  }
  void wrap()
  {
    if(sY>=400){
      sY=0;
      sX=(int)(Math.random()*400);
    }
  }
}
