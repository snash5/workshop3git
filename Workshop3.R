rm(list=ls())  # Clears workspace


D<-10^-6         # Diffusion coefficient (in m^2/s)
dt<-1e-4         # Time step (in seconds)
total_time<-100  # Total time that simulation will run (in seconds)

dots_x<-rep(0,100)   # Creates 100 molecules to follow (x component of position)
dots_y<-rep(0,100)   # Creates 100 molecules to follow (y component of position)

dist<-sqrt(2*D*dt)   # Calculates the root mean squared distance that a molecule should travel based on D.

#automation of the data
n<- total_time/dt
for(i in 1:n){
  distx<-rnorm(length(dots_x),mean=dist,sd=0.341*dist) # Do not change this line
  disty<-rnorm(length(dots_y),mean=dist,sd=0.341*dist) # Do not change this line
  
  anglex<-sample(seq(0,2*pi,by=0.001*pi),length(dots_x),replace=TRUE) # Do not change this line
  angley<-sample(seq(0,2*pi,by=0.001*pi),length(dots_y),replace=TRUE) # Do not change this line
  
  dots_x<-dots_x+distx*cos(anglex)   # Moves the molecules (x component)
  dots_y<-dots_y+disty*sin(angley)   # Moves the molecules (y component)
  
}
plot(dots_x,dots_y)  # Plots the positions of the molecules


#distance formula
distance = function(x,y)(sqrt((x-0)^2 + (y-0)^2))

mean(distance(dots_x,dots_y)) #finds mean distance between the points

          
D<-10^-6         # Diffusion coefficient (in m^2/s)
dt<-1e-4         # Time step (in seconds)
total_time<-100  # Total time that simulation will run (in seconds)

dots_x<-rep(0,100)   # Creates 100 molecules to follow (x component of position)
dots_y<-rep(0,100)   # Creates 100 molecules to follow (y component of position)

  dist<-sqrt(2*D*dt)   # Calculates the root mean squared distance that a molecule should travel based on D.

  distx<-rnorm(length(dots_x),mean=dist,sd=0.341*dist) # Do not change this line
  disty<-rnorm(length(dots_y),mean=dist,sd=0.341*dist) # Do not change this line

  anglex<-sample(seq(0,2*pi,by=0.001*pi),length(dots_x),replace=TRUE) # Do not change this line
  angley<-sample(seq(0,2*pi,by=0.001*pi),length(dots_y),replace=TRUE) # Do not change this line

  dots_x<-dots_x+distx*cos(anglex)   # Moves the molecules (x component)
  dots_y<-dots_y+disty*sin(angley)   # Moves the molecules (y component)

  plot(dots_x,dots_y)  # Plots the positions of the molecules


