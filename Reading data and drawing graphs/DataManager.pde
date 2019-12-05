//Name: ANDRE OFSOSKI
//ID: 1314669

//CODE IN THIS PROJECT HAS BEEN USED FROM COMPX221 LECTURE AND TUTORIAL EXAMPLES
//LECTURER -- SIMON LAING   simonl@waikato.ac.nz 
//TUTOR -- NILESH KANJI    nkanji@waikato.ac.nz 

class DataManager
{
  /* This class demonstrates loading data from CSV files for use in Lake objects
   METHODS:
   public void processLakeData(String csvfile) 
   public void register(LakeManager l) 
   public void processLakeData(String csvfile, boolean printToConsole)
   public void printLakeDataManager(int n)
   public void printLakeDataManager(String aName)
   public void processParameterDataFiles(String[] files)
   public void processParameterDataFiles(String[] files, boolean printToConsole)
   */
  protected LakeManager lm;

  public void processLakeData(String csvfile) {
    this.processLakeData(csvfile, false);
  }

  public void register(LakeManager l) {
    lm = l;
  }

  public void processLakeData(String csvfile, boolean printToConsole) {
    /* Ingests DataManager from the supplied CSV file to create the lake objects from */
    if (printToConsole) println("Adding ALL lakes from file >> " + csvfile);
    Table table;
    table = loadTable(csvfile, "header");

    if (printToConsole) {
      println(table.getRowCount() + " total rows in table"); 
      print("These are the column titles >>");
      println(table.getColumnTitles());
    }

    for (TableRow row : table.rows()) {
      String id = row.getString(0);//"SITE_ID"); //On mac it is incorrectly reading the first character
      String name = row.getString("NAME");
      String siteType = row.getString("SITE_TYPE");
      String grade2004 = row.getString("GRADE20042006");
      String grade2010 = row.getString("GRADE2010");
      float x = row.getFloat("X");
      float y = row.getFloat("Y");
      float z = row.getFloat("ALTITUDE");
      float tli2004 = row.getFloat("TLI20042006");
      float tli2010 = row.getFloat("TLI2010");

      /* Create a new lake object to receive the data */
      if (printToConsole) println("Creating and adding lake object named >> " + name);
      Lake thisLake = new Lake(id, name, siteType, grade2004, grade2010, x, y, z, tli2004, tli2010);
      lm.addLake(thisLake);
    }
    if (printToConsole) {
      println("Loading complete! <<");
      println();
    }
  }

  public void printLakeDataManager(int n) {
    /* Method to print all DataManager about a specific lake */
    if (n<lm.getSize()) {
      Lake l = lm.getLakeByInt(n);
      l.printTable();
    } else {
      println("<!> something asked for a lake that doesn't exist <!>");
    }
  }

  public void printLakeDataManager(String aName) {
    /* Method to print all DataManager about a specific lake */
    Lake l = lm.getLakeByName(aName);
    if (l != null) {
      l.printTable();
    } else {
      println("<!> something asked for a lake that doesn't exist <!>");
    }
  }

  public void processParameterDataFiles(String[] files) {
    for (String s : files) {
      this.processParameterData(s, false);
    }
  }
  public void processParameterDataFiles(String[] files, boolean printToConsole) {
    for (String s : files) {
      this.processParameterData(s, printToConsole);
    }
  }

  public void processParameterData(String csvfile) {
    this.processParameterData(csvfile, false);
  }

  public void processParameterData(String csvfile, boolean printToConsole) {
    /* Method to add DataManager from a CSV file */

    if (printToConsole) println("Adding lake data from file " + csvfile);
    Table table;
    table = loadTable(csvfile, "header");

    if (printToConsole) println(table.getRowCount() + " total rows in table");
    for (TableRow row : table.rows()) {
      //find lake to receive the DataManager using the ID
      String lakeID = row.getString("SITE_ID");
      Lake l = lm.getLakeByID(lakeID);
      if (l != null) {
        l.addTableRow(row);
      } else {
        println("lake object not found to attach row data to");
      }
    }
    if (printToConsole) {
      println("Loading lake data complete! <<" + csvfile);
      println();
    }
  }
}
