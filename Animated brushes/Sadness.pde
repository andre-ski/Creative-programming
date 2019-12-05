//ANDRE OFSOSKI 1314669
class Sadness
{
  //Class variables
  private color _sColor;
  //Array list to store balls
  private ArrayList<Balls> _ballList;
  final int _ballAmount = 20;
  private color _sBallColor;
  
  //Set default emotion colours
  private void sadColor()
  {
    _sColor= #160867;
    _sBallColor=#671008;
  }
  
  public Sadness()
  {
    //Set emotion colour and create set amount of balls in arraylist at random x and y position between set values.
    sadColor();
    _ballList=new ArrayList<Balls>();
    for(int i=1; i< _ballAmount;i++)
    {
      _ballList.add(new Balls(_sBallColor, (int)random(647,658),(int)random(14,360)));
    }
  }
  
  //Draw each ball in arraylist
  private void drawSadnessBalls()
  {
    for(Balls b:_ballList)
    {
      b.drawBall();
       //Determines speed of ball moving x, y 
      b.moveBall(2,2);
    }
  }
  
   //Allows the emotion colour to be set in sketch window
  private void drawSadness()
  {
   sadColor();
   fill(_sColor);
   stroke(_sColor);
   
   //Draws other limbs
       line(680, 330, 710, 600); //right leg
       line(708, 690, 710, 600); //right foot
       line(630, 330, 600, 600); //left leg
       line(596, 690, 600, 600); //left foot
  }
  
  
  
  
}
