public class Crop {
  //Variable to store the incoming image
  PImage imageIn;

  //Variable to store the cropped image
  PImage croppedImage;

  //Variables of the original image
  int originalWidth;
  int originalHeight;

  //Variables to store the cropped image size
  int croppedWidth;
  int croppedHeight;

  //Variables to store the ratio for the size
  int ratio1;
  int ratio2;

  //Set the constructor of the class
  public Crop(PImage tempImage, int tempInWidth, int tempInHeight, int tempNewWidth, int tempNewHeight) {
    imageIn = tempImage;
    originalWidth = tempInWidth;
    originalHeight = tempInHeight;
    croppedWidth = tempNewWidth;
    croppedHeight = tempNewHeight;
  }

  void run() {
    //croppedWidth = mouseX;
    //croppedHeight= mouseY;

    //Find the extra space for the cropping
    int extraWidth = originalWidth - croppedWidth;
    int extraHeight = originalHeight - croppedHeight;

    //imageIn.resize(croppedWidth, 0);
    croppedImage = imageIn.get(extraWidth/2, extraHeight/2, croppedWidth, croppedHeight);
    imageMode(CENTER);
    //image(croppedImage, width/2, height/2);
  }

  void info() {
    //Display information about the cropping method on the console
    float imageWidth = (float) originalWidth;
    float imageHeight = (float) originalHeight;
    float croppedWidthFloat = (float) croppedImage.width;
    float croppedHeightFloat = (float) croppedImage.height;

    println("Original image dimensions: " + originalWidth + " x " + originalHeight);

    if (originalWidth > originalHeight) {
      float aspectRatio = imageWidth / imageHeight;
      println("Original aspect ratio is: " + aspectRatio);
    }
    else if (originalWidth < originalHeight) {
      float aspectRatio = imageHeight / imageWidth;
      println("Original aspect ratio is: " + aspectRatio);
    }
    else if (originalWidth == originalHeight) {
      println("Original aspect ratio is: 1.0");
    }

    println("Cropped image dimensions: " + croppedWidth + " x " + croppedHeight);

    if (croppedWidth > croppedHeight) {
      float croppedRatio = croppedWidthFloat / croppedHeightFloat;
      println("Cropped aspect ratio is: " + croppedRatio);
    }
    else if (croppedWidth < croppedHeight) {
      float croppedRatio = croppedHeightFloat / croppedWidthFloat;
      println("Cropped aspect ratio is: " + croppedRatio);
    }
    else if (croppedWidthFloat == croppedHeight) {
      println("Cropped aspect ratio is: 1.0");
    }
    println("");
  }

  PImage getImage () {
    return croppedImage;
  }
}

