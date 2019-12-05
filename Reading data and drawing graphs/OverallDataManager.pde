//Name: ANDRE OFSOSKI
//ID: 1314669

//CODE IN THIS PROJECT HAS BEEN USED FROM COMPX221 LECTURE AND TUTORIAL EXAMPLES
//LECTURER -- SIMON LAING   simonl@waikato.ac.nz 
//TUTOR -- NILESH KANJI    nkanji@waikato.ac.nz 

class OverallDataManager
{
  private ArrayList<OverallDataSet> _overallData;
  
  public OverallDataManager(String filename)
  {
    //Create the new array list
    _overallData = new ArrayList<OverallDataSet>();
    //Load the csv file
    String[] lineArray = loadStrings(filename);
    String[] csvArray;
    for(String s: lineArray)
    {
      csvArray = split(s, ',');
      _overallData.add(new OverallDataSet((csvArray[0]),  float(csvArray[1]), float(csvArray[2]),float(csvArray[3]), (csvArray[4]), (csvArray[5]), (csvArray[6]), (csvArray[7]),  float(csvArray[8]),  float(csvArray[9])));
    }
  }
  
  public void drawDataSet()
  {
    int value =2;
    for(OverallDataSet d: _overallData)
    {
      d.drawBar(value*20); 
      value++;
    } 
  } 
}
