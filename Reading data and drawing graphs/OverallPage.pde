//Name: ANDRE OFSOSKI
//ID: 1314669

//CODE IN THIS PROJECT HAS BEEN USED FROM COMPX221 LECTURE AND TUTORIAL EXAMPLES
//LECTURER -- SIMON LAING   simonl@waikato.ac.nz 
//TUTOR -- NILESH KANJI    nkanji@waikato.ac.nz 

class OverallPage extends Page {

  int count=0;

  // Constructor for the title page
  public OverallPage(int w, int h, PageManager manager) {
    super(w, h, manager);
  }  

  // Draw method for the title page
  protected void draw() {
    background(0);
    d.drawDataSet();
  }

  // Handle events
  public void tapEnd(float x, float y) {
      manager.setPageIndex(2);
    
  }
  
    // Method to reset the game when the page is first shown
  public void pageShown() { 
    super.pageShown();
    count=0;
  }
}
