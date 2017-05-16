# ProfilePicture
1. copy/paste the pde file from this repo into a new processing file
1. save that file
1. in the folder where that file is saved, create a new folder called "data"
1. save the image file from this repo to your data folder
1. fill in the blanks in the sketch. tinker until you have something that works.
1. press the spacebar to toggle between your sketch and the source image.
1. save a picture of yourself (or a standin) in your data folder
1. make the necessary changes to your code so that your picture is displayed instead of the bee:
   - change the `imageLoad` function call so it uses the filename of your picture
   - change the imgWidth and imgHeight variables so they are correct for your image. (HINT: check the println function in your code)
1. time to make some changes and see what happens. run your sketch between each of these changes:
   - tinker with the cellSize and scale
   - comment out the `float size = ...` line and add a new line `float size = cellSize * scale * .8`, then adjust the `.8` a bit
   - replace that `.8` (or whatever number you settled on) with `noise(x, y)`
   - replace that `noise(...)`
   - comment out that `float size = ...` line and add a new line `float size = map(greyness, 0, 255, cellSize * scale, .5)`
   - comment out the `ellipse(...)` line and add new lines: `textSize(cellSize * scale);` and `text(txt.charAt(currentLetter), xLoc, yLoc);`
1. settle on one set of changes you like, and adapt variables to make it unique.
1. when the sketch is running, press the `s` key to save a snapshot of your picture to your sketch folder
1. fork this repo, paste your code into the pde, and upload both (a) your saved (filtered) image into your sketch (the main) folder, and (b) your source image into the data folder.
