a<-0.8
u1<-runif(2000)
u2<-runif(2000)
u3<-runif(2000)
for(i in 1:2000)
{
  if(u1[i]<=a)
  {
    x<-u2[i]
  }
  else
  {
    x<-max(u2[i],u3[i])
  }
  print(x)
}

