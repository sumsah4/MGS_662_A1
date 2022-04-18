library(keras)
library(tensorflow)
library(EBImage)
library(arrayhelpers)
devtools::install_github("rstudio/tensorflow")
devtools::install_github("rstudio/keras")
tensorflow::install_tensorflow()
tensorflow::tf_config()
use_condaenv("r-tensorflow")
dir <- "/Users/sumsah/Desktop/ProjectData/I/"
train_data <- image_data_generator(rescale = 1/255)
t_gen <- flow_images_from_directory(dir,train_data,target_size = c(28,28),batch_size=1)
reticulate::py_config()
reticulate::py_install('pillow',pip = TRUE)
reticulate::py_install('scipy',pip = TRUE)
batch <- generator_next(t_gen)
i1 <- image_load("/Users/sumsah/Desktop/ProjectData/I/1.jpg")
i1
i1a <-image_to_array(i1)
i2 <- resize(i1a,1,100)
i2
twoD <- as.data.frame(i2)
View(twoD)
write.csv(twoD,"firstimage.csv")
for (j in 1:106) {
  imageDir <- paste("/Users/sumsah/Desktop/ProjectData/I/",j,'.jpg', sep = '')
  ix <- image_load(imageDir)
  imageName <- paste(j,'.csv')
  iarray <- image_to_array(ix)
  iarray <- resize(iarray,1,100)
  idf <- as.data.frame(iarray)
  write.csv(idf,imageName)
}

