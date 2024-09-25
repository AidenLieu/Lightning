int startX = 0;
int startY = (int)(Math.random() * 300);
int endX = 0;
int endY = 150;

void setup()
{
  size(300,300);
  stroke((float)(Math.random() * 255),(float)(Math.random() * 255),(float)(Math.random() * 255));
  background(0,0,0);
}
void draw()
{
  stroke((float)(Math.random() * 255),(float)(Math.random() * 255),(float)(Math.random() * 255));
  while(startX < 300){
    endX = startX + (int) (Math.random() * 9);
    if(Math.random() < 0.5){
      endY = startY + (int) (Math.random() * 9);
    }else{
      endY = startY - (int) (Math.random() * 9);
    }
    line(startX,startY,endX,endY);
    startY = endY;
    startX = endX;
  }    
}
void mousePressed()
{
  endY = 150;
  endX = 0;
  startY = (int)(Math.random() * 300);
  startX = 0;
}
