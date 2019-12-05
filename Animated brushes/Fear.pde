//ANDRE OFSOSKI 1314669
class Fear
{
  //Class variables
  private color _fColor;
  //Array list to store balls
  private ArrayList<Balls> _ballList;
  final int _ballAmount = 30;
  private color _fBallColor;
  
  //Set default emotion colours
  public void fearColor()
  {
    _fColor=#D35013;
    _fBallColor=#A70C0C;
  }
  public Fear()
  {
    //Set emotion colour and create set amount of balls in arraylist at random x and y position between set values.
    fearColor();
    _ballList=new ArrayList<Balls>();
    for(int i=1; i< _ballAmount;i++)  
    {    
      _ballList.add(new Balls(_fBallColor, (int)random(645,658),(int)random(14,360)));   
    }
  
  }
  
  //Draw each ball in arraylist
  private void drawFearBalls()
  {
    for(Balls b:_ballList)
    {
      b.drawBall();
       //Determines speed of ball moving x, y 
      b.moveBall(2,8);
    }
    
  }
    //Allows the emotion colour to be set in sketch window
  private void drawFear()
  {
   fearColor();
   fill(_fColor);
   stroke(_fColor);
   
  }
  
}
