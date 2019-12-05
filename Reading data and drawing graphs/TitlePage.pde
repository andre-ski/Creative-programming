//Name: ANDRE OFSOSKI
//ID: 1314669

//CODE IN THIS PROJECT HAS BEEN USED FROM COMPX221 LECTURE AND TUTORIAL EXAMPLES
//LECTURER -- SIMON LAING   simonl@waikato.ac.nz 
//TUTOR -- NILESH KANJI    nkanji@waikato.ac.nz 

class TitlePage extends Page {

  // Constructor for the title page
  public TitlePage(int w, int h, PageManager manager) {
    super(w, h, manager);
  }  

  // Draw method for the title page
  protected void draw() {
    background(0);
    // If the page has just been shown, fade in the title text 
    // by changing the default alpha with elapsed time
    color c=manager.assets.defaultTextColor;
    if (millis()-timePageShown<=1000)
      c=color(red(c),green(c),blue(c),255*(millis()-timePageShown)/1000);
    fill(c);
    // Draw the title
    textFont(manager.assets().defaultFont);
    textAlign(CENTER, CENTER);
    text("START OF DISPLAY\nplease tap to start", width/2, height/2);
  }


  public void tapEnd(float x, float y) {
    manager.setPageIndex(1);
  }
}
