music<-factor(c("pop","jazz","classic","pop","jazz","rock"))
music
length(music) # to find the length of the music factor
music[3]    # printing the 3rd value
music[3]<-"pop"   #assigning new value to the third index
music[3]<-"Rap"   #already present value should be given otherwise it will display an error

