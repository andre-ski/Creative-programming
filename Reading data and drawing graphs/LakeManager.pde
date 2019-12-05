//Name: ANDRE OFSOSKI
//ID: 1314669

//CODE IN THIS PROJECT HAS BEEN USED FROM COMPX221 LECTURE AND TUTORIAL EXAMPLES
//LECTURER -- SIMON LAING   simonl@waikato.ac.nz 
//TUTOR -- NILESH KANJI    nkanji@waikato.ac.nz 

class LakeManager
{
  /* This class demonstrates one way of creating a lakeManager object 
   The LakeManager provides methods to store and retrieve individual 
   lake objects
   METHODS:
   public void printAllNames()
   public void addLake(Lake lake)
   public Lake getLakeByName(String aName)
   public Lake getLakeByID(String anID)
   public Lake getLakeByInt(int n)
   public int getSize()
   */
  protected ArrayList<Lake> lakes;

  LakeManager() {
    lakes = new ArrayList<Lake>(); //to store all lake objects
  }

  public void printAllNames() {
    for (Lake l : lakes) {
      println(l.name);
    }
  }

  public void addLake(Lake lake) {
    lakes.add(lake); //add the provided lake object to the array
  }

  public Lake getLakeByName(String aName) {
    //returns a lake object that matches a given name (case sensitive!)
    for (Lake l : lakes) {
      if (aName.equals(l.name)) return l;
    }
    println("WARNING: getLakeByName(String aName) was unable to find a lake named " + aName);
    return null;
  }
  public Lake getLakeByID(String anID) {
    for (Lake l : lakes) {
      if (anID.equals(l.site_id)) return l;
    }
    println("WARNING: getLakeByID(String anID) was unable to find a lake id of " + anID);
    return null;
  }

  public Lake getLakeByInt(int n) {
    if (n<lakes.size()) return lakes.get(n);
    println("WARNING: getLakeByInt(int n) was unable to find a lake numbered " + n);
    return null;
  }

  public int getSize() {
    return lakes.size();
  }
}
