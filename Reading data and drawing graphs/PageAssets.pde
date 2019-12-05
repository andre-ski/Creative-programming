//Name: ANDRE OFSOSKI
//ID: 1314669

//CODE IN THIS PROJECT HAS BEEN USED FROM COMPX221 LECTURE AND TUTORIAL EXAMPLES
//LECTURER -- SIMON LAING   simonl@waikato.ac.nz 
//TUTOR -- NILESH KANJI    nkanji@waikato.ac.nz 

class PageAssets {

  // Reference to a default font
  public PFont defaultFont;
  
  // Theme colours for the app
  public color defaultTextColor=#FFFFFF;

  // Load assets in the constructor
  public PageAssets(float defaultFontSize) {
    defaultFont=createFont("Arial", defaultFontSize);
  }
}
