class Line
{
  //Class scope variables
  private PVector _corner1;
  private PVector _corner2;
  private color _lColor;
  private int _strokeWeight;
  
  
   //Assigns scope variables values when called upon  
  public Line(int x1, int y1, int x2, int y2,int strokeWeight,color lColor)
  {
    _corner1= new PVector(x1,y1);
    _corner2= new PVector(x2,y2);
    _strokeWeight=strokeWeight;
    _lColor=lColor;
  }
  
  //Draws a line at current mouse position when called upon
  public void drawLine()
  {
    stroke(_lColor);
    strokeWeight(_strokeWeight);
    line(_corner1.x,_corner1.y,_corner2.x,_corner2.y);
  }
}