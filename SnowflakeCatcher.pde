final int num=400;
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
    storm[i].erase();
    storm[i].lookDown();
    storm[i].wrap();
    storm[i].move();
    storm[i].show();
  }
}
void mousePressed()
{
  fill(255,0,0);
  stroke(255,0,0);
  ellipse(mouseX,mouseY,10,10);
}

class Snowflake
{
  int sX,sY;
  boolean movement;
  Snowflake(int x,int y)
  {
    sX=x;
    sY=y;
    movement=true;
  }
  void show()
  {
    fill(255);
    stroke(0);
    ellipse(sX,sY, 5,5);
  }
  void lookDown()
  {
    if(get(sX,sY+8)==color(255,0,0)){
      movement=false;
    }
  }
  void erase()
  {
    fill(0,0,0);
    stroke(0);
    ellipse(sX,sY,5,5);
  }
  void move()
  {
  if(movement==true){
    sY++;
  }
  }
  void wrap()
  {
    if(sY>=420){
      sY=0;
      sX=(int)(Math.random()*400);
    }
  }
}
