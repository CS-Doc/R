
#compare to: 68.2% or 0.682
N <- 10000000
counter <- 0
for(i in rnorm(N)){
  if(i >= -1 & i <= 1){
    counter <- counter + 1
  } 
}
counter / N



#outcounter <- 0
#N <- counter + outcounter
#answer <- (counter/N)
#else{
#       outcounter <- outcounter + 1
#}
#}  
#print(answer)