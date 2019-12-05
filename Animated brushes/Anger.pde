//ANDRE OFSOSKI 1314669
class Anger
{
  //Class variables
  private color _aColor;
  //Array list to store balls
  private ArrayList<Balls> _ballList;
  final int _ballAmount = 200;
  private color _aBallColor;
  
  //Set default emotion colours
  public void angerColor()
  {
    _aColor=#FAF30F;
    _aBallColor = #F2570F ;
  }
  
   public Anger()
  {
    //Set emotion colour and create set amount of balls in arraylist at random x and y position between set values.
    angerColor();
    _ballList=new ArrayList<Balls>();
    for(int i=1; i< _ballAmount;i++)
    {
      _ballList.add(new Balls(_aBallColor, (int)random(650,656),(int)random(14,360)));
    }
  }
  //Draw each ball in arraylist
  public void drawAngeryBalls()
  {
    for(Balls b:_ballList)
    {
      b.drawBall();
      //Determines speed of ball moving x, y 
      b.moveBall(5,5);
    }

  }
   //Allows the emotion colour to be set in sketch window
  public void drawAnger()
  {
   angerColor();
   fill(_aColor);
   stroke(_aColor);
  }
}
