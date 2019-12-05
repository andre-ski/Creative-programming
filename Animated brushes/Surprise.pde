//ANDRE OFSOSKI 1314669
class Surprise
{
  //Class variables
  private color _suColor;
  //Array list to store balls
  private ArrayList<Balls> _ballList;
  final int _ballAmount = 100;
  private color _suBallColor; 
  
  //Set default emotion colours
  private void surpriseColor()
  {
    _suColor=#D6520F;
    _suBallColor=#FF9408;
  }
 
  public Surprise()
  {
    //Set emotion colour and create set amount of balls in arraylist at random x and y position between set values.
    surpriseColor();
    _ballList=new ArrayList<Balls>();
    for(int i=1; i< _ballAmount;i++)
    {
      _ballList.add(new Balls(_suBallColor, (int)random(647,658),(int)random(14,360)));
    }
  }
  //Draw each ball in arraylist
  private void drawSurpriseBalls()
  {
    for(Balls b:_ballList)
    {
      b.drawBall();
       //Determines speed of ball moving x, y 
      b.moveBall(4,2);
    }
  }
  
   //Allows the emotion colour to be set in sketch window
  private void drawSurprise()
  {
    surpriseColor();
    fill(_suColor);
    stroke(_suColor);
     
  }
  
}
