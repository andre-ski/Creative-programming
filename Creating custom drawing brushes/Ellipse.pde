class Ellipse
{
  //Class scope variables
  private int _mousePosX; 
  private int _mousePosY;
  private int _heightEllipse;
  private int _widthEllipse;
  private color _EColor;
  
  //Assigns scope variables values when called upon  
  public Ellipse(int mousePosX, int mousePosY, int heightE, int widthE,color EColor)
  {
      _mousePosX = mousePosX;
      _mousePosY = mousePosY;
      _heightEllipse = heightE;
      _widthEllipse = widthE;
      _EColor = EColor;   
  }
  
  //Draws an ellipse at current mouse position when called upon
  public void drawEllipse()
  {
    stroke(_EColor);
    fill(_EColor);
    ellipse(_mousePosX, _mousePosY,_heightEllipse,_widthEllipse);   
  }
}