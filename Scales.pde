void setup() {
  size(500, 500);  
  noLoop(); 
}
void draw() {
  int c = 0;
  background(255);
  for (int y = 0; y <=500; y+=20){
    if (c % 2 ==1 ){
        fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
        c--;
    }
    else if (c % 2 == 0){
        fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
        c++;
    }
      for (int x = 0; x <=500; x+=30){
        scale(x,y);
      }
    }
  }  
void scale(int x, int y) {
  beginShape();
  curveVertex(x, y);
  curveVertex(x-20, y);
  curveVertex(x-20, y-20);
  curveVertex(x-20, y-30);
  curveVertex(x+10, y+10);
  curveVertex(x+10, y+20);
  curveVertex(x+10, y-10);
  endShape();
  ellipse(x,y,20,20);
  rect(x,y,20,25);
  ellipse(x,y,10,10);
}
