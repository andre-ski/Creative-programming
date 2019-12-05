 //ANDRE OFSOSKI 1314669
 class Passages
 {
   //Do not need to pass anything to this class
    public Passages()
    {
      
    }
    
    public void drawPassages()
    { 
      //Draws the main organs and large ellipses down the body starting from head
       strokeWeight(1);
       ellipse(654, 45, 58, 80); //organ ellipses
       ellipse(655, 95, 39, 80);
       ellipse(655, 145, 100, 80);
       ellipse(655, 180, 160, 80);
       ellipse(655, 240, 100, 80);
       ellipse(655, 290, 100, 80);
       ellipse(655, 330, 100, 80);    
    }
    
    public void drawArms()
    {
      //Draws arms with thick stroke 
       strokeWeight(7);
       line(600, 160, 570, 290);//left arm to elbow
       line(520, 380, 570, 290);//elbow to hand
        
      
       line(710, 160, 740, 290);//right arm to elbow
       line(790, 380, 740, 290);//elbow to hand        
    }
    
    public void drawLegs()
    {
      //Draws legs with thick stroke
      strokeWeight(7);
    
      line(680, 330, 710, 600); //right leg
       line(708, 690, 710, 600); //right foot
       line(630, 330, 600, 600); //left leg
       line(596, 690, 600, 600); //left foot
    }
    
    public void drawVains()
    {
      //Draws the random and spastic looking veins called upon in Anger emotion 
      //with thinner stroke compared to other limbs.
      strokeWeight(3);
     line(random(620,650), random(180,220), random(590,550), random(124,170));
     line(random(600,620), random(140,150), random(580,600), random(210,235));
      line(random(620,650), random(180,220), random(590,550), random(124,170));
     line(random(600,620), random(140,150), random(580,600), random(210,235));
     
     line(random(710,730), random(180,220), random(700,660), random(124,170));
     line(random(720,730), random(140,150), random(700,660), random(200,250));
       line(random(710,730), random(180,220), random(700,660), random(124,170));
     line(random(720,730), random(140,150), random(700,660), random(200,250));
     
     
     line(random(680,700), random(300,340), random(700,720), random(300,610));
     line(random(620,640), random(300,340), random(600,620), random(300,610));
     line(random(680,700), random(300,340), random(700,720), random(300,610));
     line(random(620,640), random(300,340), random(600,620), random(300,610));
    }
 }
