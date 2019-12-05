//ANDRE OFSOSKI 1314669
class Love
{
  //Class variables
  private color _lColor;
  //Array list to store balls
  private ArrayList<Balls> _ballList;
  final int _ballAmount = 200;
  private color _lBallColor;
  
  //Set default emotion colours
  private void loveColor()
  {
    _lColor = #B7460D ;  
    _lBallColor = #F7D216;
  }
  
  public Love()
  {
    //Set emotion colour and create set amount of balls in arraylist at random x and y position between set values.
    loveColor();
    _ballList=new ArrayList<Balls>();
    for(int i=1; i< _ballAmount;i++)
    {
      _ballList.add(new Balls(_lBallColor, (int)random(647,658),(int)random(14,360)));
    }
  }
  //Draw each ball in arraylist
  private void drawLoveBalls()
  {
    for(Balls b:_ballList)
    {
      b.drawBall();
       //Determines speed of ball moving x, y 
      b.moveBall(3,1);
    }
  }
  
   //Allows the emotion colour to be set in sketch window
  private void drawLove()
  {
   loveColor();
   fill(_lColor);
   stroke(_lColor);
  }
}
