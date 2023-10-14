i<-1
while(i<=1000)
{
  u1<-runif(1)
  u2<-runif(1)
  v1<-2*u1-1
  v2<-2*u2-1
  w=v1^2+v2^2
  if(w>1)
  {
    next
  }

y=(-2*(log(w)/w))^(1/2)
x1<-v1*y
x2<-v2*y
i<-i+1
print(x1)
print(x2)
}

