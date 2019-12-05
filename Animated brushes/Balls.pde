//ANDRE OFSOSKI 1314669
class Balls
{
  //Class variables
  private color _Balls;
  private PVector _ballPosition;
  private int _xdirection = 1;
   private int _ydirection = 1;

  //Random blood size between 5 and 12
  private int _ballSize =(int)random(5,12);
  
  //Create balls at x and y position and set colour
  public Balls(color ballColor, int x, int y)
  {
    _Balls = ballColor; 
    _ballPosition = new PVector(x,y);    
  }
  
  //Draw the blood balls
  public void drawBall()
  {
    fill(_Balls);
    ellipse(_ballPosition.x, _ballPosition.y,_ballSize,_ballSize);
  }
  
  //Move the balls down the body 
  public void moveBall(int x, int y)
  {
    _ballPosition.x += x * _xdirection;
    _ballPosition.y += y * _ydirection;
    
    //Move the ball to the right
    if(_ballPosition.x + _ballSize>658)
    {
           _ballSize =+ (int) random(4,10);
          _xdirection =-1;
          _ballPosition.x++;

    }
     //Then move the ball back to the left
    else if(_ballPosition.x  + _ballSize<=653)
    {
      _ballSize =- (int) random(4,10);
      _xdirection =+1;
      _ballPosition.x--;
      
    }
    //Make the balls flow down the body then reset at top of body
     if(_ballPosition.y + _ballSize>353)
    {
      _ballPosition.y -= y * _ydirection;    
      _ballPosition.y=20;
    }
    
  }
}
