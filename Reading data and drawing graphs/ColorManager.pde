//Name: ANDRE OFSOSKI
//ID: 1314669

//CODE IN THIS PROJECT HAS BEEN USED FROM COMPX221 LECTURE AND TUTORIAL EXAMPLES
//LECTURER -- SIMON LAING   simonl@waikato.ac.nz 
//TUTOR -- NILESH KANJI    nkanji@waikato.ac.nz 

class ColorManager
{
  String _siteID;
  String _date;
  String _parameter;
  String _value;
  String _units;
  
  final int ELLIPSE_SIZE = 14;
  //protected Table colorData; //Table for the object to store all data in
      
  public ColorManager(String siteID, String date, String parameter, String value, String units)
  {
      _siteID = siteID;
      _date = date;
      _parameter = parameter;
      _value = value;
      _units = units;
  }
  
  protected void drawColor()
  {
        noStroke();
        //Clarity
        if (_value.equals("turbid") == true) 
        {
          fill(#D1C09C);
          ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
    
        else if(_value.equals("clear") == true)
        {
          fill(#68CDE0);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
         else if(_value.equals("opaque") == true)
        {
         fill(#ABBABC);
         ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
         else if(_value.equals("clear/opaque") == true)
        {
         fill(#BAD1D3);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
       //Colours     
        else if(_value.equals("brown/yellow") == true)
        {
         fill(#8B7930);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("brown") == true)
        {
         fill(#4D4213);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("green") == true)
        {
         fill(#297C19);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("milky/grey") == true)
        {
         fill(#BCBCBC);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("milky/green") == true)
        {
         fill(#ADCEA7);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("dark-green") == true)
        {
         fill(#14360D);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("green/brown") == true)
        {
         fill(#31431E);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("brown/yellow/green") == true)
        {
         fill(#5D6C0B);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("brown/green") == true)
        {
         fill(#3A4330);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("black") == true)
        {
         fill(#0F0F0F);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("blue") == true)
        {
         fill(#1054E3);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("green/milky/grey") == true)
        {
         fill(#C7E8C7);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("clear/milky/grey") == true)
        {
         fill(#DCEAF5);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("milky/blue") == true)
        {
         fill(#7FB0D6);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
         else if(_value.equals("green/blue") == true)
        {
         fill(#65C4A6);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
         else if(_value.equals("blue/green") == true)
        {
         fill(#0E8165);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("blue green") == true)
        {
         fill(#0E8165);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("green/ blue") == true)
        {
         fill(#0E8165);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("milky/grey/blue") == true)
        {
         fill(#A2C4C1);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("yellow") == true)
        {
         fill(#F5E425);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("grey/green") == true)
        {
         fill(#71816F);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("green/grey") == true)
        {
         fill(#71816F);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("green/yellow") == true)
        {
         fill(#9AB431);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("yellow/green") == true)
        {
         fill(#A8D623);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("green/brown/grey") == true)
        {
         fill(#B8D881);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("yellow/green/milky") == true)
        {
         fill(#E3F5C8);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("milky/blue/green") == true)
        {
         fill(#C8F5E6);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("brown/green/yellow") == true)
        {
         fill(#989B19);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("green/brown/yellow") == true)
        {
         fill(#989B19);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("milky/green/grey") == true)
        {
         fill(#D4FCD5);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("milky/grey/green") == true)
        {
         fill(#D4FCD5);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("green grey") == true)
        {
         fill(#C5D6C5);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }
        
        else if(_value.equals("milky grey") == true)
        {
         fill(#F5FAF5);
        ellipse(random(width),random(height),ELLIPSE_SIZE,ELLIPSE_SIZE);
        }

        //Or else there was invalid data
        else 
        {
        println("Invalid Colour OR Clarity DATA");
        println(_siteID + _date + _parameter + _value + _units);
        }
  }  
  
  public String getLakeID()
  {
    return _siteID;
  }
 
}
