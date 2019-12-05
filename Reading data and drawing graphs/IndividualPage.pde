//Name: ANDRE OFSOSKI
//ID: 1314669

//CODE IN THIS PROJECT HAS BEEN USED FROM COMPX221 LECTURE AND TUTORIAL EXAMPLES
//LECTURER -- SIMON LAING   simonl@waikato.ac.nz 
//TUTOR -- NILESH KANJI    nkanji@waikato.ac.nz 

class IndividualPage extends Page {

  int count=0;
  String parameter="";

  // Constructor for the title page
  public IndividualPage(int w, int h, PageManager manager) {
    super(w, h, manager);
  }  

  // Draw method for the page
  protected void  draw() {
   // background(0);
    //i.drawDataSet();
     //rect(100,100,100,100); //testing
     textSize(10);

  }

  // Handle events
  public void tapEnd(float x, float y) {
      manager.setPageIndex(3);
    
  }
  
    // Method to reset the game when the page is first shown
    //public void pageShown() { 
    //super.pageShown();
    //count=0;
    //}
 
  public void keyHandle(char c)
  {
    println("Individiual page " + c);
  }

}
