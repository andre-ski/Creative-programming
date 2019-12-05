//ANDRE OFSOSKI 1314669
//Declare variables used in sketch window
PImage img;
Anger a1; // Anger class
Fear f1; //Fear class
Joy j1; // Joy class
Love l1; // Love class
Sadness s1; // Sadness class
Surprise su1; //Suirprise class
Balls b1; // Blood ball class
Passages p1; //Organ passages class
private color _Color;
private color _fontColor;

void setup()
{
  //Background and body image
  background(#E5E5E5);
  size(1280, 720);
  img=loadImage("body.png");
  img.resize(310,0);
  image(img,500,0);
  
  //Declaring my emotions and passages
  a1= new Anger();
  f1= new Fear();
  j1 = new Joy();
  l1 = new Love();
  s1 = new Sadness();
  su1 = new Surprise();
  p1 = new Passages();
  
  //Setting text size and colour
  textSize(80);
  _fontColor=000000;
  
}

//Where the emotions are drawn
//Resets background and body image with each new keypress to keep
//sketch window tidy. 
//If a key is pressed that isnt 'a,f,s,u,j,l' the animation will pause. 
void draw()
{ 
  //If a is pressed create the anger emotion
  if(key=='a')
  {  
    background(#E5E5E5);
    fill(_fontColor);
    text("Anger",100,150);
    //Insert body image
    image(img,500,0);
    _Color =  #F2570F;
    stroke(_Color);
    //Draw the shapes and passages for anger
    p1.drawVains();
    a1.drawAnger();
    p1.drawPassages();
    p1.drawArms();
    //remove stroke on the blood balls
    noStroke();
    a1.drawAngeryBalls(); 
    
  }
  
  //If f is pressed create the fear emotion
  if(key=='f')
  {
    background(#E5E5E5);
    fill(_fontColor);
    text("Fear",100,150);
     //Insert body image
    image(img,500,0);
    
    //Draw the shapes and passages for fear
    f1.drawFear();
    p1.drawPassages();
    f1.drawFearBalls();
    p1.drawArms();
    _Color =#D5D616;
    fill(_Color);
    //create an ellipse thats width is randomly changing between 100 and 120 width
    ellipse(655, 180, random(100,120), 60);
  }
  
  //If j is pressed create the joy emotion 
  if(key=='j')
  {
    background(#E5E5E5);
    fill(_fontColor);
    text("Joy",100,150);
     //Insert body image
    image(img,500,0);
    _Color = #ED6B13;
    stroke(_Color);
    
     //Draw the shapes and passages for joy
     p1.drawArms();
     p1.drawLegs();    
    j1.drawJoy();
    p1.drawPassages();
    
     //remove stroke on the blood balls
    noStroke();
    j1.drawJoyBalls();
    
    //Ellipses on top of body to highlight the head and chest areas, randomly fluctuating width and height
     ellipse(654, 45, random(45,50), random(70,80));
     ellipse(655, 180,random(130, 140),random(70,80));
  }
  
  //If l is pressed create the love emotion
  if(key=='l')
  {
    background(#E5E5E5);
    fill(_fontColor);
    text("Love",100,150);
    //Insert body image
    image(img,500,0);
    _Color = #B7460D ;
    //Draw body parts and passages for Love
    stroke(_Color);
    p1.drawArms();
    l1.drawLove();
    p1.drawPassages();

    _Color = #F5EE11;
    fill(_Color);
    //Remove stroke and draw smaller ellipses ontop of existing ellipses that are all jittering and spasming 
    noStroke();
    ellipse(654, 45, random(45,50), random(70,80));
    ellipse(655, 95, random(32,38), random(70,80));
    ellipse(655, 145, random(90,100), random(70,80));
    ellipse(655, 180,random(130, 140),random(70,80));
    ellipse(655, 240, random(90,100), random(70,80));
    ellipse(655, 290, random(90,100),random(70,80));
    ellipse(655, 330,random(90,100), random(70,80)); 
    
       //Draw the blood balls
    l1.drawLoveBalls();
  }
  
  //If s is pressed create the sadness emotion
  if(key=='s')
  {
    background(#E5E5E5);
    fill(_fontColor);
    text("Sadness",100,150);
    //Insert body image
    image(img,500,0);
    //Draw body and passages for sadness
    s1.drawSadness();
    p1.drawPassages();
    s1.drawSadnessBalls();
     p1.drawArms();
    p1.drawLegs();
  }
  
  //If u is pressed create the surprise emotion 
  if(key=='u')
  {
    background(#E5E5E5);
    fill(_fontColor);
    text("Surprise",100,150);
    //Insert body image
    image(img,500,0);
    _Color = #160748;
    stroke(_Color);
    //Draw body parts and passages for surprise
    p1.drawLegs();  
    su1.drawSurprise();
    p1.drawPassages();
    su1.drawSurpriseBalls();
    
    _Color = #E8D52A;
    fill(_Color);
    noStroke();
    //Small jittering yellow ellipse in the head
     ellipse(654, 45, random(30,35), random(20,25));
    
    
  }
}
