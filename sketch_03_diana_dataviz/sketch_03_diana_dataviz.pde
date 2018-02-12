/* Data Viz / Population of cities*/

//Libraries
import processing.pdf.*;
//Global Variables
PShape baseMap;
String csv[];
String myData [][];
PFont myFont;

//SETUP to set and load our image, strings and arrays
void setup() {
  size(1200, 600);
  myFont= createFont("FuturaPT-Medium", 13);
  baseMap=loadShape("WorldMap.svg");
  csv=loadStrings("populationcities.csv");
  myData= new String[csv.length][4];
  for (int i=0; i<csv.length; i++) {
    myData[i]=csv[i].split(",");
    println(myData[i][0]);
  }
}

//draw map and shape
void draw() {
  beginRecord(PDF, "population.pdf");
  shape(baseMap, 0, 0, width, height);
  for (int i=0; i<myData.length; i++) {
    fill(#749EF5, 90);
    noStroke();
    float graphLong = map (float(myData[i][2]), -180, 180, 0, width);
    float graphLat = map(float(myData[i][3]), 90, -90, 0, height);
    float markerSize=0.04*sqrt(float(myData[i][1]));
    ellipse(graphLong, graphLat, markerSize, markerSize);
    ellipse(graphLong, graphLat, markerSize/6, markerSize/6);// /6 means 6 times smaller
   

    if (i<20) {
      fill(0);
      textFont(myFont);
      text(myData [i][0], graphLong+10, graphLat+5); //+10 move text to avoid overlapping
    }
  }
  endRecord();
}