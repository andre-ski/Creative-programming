//Name: ANDRE OFSOSKI
//ID: 1314669

//CODE IN THIS PROJECT HAS BEEN USED FROM COMPX221 LECTURE AND TUTORIAL EXAMPLES
//LECTURER -- SIMON LAING   simonl@waikato.ac.nz 
//TUTOR -- NILESH KANJI    nkanji@waikato.ac.nz 

class ColorGraph
{
  private ArrayList<ColorManager> _overallColor;
  
  public ColorGraph(String filename)
  {
    //Create the new array list
    _overallColor = new ArrayList<ColorManager>();
    //Load the csv file
    String[] lineArray = loadStrings(filename);
    String[] csvArray;
    for(String s: lineArray)
    {
      csvArray = split(s, ',');
      _overallColor.add(new ColorManager((csvArray[0]),(csvArray[1]), (csvArray[2]),(csvArray[3]), (csvArray[4])));
    }
  }
  
  public void drawDataColor()
  {
    Lake thisLake = lakeManager.getLakeByInt(lakeNumber);
    for(ColorManager c: _overallColor)
    {
      if(c.getLakeID().equals(thisLake.getLakeID()))
      {
        textSize(30);     
       
        c.drawColor(); 
        String s = thisLake.name;
       text(s,50,750);
      }
    } 
  } 
}
