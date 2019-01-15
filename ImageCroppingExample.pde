///////////////////////////////////////////////////////////////////////////////
// This is a code example written by SoniconLab.
// It provides a crop class that can be easily implemented into your projects.
//
// Use the constructor of the class with arguments for the original image, its
// size, and the cropped size of the final image.
//
///////////////////////////////////////////////////////////////////////////////

//Variable to store the original image
PImage originalImage;

//Create a new crop object from the class
Crop crop;

//Variables to store the final size of the image
//To get a different final size, change these variables accordingly
int finalSizeX = 600;
int finalSizeY = 500;

void setup() {
  //Set size of screen/window
  size(800, 600);
frameRate(10);
  //Load the original image (data folder from sketch directory
  originalImage = loadImage("landscape.png");

  //Create a new instance of the class
  //Pass as arguments the original image, and the size variables
  crop = new Crop(originalImage, originalImage.width, originalImage.height, finalSizeX, finalSizeY);
}

void draw() {
  background(0);
  crop.run();
  crop.info();
  image(crop.getImage(), width/2, height/2);
}
