//Variables
ArrayList<String> wordList = new ArrayList<String>(); //list for the words
PFont font;  //Declare font
PImage peace; //Declare image
color colour; //Declare colour
int defaultfontSize=12; //fontsize unless changed
int defaultstrokeWeight=5; //stroke size unless changed
int defaultEllipseSize=200; //ellipse size unless changed
int index=0; //Index variable to use as a counter

//Setup method
void setup()
{
  String[] lineArray; //string array for lines of text
  String[] wordArray; //string array for words in text
  size(600,600); //size of portrait
  peace=loadImage("peace.jpg");
  image(peace,0,0);
  background(#f2f2f2); //grey background colour
  font = createFont("Arial", defaultfontSize, true); //font style etc
  lineArray= loadStrings("sourceText.txt"); //loading the text into line array
  
  //For every line of text
  for(int i =0; i<lineArray.length;i++)
       {
         //Add each word into array every time there is a space between words
        wordArray = split(lineArray[i],' ');
        //Add each word from the wordArray into wordList
        for(int k =0; k<wordArray.length;k++)
          {
           wordList.add(wordArray[k]);
          }
       }    
       
}

//Draw method
void draw()
{  
  //Create new lines, frrom mouse position with random lengths and directions.
   Line l = new Line(mouseX,mouseY,(int)random(600),(int)random(600),defaultstrokeWeight,colour);
   //Set textFont to set values
   textFont(font,defaultfontSize);
   //If left mouse button clicked
   if (mouseButton==LEFT)
    {  
      //Set words to colour
      fill(colour);
      if(index< wordList.size())
      {
        //Every set amount of frames place a word at current mouse position
        if(frameCount % 10 ==0)
         {
           text(wordList.get(index),mouseX,mouseY);
           index++;
          }
        }
        //If end of list reset back to start of wordList
       else
       {        
        index=0;
       }   
    } 
    //Draw line if right mouse button clicked
    if(mouseButton==RIGHT)
    {
       l.drawLine();
    }  
}

//Different hotkey commands
void keyPressed()
{
    if(key =='+')
    {
     defaultfontSize++;
     println("Font size: " + defaultfontSize); //Increase font size
    }
    if(key =='-')
    {
     defaultfontSize--;
     println("Font size: " + defaultfontSize); //Decrease font size
    }
    if(key == 's') 
    {
     saveFrame("myPicture.png"); //Saves frame
    }   
    if(key=='c') 
    {
      colour=color(random(255),random(255),random(255)); //Randomize colour
    }
    if(key=='b')
    {
     colour=#000000;          //Black colour
    }
    if(key=='w') 
    {
     colour=#FFFFFF;          //White colour
    } 
    if(key=='[')
    {
      defaultstrokeWeight++;     
      println("Line wdith: " + defaultstrokeWeight); //Increase thickness of line
    }
    if(key==']')
    {
      defaultstrokeWeight--;
      println("Line wdith: " + defaultstrokeWeight); //Decrease thickness of line
    }
    if(key==',')
    {
      defaultEllipseSize++;
      println("Ellipse size: " + defaultEllipseSize); //Increase diameter of ellipse
    }
    if(key=='.')
    {
     defaultEllipseSize--;
      println("Ellipse size: " + defaultEllipseSize); //Decrease diameter of ellipse
    }
     if(key=='r')
    {
       colour=#E82525; //Red colour
    }
    if(key=='g')
    {
       colour=#26C925; //Green colour
    }
    if(key=='o')
    {
       colour=#C98414; //Orange colour
    }
     if(key=='e')
    {
      Ellipse e=new Ellipse(mouseX,mouseY,defaultEllipseSize,defaultEllipseSize,colour); //Draw ellipse at current mouse position when 'e' is pressed.
      e.drawEllipse();
    }
    if(key=='m')
    {
       background(#f2f2f2); //Reset colour to background colour, incase of mistakes.
    }
    if(key=='i')
    {
        colour=peace.get(mouseX,mouseY);  //Get colour from underlying image
    }
}