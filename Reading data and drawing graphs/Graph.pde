//Name: ANDRE OFSOSKI
//ID: 1314669

//CODE IN THIS PROJECT HAS BEEN USED FROM COMPX221 LECTURE AND TUTORIAL EXAMPLES
//LECTURER -- SIMON LAING   simonl@waikato.ac.nz 
//TUTOR -- NILESH KANJI    nkanji@waikato.ac.nz 

class Graph
{
  /* This class demonstrates one way of graphing data
   METHODS:
   public void draw(boolean showAxis)
   */

  protected PVector hBounds, vBounds, h, v;
  protected Table values;
  protected String title;

  Graph(String t, int h_min, int h_max, float v_min, float v_max, Table table) {
    hBounds = new PVector (h_min, h_max);//store max and min bounds for the graph (x/h)
    vBounds = new PVector (v_min, v_max);//store max and min bounds for the graph (y/v)

    //Map supplied data min and max values to desired dimensions min and max, for each axis 
    h = new PVector(map(hBounds.x, hBounds.x, hBounds.y, 100, width-100), map(hBounds.y, hBounds.x, hBounds.y, 100, width-100) );
    v = new PVector(map(vBounds.x, vBounds.x, vBounds.y, 100, height-100), map(vBounds.y, vBounds.x, vBounds.y, 100, height-100) );

    title = t;//set title of the table

    values = table;//provide a reference to the values
  }

  public void draw(boolean showAxis) {
    if (showAxis) {
      //draw the horizontal and vertical axis
      strokeWeight(0.5);
      line(h.x, v.y, h.y, v.y);
      line(h.x, v.x, h.x, v.y);
    }
    if (values != null) {
      //write the title on the lower right
      textSize(32);
      fill(0);
      textAlign(RIGHT);
      //text(title, h.y, v.y+50);

      //plot the data points on the graph, retrieving values 
      strokeWeight(2);
      fill(#54B212);
      PVector a = new PVector(0, 0);//temporary vector to hold the data point
      for (TableRow row : values.rows()) {
        //        for (int i=0; i<values.getColumnCount(); i++) {      }
        a.x = row.getFloat("DAYS");
        a.y = row.getFloat("VALUE");
        ellipse(map(a.x, hBounds.x, hBounds.y, 100, width-100), map(a.y, vBounds.x, vBounds.y, height-100, 100), 10, 10 );

        /* Uncomment the following to have labels printed next to each data point */
        /*
        textSize(12);
         textAlign(LEFT);
         text(int(a.x) +","+ a.y, map(a.x, hBounds.x, hBounds.y, 100, width-100), map(a.y, vBounds.x, vBounds.y, height-100, 100)-20);
         */
      }
    }
  }
}
