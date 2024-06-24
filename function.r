# functions in R

# without argument
my_function<-function(){
  print("hello world")
}
my_function()
my_function()
my_function()

#with argument
my_function<-function(fname){
  paste(fname,"Griffin")
}
my_function("peter")
my_function("Lois")
my_function("Stewie")

# sum of 2 numbers with function
sum_no <-function(){
  n1=4
  n2=5
  c=n1+n2
  c
}
sum_no()

#if we don't call the function it uses the default value
my_function<-function(country="Norway"){
  paste("Iam from ",country)
}
my_function("India")
my_function()


# Return in function
my_function<-function(x){
  return (5*x)
}
print(my_function(5))
print(my_function(6))
print(my_function(7))

#Nested function
nested_function<- function(x,y){
  a<-x+y
  return(a)
}
nested_function(nested_function(3,2),nested_function(5,5))

#Nested function where inner_function inside outer_function

outer_fun<-function(x){
  inner_fun<-function(y){
    a<-x+y
    print(x)
    print(y)
    return(a)
  }
  return (inner_fun)
}
output<-outer_fun(5)
output(5)

# factorial using recursion function
