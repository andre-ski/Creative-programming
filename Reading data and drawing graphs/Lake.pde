//Name: ANDRE OFSOSKI
//ID: 1314669

//CODE IN THIS PROJECT HAS BEEN USED FROM COMPX221 LECTURE AND TUTORIAL EXAMPLES
//LECTURER -- SIMON LAING   simonl@waikato.ac.nz 
//TUTOR -- NILESH KANJI    nkanji@waikato.ac.nz 

class Lake
{
  /* This class demonstrates one way of creating a lake object data
   In this particular version only data elements are included
   METHODS:
   public void dumpBasicData()
   public float getMin(String parameter)
   public void addTableRow(TableRow r)
   public void printTable()
   */
  protected String site_id, name, type, grade2004, grade2010;
  protected float x, y, z, tli2004, tli2010;

  protected Table lakeData; //Table for the object to store all data in

  public Lake(String _site_id, String _name, String _type, String g1, String g2, float _x, float _y, float _z, float tli1, float tli2) {
    //create the table to store only the data for this table
    lakeData = new Table(); //local table to store the data relevant to this lake
    lakeData.addColumn("SITE_ID");
    lakeData.addColumn("DATE");
    lakeData.addColumn("PARAMETER");
    lakeData.addColumn("VALUE");
    lakeData.addColumn("UNITS");

    site_id = _site_id;
    name = _name;
    type = _type;
    grade2004 = g1;
    grade2010 = g2;
    x = _x;
    y = _y;
    z = _z;
    tli2004 = tli1;
    tli2010 = tli2;
  }

  public void dumpBasicData() {
    println("Dumping basic DataManager about lake >>");
    print(site_id+",");
    print(name+",");
    print("<"+type+">");
    print(grade2004+",");
    print(grade2010+",");
    print(x+",");
    print(y+",");
    print(z+",");
    print(tli2004+",");
    print(tli2010+".");
    println();
  }

  //public void addData(Table t) {
  //}
  
  public float getColor(String parameter)
  {
    TableRow result = lakeData.matchRow(parameter, "PARAMETER");
    return result.getFloat("VALUE");
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
    this.dumpBasicData();
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
  
  public String getLakeID()
  {
    return site_id;
  }
}
