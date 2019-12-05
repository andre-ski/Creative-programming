//Name: ANDRE OFSOSKI
//ID: 1314669

//CODE IN THIS PROJECT HAS BEEN USED FROM COMPX221 LECTURE AND TUTORIAL EXAMPLES
//LECTURER -- SIMON LAING   simonl@waikato.ac.nz 
//TUTOR -- NILESH KANJI    nkanji@waikato.ac.nz 

class OverallDataSet
{
String _siteID;
float _x;
float _y;
float _altitude; 
String _name;
String _siteType;
String _grade20042006; 
String _grade2010;
float _TLI20042006; 
float _TLI2010;
final int BOX_HEIGHT = 8;
protected Table lakeData; //Table for the object to store all data in
      
  public OverallDataSet(String siteID, float x, float y, float altitude, String name, String siteType, String grade20042006, String grade2010, float TLI20042006, float TLI2010)
  {
    //create the table to store only the data for this table
    lakeData = new Table(); //local table to store the data relevant to this lake
    lakeData.addColumn("SITE_ID");
    lakeData.addColumn("DATE");
    lakeData.addColumn("PARAMETER");
    lakeData.addColumn("VALUE");
    lakeData.addColumn("UNITS");
    
    _siteID = siteID;
    _x = x;
    _y = y;
    _altitude = altitude; 
    _name = name;
    _siteType = siteType;
    _grade20042006 = grade20042006 ; 
    _grade2010 = grade2010;
    _TLI20042006 =TLI20042006; 
    _TLI2010 = TLI2010;
  }
  
  protected void drawBar(int ypos)
  {
      int xpos =250;    
      noStroke();
      fill(#54B212);
      rect(xpos,ypos, _TLI20042006*100 , BOX_HEIGHT);
      ypos+=BOX_HEIGHT;
      fill(#12B2B0);
      rect(xpos,ypos, _TLI2010*100, BOX_HEIGHT); 
      
      textSize(14);
      textAlign(LEFT);
      text(_name,50,ypos);
      textSize(18);
      text("AMOUNT", width/2+30,750);
           
      strokeWeight(3);
      stroke(#FCFFFF);
      line(250,0,250,800);
      line(0,700,1280,700);
      
      textSize(30);
      textAlign(LEFT);
      text("OVERALL DATA", width/2-50,30);
      
      textSize(15);
      textAlign(LEFT);
      fill(#12B2B0);
      text("TLI2010",1100,140);
 
      textSize(15);
      textAlign(LEFT);
      fill(#54B212);
      text("TLI20042006",1100,120);
      
      textSize(14);
      textAlign(LEFT);
      fill(#12B2B0);
      text("(0)", 255,730);
      
      textSize(14);
      textAlign(LEFT);
      fill(#12B2B0);
      text("(8)", 1100,730);
      
      strokeWeight(0.5);
      line(275,725,1090,725);
     
     
  }
  
  public float getMin(String parameter) {
    float minVal = 0;
    float value = 0;
    boolean isNull = true;
    for (TableRow row : lakeData.matchRows(parameter, "PARAMETER")) {
      //println(row.getString("name") + ": " + row.getString("type"));
      value = row.getFloat("VALUE");
      if (minVal>value || isNull) minVal = value;
      isNull = false;
    }
    return minVal;
  }

  public String getStartDate(String parameter) {
    TableRow result = lakeData.matchRow(parameter, "PARAMETER");
    return result.getString("DATE");
  }

  public String getEndDate(String parameter) {
    String result = "";
    for (TableRow row : lakeData.matchRows(parameter, "PARAMETER")) {
      result = row.getString("DATE");
    }
    return result;
  }

  public float getMax(String parameter) {
    float maxVal = 0;
    float value = 0;
    boolean isNull = true;
    for (TableRow row : lakeData.matchRows(parameter, "PARAMETER")) {
      value = row.getFloat("VALUE");
      if (maxVal<value || isNull) maxVal = value;
      isNull = false;
    }
    return maxVal;
  }

  public void addTableRow(TableRow r) {
    //println("adding row");
    lakeData.addRow(r);
  }

  public Table getParemeterData(String parameter) {
    //generate a new table with just the parameter in it
    Table t = new Table();
    t.addColumn("VALUE");
    t.addColumn("DATE");
    t.addColumn("DAYS");
    float value;
    String date;
    for (TableRow row : lakeData.matchRows(parameter, "PARAMETER")) {
      value = row.getFloat("VALUE");
      date = row.getString("DATE");
      TableRow tr = t.addRow();
      tr.setFloat("VALUE", value);
      tr.setString("DATE", date);
      tr.setInt("DAYS", compareDates.betweenDates(getStartDate(parameter), date));
    }
    return t;
  }

  public void printTable() {
    //this.dumpBasicData();
    println("Printing table about lake >>");
    println(lakeData.getColumnTitles()); //Turns out this doesn't work if you dont have column titles set. Who knew!
    int totalColumns = lakeData.getColumnCount();
    for (int i=0; i<totalColumns; i++) {
      print("["+i+"]");
      print(lakeData.getColumnTitle(i));
      print("\t");
    }
    println();
    for (TableRow row : lakeData.rows()) {
      for (int i=0; i<totalColumns; i++) {
        //print("["+i+"]");
        print(row.getString(i));
        print("\t");
      }
      println();
    }
    println("Finished printing table <<");
    println();
  }
}
