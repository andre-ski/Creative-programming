//Name: ANDRE OFSOSKI
//ID: 1314669

//CODE IN THIS PROJECT HAS BEEN USED FROM COMPX221 LECTURE AND TUTORIAL EXAMPLES
//LECTURER -- SIMON LAING   simonl@waikato.ac.nz 
//TUTOR -- NILESH KANJI    nkanji@waikato.ac.nz 

LakeManager lakeManager;
CompareDates compareDates;
DataManager dataManager;
PageManager pageManager;
OverallDataManager d;
ColorGraph c;
ColorGraph cl;
String lake = "LAKE ROTORUA";
String parameter ="Total_Phosphorus";
int lakeNumber =0;
Boolean drawGraph = true;
float minValue; //careful with names, this is currently case sensitive!!!
float maxValue ;
String startDate;
String endDate;
int totalDays;
    
void setup() {
  size(1280, 800);

 d= new OverallDataManager("overall_lake_data.csv");
 c = new ColorGraph("water_colour.csv");
 cl = new ColorGraph("water_clarity.csv");
  pageManager = new PageManager(new PageAssets(50));
  pageManager.addPage(new TitlePage(800,800,pageManager));
  pageManager.addPage(new OverallPage(800,800,pageManager));
  pageManager.addPage(new IndividualPage(800,800,pageManager));
  pageManager.addPage(new EndPage(800,800,pageManager));
  
  compareDates = new CompareDates(); //allows comparison between dates
  dataManager = new DataManager(); //object to store and operate on DataManager
  lakeManager = new LakeManager(); //stores reference to all lake objects
  dataManager.register(lakeManager); //registers the lakemanager so it will receive lake objects

  /* Ingests information about all lakes from provided file, passes to lakeManager */
  dataManager.processLakeData("overall_lake_data.csv");
  /* Add information from each individual source to the DataManager object */
  String[] filesToProcess = {
    "turbidity.csv", "total_nitrogen.csv", "chlorophyll.csv", "total_phosphorus.csv"
  };
  dataManager.processParameterDataFiles(filesToProcess, true);

  //Wtf is this grrr this messed me up
  //noLoop();
}

void draw() {
pageManager.draw();
stroke(#ffffff);
  //thisLake.printTable();//show all data this lake has
  if(pageManager.getPageIndex()==2)
  {
    if(drawGraph ==true)
    {
    background(0);
     Lake thisLake = lakeManager.getLakeByInt(lakeNumber);
    //checkParameter();
     minValue = thisLake.getMin(parameter); //careful with names, this is currently case sensitive!!!
     maxValue = thisLake.getMax(parameter);
    startDate = thisLake.getStartDate(parameter);
    endDate = thisLake.getEndDate(parameter);
    totalDays = compareDates.betweenDates(startDate, endDate);

  /* Create and draw an example graph object */
  Graph graph = new Graph(thisLake.name + " " + parameter, 0, totalDays, minValue, maxValue, thisLake.getParemeterData(parameter));
  graph.draw(true);
  
  
  String s = parameter + " vs. " + "Date";
  
   textSize(30);
   textAlign(LEFT);
   

   text(thisLake.name, 50,60);
   
   textSize(20);
   text(s, 600,60);
   
   textSize(20);
   text(startDate, 65,750);
   text(endDate, 1150, 750);
   
   text(maxValue, 10, 100);
   text(minValue, 10, 700); 
   
   
     textSize(10);
     text("Key Press", 1120,20);
     text("1 = Chlorophyll_a", 1100,30);
     text("2 = Total_Nitrogen", 1100,40);
     text("3 = Total_Phosphorus", 1100,50);
     text("4 = Turbidity", 1100,60);
     text("5 = Water_Colour", 1100,70);
     text("6 = Water_Clarity", 1100,80);
     text("0 = Next Lake", 1100,90);
    }
  }
}

  // Pass events to the page manager //<>//
    void mousePressed()
    {
      pageManager.tapStart(mouseX, mouseY);
      println("Working " + pageManager.getPageIndex());
    }
    
    void mouseDragged() {
    pageManager.tapDrag(mouseX, mouseY);
    }

    void mouseReleased() {
    pageManager.tapEnd(mouseX, mouseY);
    }

void keyPressed()
{
  char k = key;
  pageManager.onKeyPress(k);
  
    if(pageManager.getPageIndex()==2)
      {
      drawGraph=false;
  if(key =='0')
  {
    drawGraph=true;
    if(lakeNumber < 30)
    {
      lakeNumber++;
    }
    else if(lakeNumber >= 30)
    {
      lakeNumber=0;
    }   
  }
  if(key =='1')
  {
    drawGraph = true;
    //pageManager.draw();
    background(0);
    parameter="Chlorophyll_a";
     Lake thisLake = lakeManager.getLakeByInt(lakeNumber);
    
    //checkParameter();
    float minValue = thisLake.getMin(parameter); //careful with names, this is currently case sensitive!!!
     float maxValue = thisLake.getMax(parameter);
    String startDate = thisLake.getStartDate(parameter);
    String endDate = thisLake.getEndDate(parameter);
    int totalDays = compareDates.betweenDates(startDate, endDate);

  /* Create and draw an example graph object */
  Graph graph = new Graph(thisLake.name + " " + parameter, 0, totalDays, minValue, maxValue, thisLake.getParemeterData(parameter));
  graph.draw(true);
  
  String s = parameter + " vs. " + "Date";
  
   textSize(30);
   textAlign(LEFT);
   fill(#FCFFFF);

   text(thisLake.name, 50,60);
   
   textSize(20);
   text(s, 600,60);
   
   textSize(20);
   text(startDate, 65,750);
   text(endDate, 1150, 750);
   
   text(maxValue, 10, 100);
   text(minValue, 10, 700);
  }
 if(key=='2')
  {
    drawGraph = true;
    background(0);
    parameter="Total_Nitrogen";
     Lake thisLake = lakeManager.getLakeByInt(lakeNumber);
  //thisLake.printTable();//show all data this lake has
  if(pageManager.getPageIndex()==2)
  {
    //checkParameter();
    float minValue = thisLake.getMin(parameter); //careful with names, this is currently case sensitive!!!
     float maxValue = thisLake.getMax(parameter);
    String startDate = thisLake.getStartDate(parameter);
    String endDate = thisLake.getEndDate(parameter);
    int totalDays = compareDates.betweenDates(startDate, endDate);

  /* Create and draw an example graph object */
  Graph graph = new Graph(thisLake.name + " " + parameter, 0, totalDays, minValue, maxValue, thisLake.getParemeterData(parameter));
  graph.draw(true);
  
  
  String s = parameter + " vs. " + "Date";
  
   textSize(30);
   textAlign(LEFT);
   fill(#FCFFFF);

   text(thisLake.name, 50,60);
   
   textSize(20);
   text(s, 600,60);
   
   textSize(20);
   text(startDate, 65,750);
   text(endDate, 1150, 750);
   
   text(maxValue, 10, 100);
   text(minValue, 10, 700); 
   
  }
  }
  if(key=='3')
  {
    drawGraph = true;
    pageManager.draw();
    background(0);
    parameter="Total_Phosphorus";
     Lake thisLake = lakeManager.getLakeByInt(lakeNumber);
  //thisLake.printTable();//show all data this lake has
  if(pageManager.getPageIndex()==2)
  {
    //checkParameter();
    float minValue = thisLake.getMin(parameter); //careful with names, this is currently case sensitive!!!
     float maxValue = thisLake.getMax(parameter);
    String startDate = thisLake.getStartDate(parameter);
    String endDate = thisLake.getEndDate(parameter);
    int totalDays = compareDates.betweenDates(startDate, endDate);

  /* Create and draw an example graph object */
  Graph graph = new Graph(thisLake.name + " " + parameter, 0, totalDays, minValue, maxValue, thisLake.getParemeterData(parameter));
  graph.draw(true);
  
  
  String s = parameter + " vs. " + "Date";
  
   textSize(30);
   textAlign(LEFT);
   fill(#FCFFFF);

   text(thisLake.name, 50,60);
   
   textSize(20);
   text(s, 600,60);
   
   textSize(20);
   text(startDate, 65,750);
   text(endDate, 1150, 750);
   
   text(maxValue, 10, 100);
   text(minValue, 10, 700); 
  }
}
  if(key=='4')
  {
    drawGraph = true;
    background(0);
    parameter = "Turbidity";
     Lake thisLake = lakeManager.getLakeByInt(lakeNumber);
  //thisLake.printTable();//show all data this lake has
  if(pageManager.getPageIndex()==2)
  {
    //checkParameter();
    minValue = thisLake.getMin(parameter); //careful with names, this is currently case sensitive!!!
    maxValue = thisLake.getMax(parameter);
    startDate = thisLake.getStartDate(parameter);
    endDate = thisLake.getEndDate(parameter);
    totalDays = compareDates.betweenDates(startDate, endDate);

  /* Create and draw an example graph object */
  Graph graph = new Graph(thisLake.name + " " + parameter, 0, totalDays, minValue, maxValue, thisLake.getParemeterData(parameter));
  graph.draw(true);
  
  
  String s = parameter + " vs. " + "Date";
  
   textSize(30);
   textAlign(LEFT);
   fill(#FCFFFF);

   text(thisLake.name, 50,60);
   
   textSize(20);
   text(s, 600,60);
   
   textSize(20);
   text(startDate, 65,750);
   text(endDate, 1150, 750);
   
   text(maxValue, 10, 100);
   text(minValue, 10, 700); 
  }
  }
      
  if(key=='5') //<>//
  {
     drawGraph=false;
    if(pageManager.getPageIndex()==2)
    {
    background(0);
    c.drawDataColor();
    textSize(15);
    String s ="OVERALL COLOUR";
     String f="PRESS 0 BEFORE TAPPING AGAIN";
     text(s,50,765);
      text(f,50,785);
    }
   }
   
   
   if(key=='6')
   {
      drawGraph=false;
     if(pageManager.getPageIndex()==2)
        {
     background(0);
     cl.drawDataColor();
     textSize(15);
      String s ="OVERALL CLARITY";
      String f="PRESS 0 BEFORE TAPPING AGAIN";
     text(s,50,765);
     text(f,50,785);
        }
   }
  }
}


/* How to compare two dates using the compareDates object */
//println(compareDates.betweenDates("1/01/2010", "10/01/2010")); //example comparing two dates
//println(compareDates.betweenDates("1/1/2010", "10/1/2010")); //example comparing two dates
//println(compareDates.betweenDates("5/07/1983", "27/10/2017")); //example comparing dates from the actual DataManager ("12532")
//println(compareDates.yearsBetweenDates("5/07/1983", "27/10/2017"));
