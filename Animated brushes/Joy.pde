//ANDRE OFSOSKI 1314669
class Joy
{
  //Class variables
  private color _jColor;
  //Array list to store balls
  private ArrayList<Balls> _ballList;
  final int _ballAmount = 500;
  private color _jBallColor;
  
  //Set default emotion colours
  private void joyColor()
  {
    _jColor = #FFA30D ;  
    _jBallColor = #F6FF0D;
  }
  public Joy()
  {
    //Set emotion colour and create set amount of balls in arraylist at random x and y position between set values.
     joyColor();
    _ballList=new ArrayList<Balls>();
    for(int i=1; i< _ballAmount;i++)
    {
      _ballList.add(new Balls(_jBallColor, (int)random(650,656),(int)random(14,360)));
    } 
  }
  
  //Draw each ball in arraylist
  private void drawJoyBalls()
  {
    for(Balls b:_ballList)
    {
      b.drawBall();
       //Determines speed of ball moving x, y 
      b.moveBall(3,7);
    }
  }
  
   //Allows the emotion colour to be set in sketch window
  private void drawJoy()
  {
    joyColor();
    fill(_jColor);
    stroke(_jColor);
  }
  
  
}
