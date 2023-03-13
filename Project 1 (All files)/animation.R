# code for the animation creation 
# importing the library in order to create objects to create a meme 
library(magick)

# initializing all the images and resizing them with the use of pipes
image1 <- image_read("https://img.game8.co/3239530/9563ea10b8afb514e7b164b69063d740.jpeg/show") %>%
  image_scale(300)
image2 <- image_read("https://imgix.bustle.com/uploads/image/2021/3/12/a3d3f106-52b7-406e-87d3-f9edb1e6fb73-ab18acbf-2db6-404e-9044-3c5d9e925b97-cloud_bmp_jpgcopy.jpeg?w=1200&h=630&fit=crop&crop=faces&fm=jpg") %>%
  image_scale(300)
image3 <- image_read("https://static1-us.millenium.gg/articles/7/13/82/7/@/148179-1297944-ff7-article-image-bd-1-amp_main_media_schema-1.jpg") %>%
  image_scale(300)
image4 <- image_read("https://static.wikia.nocookie.net/finalfantasy/images/2/2a/Cloud_clashes_swords_with_Sephiroth_from_FFVII_Remake.jpg/revision/latest/scale-to-width-down/1920?cb=20200808020904") %>%
  image_scale(300)
image5 <- image_read("https://i.pinimg.com/736x/85/4f/1c/854f1c62dab69e1d1d5c04a81f1c74cd.jpg") %>%
  image_scale(300)

## Creating a blank frame to end the gif 
img <- image_blank(width = 300, height = 300, color = "black") %>%
  image_annotate("DEFEAT", size = 40, color = "white", 
                 location = "+60+50")

# converting the images to an animation using vectors and image_animation method
frames <- c(image1, image2, image3, image4, image5, img) %>%
  image_animate(fps = 1)
# coverting the code to a gif
image_write(frames, "my_animation.gif")