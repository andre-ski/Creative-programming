//Name: ANDRE OFSOSKI
//ID: 1314669

//CODE IN THIS PROJECT HAS BEEN USED FROM COMPX221 LECTURE AND TUTORIAL EXAMPLES
//LECTURER -- SIMON LAING   simonl@waikato.ac.nz 
//TUTOR -- NILESH KANJI    nkanji@waikato.ac.nz 

class EndPage extends Page {

  // Constructor for the title page
  public EndPage(int w, int h, PageManager manager) {
    super(w, h, manager);
  }  

  // Draw method for the title page
  protected void draw() {
    background(0);
    fill(manager.assets.defaultTextColor);
    textFont(manager.assets().defaultFont);
    textAlign(CENTER, CENTER);
    text("END OF DISPLAY\ntap to start again", width/2, height/2);
  }
  
  // Navigate back to title page
  public void tapEnd(float x, float y) {
    manager.setPageIndex(0); 
  }
  
}
