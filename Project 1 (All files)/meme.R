# code for the meme creation 

# importing the library in order to create objects to create a meme 
library(magick)

# initializing an image to the name image1 and image2 and resizing it with the use of pipes
image1 <- image_read("https://i.imgflip.com/443119.png") %>%
    image_scale(400)
image2 <- image_read("https://en.meming.world/images/en/a/aa/Something_of_a_Scientist.jpg") %>%
  image_scale(400)
## creating a blank frame to add text 
img3 <- image_blank(width = 400, height = 70, color = "black") %>%
  image_annotate("When you write\nsome code for the first time", size = 20, color = "white", 
                 location = "+100+10")

# converting 2 images to 1 using vectors and image_append method
meme <- image_append(c(img3, image1, image2), stack = TRUE) 
# coverting the code to an image of the meme
image_write(meme, "my_meme.jpg")
