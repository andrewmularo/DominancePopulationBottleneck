# =========================================================================================
#==========================================================================================
# ====== Dominance can increase genetic variance after a population bottleneck: ===========
# ======         A synthesis of the theoretical and empirical evidence          ===========
# =========================================================================================

# ====================== Model Equations and Plots ========================================

## Set appropriate working directory 
setwd("")

## Load all necessary packages 
library(deSolve)
library(cubature)
library(rootSolve)
library(plotly)
library(ggplot2)
library(plot.matrix)
library(psych)
library(reshape2)
library(gridExtra)
library(ggpubr)





# =======================================================================================
# ======================= Neutral Model - Derived from Willis and Orr (1993) =============
# ========================================================================================





## Pre-bottleneck additive genetic variance equation 

# VA_1<- (2*p*q*(1+d*(q-p))^2)    ### Copied directly from Willis and Orr (1993)


# VA_2<- 2*p*(1+2*d1+d1^2)-2*p^2*(1+6*d1+5*d1^2)+8*p^3*(d1+2*d1^2)-8*p^4*d1^2 # Expanded out 


## Post-bottleneck additive genetic variance equation (i.e. estimated additive variance)



# EVA<- ((p*(1-p)*(2*N-1)/N^3)*((d*N+N-d)^2-2*d*p*(N-1)*(2*N*(d+1)-3*d-d*(2*N-3)*p)))


## Derivative of EVA-post-bottleneck additive genetic variance 

# dEVA<- -(((1-q)-1)*(1-q)*(d^2*(2*(1-q)^2*(12*x^2-22*x+9)-2*(1-q)*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*d*x*((1-q)*(4-6*x)+3*x-2)+x^2))/x^4






#========================================================================================
#### Figure 1 - VA ratio of post and pre-bottleneck genetic variance under 2,20, and 200 founders 
d.vec<- rep(0,10)
q.vec<- rep(0,9)

a<- matrix(0,length(d.vec), length(q.vec))  #N=2
b<- matrix(0,length(d.vec), length(q.vec))  #N=20
c<- matrix(0,length(d.vec), length(q.vec))  #N=200

N<- 2 
N2<- 20 
N3<- 200 



## I am assigning the inner loop to the allele frequencies, these are the columns 
## Outer loop is dominance coefficient, or the rows 
## For a founding population of 2 individuals 


## Function for Figure 1 
figure_1_func<-function(p,q,N,h){
  figure1<-((p*(1-p)*(2*N-1)/N^3)*(((-2*h+1)*N+N-(-2*h+1))^2-2*(-2*h+1)*p*(N-1)*(2*N*((-2*h+1)+1)-3*(-2*h+1)-(-2*h+1)*(2*N-3)*p)))/(2*p*(1-p)*(1+(-2*h+1)*((1-p)-p))^2) 
  figure1
}

for (h in 1:length(d.vec)){
  for (q in 1:length(q.vec)) {
    a[h,q]<-figure_1_func(1-(q*.1),(q*.1),N,(h*.05))
  }
}

for (h in 1:length(d.vec)){
  for (q in 1:length(q.vec)) {
    b[h,q]<-figure_1_func(1-(q*.1),(q*.1),N2,(h*.05))
  }
}


for (h in 1:length(d.vec)){
  for (q in 1:length(q.vec)) {
    c[h,q]<-figure_1_func(1-(q*.1),(q*.1),N3,(h*.05))
  }
}

z.vec_N<- z.vec_N<- rep(0,9)
for (q in 1:length(q.vec)) {
  z.vec_N[q]<-figure_1_func(1-(q*.1),(q*.1),N,0)
}
z.vec_N

z.vec_N2<- rep(0,9)
for (q in 1:length(q.vec)) {
  z.vec_N2[q]<-figure_1_func(1-(q*.1),(q*.1),N2,0)
}
z.vec_N2

z.vec_N3<- rep(0,9)
for (q in 1:length(q.vec)) {
  z.vec_N3[q]<-figure_1_func(1-(q*.1),(q*.1),N3,0)
}
z.vec_N3


a<- rbind(z.vec_N,a)

b<- rbind(z.vec_N2,b)

c<- rbind(z.vec_N3,c)



# Matrix a figure 
a

colnames(a)<- seq(0.1,0.9,by=0.1)
rownames(a)<- seq(0.0,0.5,by=0.05)

print(a)

model1_figureA<- melt(a)
as.data.frame(model1_figureA)
model1_figureA
model1_figureA$Var2<- as.factor(model1_figureA$Var2)
model1_figureA$Var1<- as.factor(model1_figureA$Var1)


plota<- ggplot(model1_figureA, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Recessive Allele Frequency (q)", y="VA ratio", title = "20 founders", color = "h", group="h")+
  geom_line(aes(color=Var1))+
  geom_point(aes(color=Var1))+
  theme_classic()+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18), 
        title = element_text(size = 20, face = "bold"), 
        legend.text = element_text(face = "bold", color = "black", size = 13))




## Matrix b figure 
b


colnames(b)<- seq(0.1,0.9,by=0.1)
rownames(b)<- seq(0.0,0.5,by=0.05)

print(b)

model1_figureB<- melt(b)
model1_figureB
model1_figureB$Var2<- as.factor(model1_figureB$Var2)
model1_figureB$Var1<- as.factor(model1_figureB$Var1)

plotb<- ggplot(model1_figureB, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Recessive Allele Frequency (q)", y="VA ratio", title = "20 founders", color = "h", group="h")+
  geom_line(aes(color=Var1))+
  geom_point(aes(color=Var1))+
  theme_classic()+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18), 
        title = element_text(size = 20, face = "bold"), 
        legend.text = element_text(face = "bold", color = "black", size = 13))



# Matrix c figure 
c


colnames(c)<- seq(0.1,0.9,by=0.1)
rownames(c)<- seq(0.0,0.5,by=0.05)

print(c)

model1_figureC<- melt(c)
model1_figureC

model1_figureC$Var2<- as.factor(model1_figureC$Var2)
model1_figureC$Var1<- as.factor(model1_figureC$Var1)

plotc<- ggplot(model1_figureC, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Recessive Allele Frequency (q)", y="VA ratio", title = "200 founders", color = "h", group="h")+
  geom_line(aes(color=Var1))+
  geom_point(aes(color=Var1))+
  theme_classic()+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18), 
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")

figure1<- ggarrange(plota, plotb, plotc, nrow = 3, ncol = 1, common.legend = TRUE, legend = "right")
figure1


# =========================================================================================
# Figure 2 - Post-bottleneck VA as a response to NF (number of founders)

## Setting different dominance coefficients 
h1<- 0
h2<- 3
h3<- 5
h4<- 7
h5<- 10


#Set up empty vector 
x.vec<- rep(0,10)
N.vec<- rep(0,50)


# Set up empty matrices
a<- matrix(0, length(x.vec), length(N.vec))
b<- matrix(0, length(x.vec), length(N.vec))
c<- matrix(0, length(x.vec), length(N.vec))
d<- matrix(0, length(x.vec), length(N.vec))
e<- matrix(0, length(x.vec), length(N.vec))




figure_2_func<-function(p,q,N,h){
  figure2<-((p*(1-p)*(2*N-1)/N^3)*(((-2*h+1)*N+N-(-2*h+1))^2-2*(-2*h+1)*p*(N-1)*(2*N*((-2*h+1)+1)-3*(-2*h+1)-(-2*h+1)*(2*N-3)*p)))
  figure2
}

for (q in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    a[q,N]<- figure_2_func(1-(q*0.1),(q*0.1),N,(h1*0.05))
  }
}

for (q in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    b[q,N]<- figure_2_func(1-(q*0.1),(q*0.1),N,(h2*0.05))
  }
}
for (q in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    c[q,N]<- figure_2_func(1-(q*0.1),(q*0.1),N,(h3*0.05))
  }
}
for (q in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    d[q,N]<- figure_2_func(1-(q*0.1),(q*0.1),N,(h4*0.05))
  }
}
for (q in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    e[q,N]<- figure_2_func(1-(q*0.1),(q*0.1),N,(h5*0.05))
  }
}




## Row and column names 
rownames(a)<- seq(0.1,1,by=0.1)
rownames(b)<- seq(0.1,1,by=0.1)
rownames(c)<- seq(0.1,1,by=0.1)
rownames(d)<- seq(0.1,1,by=0.1)
rownames(e)<- seq(0.1,1,by=0.1)

colnames(a)<- seq(1,50,by=1)
colnames(b)<- seq(1,50,by=1)
colnames(c)<- seq(1,50,by=1)
colnames(d)<- seq(1,50,by=1)
colnames(e)<- seq(1,50,by=1)






### h=0.0 figure 
model1_figureA<- melt(a)
as.data.frame(model1_figureA)
model1_figureA
model1_figureA$Var2<- as.factor(model1_figureA$Var2)
model1_figureA$Var1<- as.factor(model1_figureA$Var1)
colnames(model1_figureA)

plota<- ggplot(model1_figureA, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.0", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,1.0))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

### h=0.15 figure 
model1_figureb<- melt(b)
as.data.frame(model1_figureb)
model1_figureb
model1_figureb$Var2<- as.factor(model1_figureb$Var2)
model1_figureb$Var1<- as.factor(model1_figureb$Var1)
colnames(model1_figureb)

plotb<- ggplot(model1_figureb, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.15", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,1.0))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

### h=0.25 figure 
model1_figurec<- melt(c)
as.data.frame(model1_figurec)
model1_figurec
model1_figurec$Var2<- as.factor(model1_figurec$Var2)
model1_figurec$Var1<- as.factor(model1_figurec$Var1)
colnames(model1_figurec)

plotc<- ggplot(model1_figurec, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.25", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,1.0))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))


### h=0.35 figure 
model1_figured<- melt(d)
as.data.frame(model1_figured)
model1_figured
model1_figured$Var2<- as.factor(model1_figured$Var2)
model1_figured$Var1<- as.factor(model1_figured$Var1)
colnames(model1_figured)

plotd<- ggplot(model1_figured, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.35", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,1.0))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))



### h=0.5 figure 
model1_figuree<- melt(e)
as.data.frame(model1_figuree)
model1_figuree
model1_figuree$Var2<- as.factor(model1_figuree$Var2)
model1_figuree$Var1<- as.factor(model1_figuree$Var1)
colnames(model1_figuree)

plote<- ggplot(model1_figuree, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.5", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,1.0))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

figure2<- ggarrange(plota, plotb, plotc,plotd,plote)
figure2


# ========================================================================================
# Figure 3 - The number of founders required to obtain the maximum amount of additive variance 
## Using derivative [dEVA1] equation 

## I am assigning the outer loop to the dominance coefficient (0.0-1.0), those are the rows 
## I am assigning the inner loop to the allele frequencies, these are the columns 
## Set up empty vectors to be the length and width of the matrix 
a.vec<- rep(0,100)
b.vec<- rep(0,99)

## Set up empty matrix 
x<- matrix(0,length(a.vec), length(b.vec))
x


## I am assigning the outer loop to the dominance coefficient (0.0-1.0), those are the rows 
## I am assigning the inner loop to the allele frequencies, these are the columns 
## Checked on the derivative, all looks good!

for (a in 1:length(a.vec)){
  for(b in 1:length(b.vec)){
    fun1=function(x){with(as.list(params),{
      #derivative of variance function with respect to number of founders 
      dEVA=-(((1-q)-1)*(1-q)*((-2*h+1)^2*(2*(1-q)^2*(12*x^2-22*x+9)-2*(1-q)*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(-2*h+1)*x*((1-q)*(4-6*x)+3*x-2)+x^2))/x^4
      return(c(dEVA=dEVA))})}
    params<-c(h=(a*0.005),q=(b*0.01))
    max1<-multiroot(f=fun1,start=c(1), maxiter=1000, positive=TRUE)
    #Storing the output
    ## e.g. matrix [row, column]
    x[a,b]<- max1$root
    
  }
}
x


w.vec<- rep(0,99)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=-(((1-q)-1)*(1-q)*((-2*h+1)^2*(2*(1-q)^2*(12*x^2-22*x+9)-2*(1-q)*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(-2*h+1)*x*((1-q)*(4-6*x)+3*x-2)+x^2))/x^4
    return(c(dEVA=dEVA))})}
  params<-c(h=0.0,q=(w*0.01))
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


w.vec


x<- rbind(w.vec,x)


colnames(x)<- seq(0.01,0.99,by=0.01)
rownames(x)<- seq(0.0,0.5,by=0.005)

print(x)

model1_figured<- melt(x)
model1_figured
model1_figured$Var1<- as.factor(model1_figured$Var1)
model1_figured$Var2<- as.factor(model1_figured$Var2)

names(model1_figured)[3]<- "Nf"

figure3<- ggplot(model1_figured, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = Nf))+
  scale_fill_gradient(low = "yellow", high = "Red")+
  labs(x="Recessive Allele frequency (q)", y="Dominance Coefficient (h)", title = "Number of Founders")+ 
  theme_classic()+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 5),
        axis.title.x = element_text(face = "bold", color = "black", size = 10),
        axis.text.y = element_text(face = "bold", color = "black", size = 5),
        axis.title.y = element_text(face = "bold", color = "black", size = 10), 
        title = element_text(size = 30, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 23), 
        legend.title = element_text(face = "bold", color = "black", size = 30))

figure3



# =======================================================================================
# =========== Purifying Selection Model - Derived from Zhang et al., (2004) =============
# =======================================================================================



## Pre-bottleneck additive genetic variance equation 

# VA0<- (a^2/4)*((1+d^2)*(2*p*(1-p))+2*d*(2*p*(1-p)*(1-2*p))-2*d^2*((2*p*(1-p))^2))  


## Post-bottleneck additive genetic variance equation (i.e. estimated additive variance)

# VAF<- (a^2/4)*((1-(1/(2*NF))))*((1+d^2*(1-2*((1-(1/(2*NF))))+2*((1-(1/(2*NF))))*((1-(2/(2*NF)))))*(2*p*(1-p))+2*((1-(2/(2*NF))))*(d1*(2*p*(1-p)*(1-2*p))-((1-(3/(2*NF))))*d^2*((2*p*(1-p))^2))))   #additive variance 



## Derivative of EVA-post-bottleneck additive genetic variance 

# dVAF<- -(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)



# =========================================================================================
# Figure 4 - VA ratio of post and pre-bottleneck genetic variance under 2,20, and 200 founders 
# under low (0.01) and high (0.1) selective pressures 


# Set up empty vector 
h.vec<- rep(0,10)
p.vec<- rep(0,9)



## Set up empty matrices 
e<- matrix(0,length(h.vec), length(p.vec)) #N=2
f<- matrix(0,length(h.vec), length(p.vec)) #N=20
g<- matrix(0,length(h.vec), length(p.vec)) #N=200

i<- matrix(0,length(h.vec), length(p.vec)) #N=2
j<- matrix(0,length(h.vec), length(p.vec)) #N=20
k<- matrix(0,length(h.vec), length(p.vec)) #N=200




### Selection coefficients 
a1<- 0.01
a2<- 0.1


#### Cleaning this up with functions 

NF<- 2 
NF2<- 20
NF3<- 200

## Note that Zhang et al., 2004b denotes p as the mutant frequency, we have changed this to q for continuity with the neutral model
figure_4_func<- function(a,p,N,h){
  figure_4<- ((a1^2/4)*(1-(1/N))*((1+(2*h-1)^2*(1-2*(1-(1/N))+2*(1-(1/N))*(1-(2/N))))*(2*p*(1-p))+2*(1-(2/N))*((2*h-1)*(2*p*(1-p)*(1-2*p))-(1-(3/N))*(2*h-1)^2*((2*p*(1-p))^2))))/((a1^2/4)*((1+(2*h-1)^2)*(2*p*(1-p))+2*(2*h-1)*(2*p*(1-p)*(1-2*p))-2*(2*h-1)^2*((2*p*(1-p))^2)))
  figure_4
}

## Low selection
for (h in 1:length(h.vec)) {
  for (p in 1:length(p.vec))  {
    e[h,p]<- figure_4_func(a1,(p*0.1),(2*NF),(h*0.05))
    
    
  }
}

for (h in 1:length(h.vec)) {
  for (p in 1:length(p.vec))  {
    f[h,p]<- figure_4_func(a1,(p*0.1),(2*NF2),(h*0.05))
    
    
  }
}

for (h in 1:length(h.vec)) {
  for (p in 1:length(p.vec))  {
    g[h,p]<- figure_4_func(a1,(p*0.1),(2*NF3),(h*0.05))
    
    
  }
}




z.vec<- rep(0,9)
for (p in 1:length(z.vec)){
  z.vec[p]<- figure_4_func(a1,(p*0.1),(2*NF),0)
}
z.vec

x.vec<- rep(0,9)
for (p in 1:length(x.vec)){
  x.vec[p]<- figure_4_func(a1,(p*0.1),(2*NF2),0)
}
x.vec

y.vec<- rep(0,9)
for (p in 1:length(y.vec)){
  y.vec[p]<- figure_4_func(a1,(p*0.1),(2*NF3),0)
}
y.vec


e<- rbind(z.vec,e)

f<- rbind(x.vec,f)

g<- rbind(y.vec,g)



## High selection
for (h in 1:length(h.vec)) {
  for (p in 1:length(p.vec))  {
    i[h,p]<- figure_4_func(a2,(p*0.1),(2*NF),(h*0.05))
    
    
  }
}

for (h in 1:length(h.vec)) {
  for (p in 1:length(p.vec))  {
    j[h,p]<- figure_4_func(a2,(p*0.1),(2*NF2),(h*0.05))
    
    
  }
}

for (h in 1:length(h.vec)) {
  for (p in 1:length(p.vec))  {
    k[h,p]<- figure_4_func(a2,(p*0.1),(2*NF3),(h*0.05))
    
    
  }
}




w.vec<- rep(0,9)
for (p in 1:length(w.vec)){
  w.vec[p]<- figure_4_func(a2,(p*0.1),(2*NF),0)
}
w.vec

v.vec<- rep(0,9)
for (p in 1:length(v.vec)){
  v.vec[p]<- figure_4_func(a2,(p*0.1),(2*NF2),0)
}
v.vec

t.vec<- rep(0,9)
for (p in 1:length(t.vec)){
  t.vec[p]<- figure_4_func(a2,(p*0.1),(2*NF3),0)
}
t.vec


i<- rbind(w.vec,i)

j<- rbind(v.vec,j)

k<- rbind(t.vec,k)







## Matrix e
e
colnames(e)<- seq(0.1,0.9,by=0.1)
rownames(e)<- seq(0.0,0.5,by=0.05)

print(e)

model2_figure1<- melt(e)
model2_figure1
model2_figure1$Var1<- as.factor(model2_figure1$Var1)
model2_figure1$var2<- as.factor(model2_figure1$Var2)


plote<- ggplot(model2_figure1, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Recessive Allele Frequency (q)", y="VA ratio", title = "2 founders        s=0.01", color = "h")+
  geom_line(aes(color=Var1))+
  geom_point(aes(color=Var1))+
  theme_classic()+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18), 
        title = element_text(size = 15, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))



## Matrix f
f
colnames(f)<- seq(0.1,0.9,by=0.1)
rownames(f)<- seq(0.0,0.5,by=0.05)

print(f)

model2_figure2<- melt(f)
model2_figure2
model2_figure2$Var1<- as.factor(model2_figure2$Var1)
model2_figure2$var2<- as.factor(model2_figure2$Var2)


plotf<- ggplot(model2_figure2, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Mutant frequency (q)", y="VA ratio", title = "20 founders", color = "h")+
  geom_line(aes(color=Var1))+
  geom_point(aes(color=Var1))+
  theme_classic()+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 15, face = "bold"),
        legend.text =  element_text(face = "bold", color = "black", size = 13))



## Matrix g

g
colnames(g)<- seq(0.1,0.9,by=0.1)
rownames(g)<- seq(0.0,0.5,by=0.05)

print(g)

model2_figure3<- melt(g)
model2_figure3
model2_figure3$Var1<- as.factor(model2_figure3$Var1)
model2_figure3$var2<- as.factor(model2_figure3$Var2)


plotg<- ggplot(model2_figure3, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Mutant frequency (q)", y="VA ratio", title = "200 founders", color = "h")+
  geom_line(aes(color=Var1))+
  geom_point(aes(color=Var1))+
  theme_classic()+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 15, face = "bold"),
        legend.text  =  element_text(face = "bold", color = "black", size = 13))



plotlowselection <- ggarrange(plote, plotf, plotg, ncol = 1, nrow = 3, common.legend = TRUE, legend = "right")+ggtitle("Weak Selection")




## Matrix h
i
colnames(i)<- seq(0.1,0.9,by=0.1)
rownames(i)<- seq(0.0,0.5,by=0.05)

print(i)

model2_figure4<- melt(i)
model2_figure4
model2_figure4$Var1<- as.factor(model2_figure4$Var1)
model2_figure4$var2<- as.factor(model2_figure4$Var2)


ploti<- ggplot(model2_figure4, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Recessive Allele Frequency (q)", y="VA ratio", title = "2 founders        s=0.1", color = "h")+
  geom_line(aes(color=Var1))+
  geom_point(aes(color=Var1))+
  theme_classic()+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 15, face = "bold"),
        legend.text =  element_text(face = "bold", color = "black", size = 13))



## Matrix i
j
colnames(j)<- seq(0.1,0.9,by=0.1)
rownames(j)<- seq(0.0,0.5,by=0.05)

print(j)

model2_figure5<- melt(j)
model2_figure5
model2_figure5$Var1<- as.factor(model2_figure5$Var1)
model2_figure5$var2<- as.factor(model2_figure5$Var2)


plotj<- ggplot(model2_figure5, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Mutant frequency (q)", y="VA ratio", title = "20 founders", color = "h")+
  geom_line(aes(color=Var1))+
  geom_point(aes(color=Var1))+
  theme_classic()+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 15, face = "bold"), 
        legend.text =  element_text(face = "bold", color = "black", size = 13))


## Matrix k

k
colnames(k)<- seq(0.1,0.9,by=0.1)
rownames(k)<- seq(0.0,0.5,by=0.05)

print(k)

model2_figure6<- melt(k)
model2_figure6
model2_figure6$Var1<- as.factor(model2_figure6$Var1)
model2_figure6$var2<- as.factor(model2_figure6$Var2)


plotk<- ggplot(model2_figure6, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Mutant frequency (q)", y="VA ratio", title = "200 founders", color = "h")+
  geom_line(aes(color=Var1))+
  geom_point(aes(color=Var1))+
  theme_classic()+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 15, face = "bold"),
        legend.text =  element_text(face = "bold", color = "black", size = 13))

plothighselection<- ggarrange(ploti, plotj, plotk, ncol = 1, nrow = 3, common.legend = TRUE, legend = "right")+ggtitle("Strong Selection")

figure4<- ggarrange(plotlowselection, plothighselection, common.legend = TRUE, legend = "right")

figure4

## =======================================================================================
## Figure 5 - Post-bottleneck VA under various selection coefficients as a response to NF (number of founders)

## Selection coefficients 
a1<- 0.001 
a2<- 0.01 
a3<- 0.1 
a4<- 0.5


## Dominance coefficients 
h1<- 0
h2<- 0.25
h3<- 0.5


## Set up empty vectors 
x.vec<- rep(0,10)
N.vec<- rep(0,50)


## Set up empty matrices 
a<- matrix(0, length(x.vec), length(N.vec))
b<- matrix(0, length(x.vec), length(N.vec))
c<- matrix(0, length(x.vec), length(N.vec))




### s= 0.001

for (p in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    a[p,N]<- ((a1^2/4)*(1-(1/(2*N)))*((1+(2*(h1)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p*0.1)*(1-(p*0.1)))+2*(1-(2/(2*N)))*((2*(h1)-1)*(2*(p*0.1)*(1-(p*0.1))*(1-2*(p*0.1)))-(1-(3/(2*N)))*(2*(h1)-1)^2*((2*(p*0.1)*(1-(p*0.1)))^2))))
  }
}

for (p in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    b[p,N]<- ((a1^2/4)*(1-(1/(2*N)))*((1+(2*(h2)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p*0.1)*(1-(p*0.1)))+2*(1-(2/(2*N)))*((2*(h2)-1)*(2*(p*0.1)*(1-(p*0.1))*(1-2*(p*0.1)))-(1-(3/(2*N)))*(2*(h2)-1)^2*((2*(p*0.1)*(1-(p*0.1)))^2))))
  }
}

for (p in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    c[p,N]<- ((a1^2/4)*(1-(1/(2*N)))*((1+(2*(h3)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p*0.1)*(1-(p*0.1)))+2*(1-(2/(2*N)))*((2*(h3)-1)*(2*(p*0.1)*(1-(p*0.1))*(1-2*(p*0.1)))-(1-(3/(2*N)))*(2*(h3)-1)^2*((2*(p*0.1)*(1-(p*0.1)))^2))))
  }
}




rownames(a)<- seq(0.1,1,by=0.1)
rownames(b)<- seq(0.1,1,by=0.1)
rownames(c)<- seq(0.1,1,by=0.1)

colnames(a)<- seq(1,50,by=1)
colnames(b)<- seq(1,50,by=1)
colnames(c)<- seq(1,50,by=1)



### h=0.0
model1_figureA<- melt(a)
as.data.frame(model1_figureA)
model1_figureA
model1_figureA$Var2<- as.factor(model1_figureA$Var2)
model1_figureA$Var1<- as.factor(model1_figureA$Var1)
colnames(model1_figureA)

plota<- ggplot(model1_figureA, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.0", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,0.0000002))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

### h=0.25
model1_figureb<- melt(b)
as.data.frame(model1_figureb)
model1_figureb
model1_figureb$Var2<- as.factor(model1_figureb$Var2)
model1_figureb$Var1<- as.factor(model1_figureb$Var1)
colnames(model1_figureb)

plotb<- ggplot(model1_figureb, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.25", color = "q")+xlab("Nf")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,0.0000002))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

### h=0.5
model1_figurec<- melt(c)
as.data.frame(model1_figurec)
model1_figurec
model1_figurec$Var2<- as.factor(model1_figurec$Var2)
model1_figurec$Var1<- as.factor(model1_figurec$Var1)
colnames(model1_figurec)

plotc<- ggplot(model1_figurec, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.5", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,0.0000002))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))






g1<- ggarrange(plotc, plotb, plota, ncol = 1, nrow = 3)+labs(xlab="Nf")





### s=0.01
d<- matrix(0, length(x.vec), length(N.vec))
e<- matrix(0, length(x.vec), length(N.vec))
f<- matrix(0, length(x.vec), length(N.vec))


for (p in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    d[p,N]<- ((a2^2/4)*(1-(1/(2*N)))*((1+(2*(h1)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p*0.1)*(1-(p*0.1)))+2*(1-(2/(2*N)))*((2*(h1)-1)*(2*(p*0.1)*(1-(p*0.1))*(1-2*(p*0.1)))-(1-(3/(2*N)))*(2*(h1)-1)^2*((2*(p*0.1)*(1-(p*0.1)))^2))))
  }
}

for (p in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    e[p,N]<- ((a2^2/4)*(1-(1/(2*N)))*((1+(2*(h2)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p*0.1)*(1-(p*0.1)))+2*(1-(2/(2*N)))*((2*(h2)-1)*(2*(p*0.1)*(1-(p*0.1))*(1-2*(p*0.1)))-(1-(3/(2*N)))*(2*(h2)-1)^2*((2*(p*0.1)*(1-(p*0.1)))^2))))
  }
}

for (p in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    f[p,N]<- ((a2^2/4)*(1-(1/(2*N)))*((1+(2*(h3)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p*0.1)*(1-(p*0.1)))+2*(1-(2/(2*N)))*((2*(h3)-1)*(2*(p*0.1)*(1-(p*0.1))*(1-2*(p*0.1)))-(1-(3/(2*N)))*(2*(h3)-1)^2*((2*(p*0.1)*(1-(p*0.1)))^2))))
  }
}




rownames(d)<- seq(0.1,1,by=0.1)
rownames(e)<- seq(0.1,1,by=0.1)
rownames(f)<- seq(0.1,1,by=0.1)

colnames(d)<- seq(1,50,by=1)
colnames(e)<- seq(1,50,by=1)
colnames(f)<- seq(1,50,by=1)

### h=0.0
model1_figureD<- melt(d)
as.data.frame(model1_figureD)
model1_figureD
model1_figureD$Var2<- as.factor(model1_figureD$Var2)
model1_figureD$Var1<- as.factor(model1_figureD$Var1)
colnames(model1_figureD)

plotd<- ggplot(model1_figureD, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.0", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,0.00002))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

### h=0.25
model1_figuree<- melt(e)
as.data.frame(model1_figuree)
model1_figuree
model1_figuree$Var2<- as.factor(model1_figuree$Var2)
model1_figuree$Var1<- as.factor(model1_figuree$Var1)
colnames(model1_figuree)

plote<- ggplot(model1_figuree, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.25", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,0.00002))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

### h=0.5
model1_figuref<- melt(f)
as.data.frame(model1_figuref)
model1_figuref
model1_figuref$Var2<- as.factor(model1_figuref$Var2)
model1_figuref$Var1<- as.factor(model1_figuref$Var1)
colnames(model1_figuref)

plotf<- ggplot(model1_figuref, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.5", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,0.00002))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))




g2<- ggarrange(plotf, plote, plotd, ncol = 1, nrow = 3)

### s=0.1

g<- matrix(0, length(x.vec), length(N.vec))
h<- matrix(0, length(x.vec), length(N.vec))
i<- matrix(0, length(x.vec), length(N.vec))


for (p in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    g[p,N]<- ((a3^2/4)*(1-(1/(2*N)))*((1+(2*(h1)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p*0.1)*(1-(p*0.1)))+2*(1-(2/(2*N)))*((2*(h1)-1)*(2*(p*0.1)*(1-(p*0.1))*(1-2*(p*0.1)))-(1-(3/(2*N)))*(2*(h1)-1)^2*((2*(p*0.1)*(1-(p*0.1)))^2))))
  }
}

for (p in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    h[p,N]<- ((a3^2/4)*(1-(1/(2*N)))*((1+(2*(h2)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p*0.1)*(1-(p*0.1)))+2*(1-(2/(2*N)))*((2*(h2)-1)*(2*(p*0.1)*(1-(p*0.1))*(1-2*(p*0.1)))-(1-(3/(2*N)))*(2*(h2)-1)^2*((2*(p*0.1)*(1-(p*0.1)))^2))))
  }
}

for (p in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    i[p,N]<- ((a3^2/4)*(1-(1/(2*N)))*((1+(2*(h3)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p*0.1)*(1-(p*0.1)))+2*(1-(2/(2*N)))*((2*(h3)-1)*(2*(p*0.1)*(1-(p*0.1))*(1-2*(p*0.1)))-(1-(3/(2*N)))*(2*(h3)-1)^2*((2*(p*0.1)*(1-(p*0.1)))^2))))
  }
}
rownames(g)<- seq(0.1,1,by=0.1)
rownames(h)<- seq(0.1,1,by=0.1)
rownames(i)<- seq(0.1,1,by=0.1)


colnames(g)<- seq(1,50,by=1)
colnames(h)<- seq(1,50,by=1)
colnames(i)<- seq(1,50,by=1)


### h=0.0
model1_figureg<- melt(g)
as.data.frame(model1_figureg)
model1_figureg
model1_figureg$Var2<- as.factor(model1_figureg$Var2)
model1_figureg$Var1<- as.factor(model1_figureg$Var1)
colnames(model1_figureg)

plotg<- ggplot(model1_figureg, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.0", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0000,0.002))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

### h=0.25
model1_figureh<- melt(h)
as.data.frame(model1_figureh)
model1_figureh
model1_figureh$Var2<- as.factor(model1_figureh$Var2)
model1_figureh$Var1<- as.factor(model1_figureh$Var1)
colnames(model1_figureh)

ploth<- ggplot(model1_figureh, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.25", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0000,0.002))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

### h=0.5
model1_figurei<- melt(i)
as.data.frame(model1_figurei)
model1_figurei
model1_figurei$Var2<- as.factor(model1_figurei$Var2)
model1_figurei$Var1<- as.factor(model1_figurei$Var1)
colnames(model1_figurei)

ploti<- ggplot(model1_figurei, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.5", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0000,0.002))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

g3<- ggarrange(ploti, ploth, plotg, ncol=1, nrow=3)


### s=0.5

j<- matrix(0, length(x.vec), length(N.vec))
k<- matrix(0, length(x.vec), length(N.vec))
l<- matrix(0, length(x.vec), length(N.vec))

for (p in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    j[p,N]<- ((a4^2/4)*(1-(1/(2*N)))*((1+(2*(h1)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p*0.1)*(1-(p*0.1)))+2*(1-(2/(2*N)))*((2*(h1)-1)*(2*(p*0.1)*(1-(p*0.1))*(1-2*(p*0.1)))-(1-(3/(2*N)))*(2*(h1)-1)^2*((2*(p*0.1)*(1-(p*0.1)))^2))))
  }
}

for (p in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    k[p,N]<- ((a4^2/4)*(1-(1/(2*N)))*((1+(2*(h2)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p*0.1)*(1-(p*0.1)))+2*(1-(2/(2*N)))*((2*(h2)-1)*(2*(p*0.1)*(1-(p*0.1))*(1-2*(p*0.1)))-(1-(3/(2*N)))*(2*(h2)-1)^2*((2*(p*0.1)*(1-(p*0.1)))^2))))
  }
}

for (p in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    l[p,N]<- ((a4^2/4)*(1-(1/(2*N)))*((1+(2*(h3)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p*0.1)*(1-(p*0.1)))+2*(1-(2/(2*N)))*((2*(h3)-1)*(2*(p*0.1)*(1-(p*0.1))*(1-2*(p*0.1)))-(1-(3/(2*N)))*(2*(h3)-1)^2*((2*(p*0.1)*(1-(p*0.1)))^2))))
  }
}



rownames(j)<- seq(0.1,1,by=0.1)
rownames(k)<- seq(0.1,1,by=0.1)
rownames(l)<- seq(0.1,1,by=0.1)


colnames(j)<- seq(1,50,by=1)
colnames(k)<- seq(1,50,by=1)
colnames(l)<- seq(1,50,by=1)



### h=0.0
model1_figurej<- melt(j)
as.data.frame(model1_figurej)
model1_figurej
model1_figurej$Var2<- as.factor(model1_figurej$Var2)
model1_figurej$Var1<- as.factor(model1_figurej$Var1)
colnames(model1_figurej)

plotj<- ggplot(model1_figurej, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.0", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0000,0.05))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

### h=0.25
model1_figurek<- melt(k)
as.data.frame(model1_figurek)
model1_figurek
model1_figurek$Var2<- as.factor(model1_figurek$Var2)
model1_figurek$Var1<- as.factor(model1_figurek$Var1)
colnames(model1_figurek)

plotk<- ggplot(model1_figurek, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.25", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0000,0.05))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

### h=0.5
model1_figurel<- melt(l)
as.data.frame(model1_figurel)
model1_figurel
model1_figurel$Var2<- as.factor(model1_figurel$Var2)
model1_figurel$Var1<- as.factor(model1_figurel$Var1)
colnames(model1_figurel)

plotl<- ggplot(model1_figurel, aes(x=Var2, y=value, group = Var1)) +
  labs(x="Nf", y="VA", title = "h=0.5", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0000,0.05))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))




g4<- ggarrange(plotl, plotk, plotj, ncol = 1, nrow = 3)


figure5<- ggarrange(g1, g2, g3, g4, nrow = 1, ncol = 4)
figure5


## =======================================================================================
## Figure 6 - The number of founders required to maintain the maximum amount of additive variance 
##  under various combinations of dominance coefficents and selection coefficients under different allele frequencies for a model of purifying selection

#### s = 0.001 ###########################################################
### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,100)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 






for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- -(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=(d*0.01), a=0.001)
    max3<-multiroot(f=fun3,start=c(1), maxiter=100000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}




w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=-(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=(d*0.01), a=0.001)
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


w.vec


z<- rbind(w.vec,z)

rownames(z)<- seq(0.0, 0.5,by=0.005)
colnames(z)<- seq(0.01, 1.0,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "Nf"


plot1<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = Nf))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Recessive Allele Frequency (q)", y="Dominance Coefficient (h)", title = "s=0.001")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 30, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))




## s=0.01 ################################################################################## 

### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,100)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 



## Nested loop  

maxiter=1000

for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- -(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=(d*0.01), a= 0.01)
    max3<-multiroot(f=fun3,start=c(1), maxiter=100000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z


w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=-(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=(w*0.01), a=0.01)
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


z<- rbind(w.vec,z)

rownames(z)<- seq(0.00, 0.5,by=0.005)
colnames(z)<- seq(0.01, 1.0,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "Nf"


plot2<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = Nf))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Recessive Allele Frequency (q)", y="Dominance Coefficient (h)", title = "s=0.01")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 30, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))



## s = 0.1  ################################################################################## 

### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,100)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 



## Nested loop for low selection coefficient, a= 0.01 

maxiter=1000

for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- -(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=(d*0.01), a= 0.1)
    max3<-multiroot(f=fun3,start=c(1), maxiter=100000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=-(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=(w*0.01), a=0.1)
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


z<- rbind(w.vec,z)

z




rownames(z)<- seq(0.00, 0.5,by=0.005)
colnames(z)<- seq(0.01, 1.0,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "Nf"


plot3<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = Nf))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Recessive Allele Frequency (q)", y="Dominance Coefficient (h)", title = "s=0.1")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 30, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))



## s=0.5  ################################################################################## 

### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,100)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 



## Nested loop for low selection coefficient, a= 0.01 

maxiter=1000

for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- -(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=(d*0.01), a= 0.5)
    max3<-multiroot(f=fun3,start=c(1), maxiter=100000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z


w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=-(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=(w*0.01), a=0.5)
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


z<- rbind(w.vec,z)




rownames(z)<- seq(0.00, 0.5,by=0.005)
colnames(z)<- seq(0.01, 1.0,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "Nf"


plot4<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = Nf))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Recessive Allele Frequency (q)", y="Dominance Coefficient", title = "s=0.5")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 30, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))




figure6<- ggarrange(plot1, plot2, plot3, plot4, nrow = 2, ncol = 2)

figure6


## ====================================================================================
## Figure 7 - SimBit Forward Time genetic simulation 
## ===========================================================================
## Set up working directory in which the SimBit simulations results for nucleotide diversity were generated
setwd("")



#Trait 1 - h=0.0 ###########################################################

## Generation 2
trait1_2<- read.delim("output_pi_Trait1_G2.sites.pi")
trait1_2<- as.data.frame(trait1_2)
trait1_2$dominance<- c(0.0)
trait1_2$founders<- c(2)
trait1_2$generation<- c(2)

#Generation 50
trait1_50<- read.delim("output_pi_Trait1_G50.sites.pi")
trait1_50<- as.data.frame(trait120_50)
trait1_50$dominance<- c(0.0)
trait1_50$founders<- c(2)
trait1_50$generation<- c(50)

#Generation 100 
trait1_100<- read.delim("output_pi_Trait1_G100.sites.pi")
trait1_100<- as.data.frame(trait1_100)
trait1_100$dominance<- c(0.0)
trait1_100$founders<- c(2)
trait1_100$generation<- c(100)

#Generation 150 
trait1_150<- read.delim("output_pi_Trait1_G150.sites.pi")
trait1_150<- as.data.frame(trait1_150)
trait1_150$dominance<- c(0.0)
trait1_150$founders<- c(2)
trait1_150$generation<- c(150)

#Generation 200
trait1_200<- read.delim("output_pi_Trait1_G200.sites.pi")
trait1_200<- as.data.frame(trait120_200)
trait1_200$dominance<- c(0.0)
trait1_200$founders<- c(2)
trait1_200$generation<- c(200)

#Generation 250
trait1_250<- read.delim("output_pi_Trait1_G250.sites.pi")
trait1_250<- as.data.frame(trait1_250)
trait1_250$dominance<- c(0.0)
trait1_250$founders<- c(2)
trait1_250$generation<- c(250)

#Generation 300
trait1_300<- read.delim("output_pi_Trait1_G300.sites.pi")
trait1_300<- as.data.frame(trait1_300)
trait1_300$dominance<- c(0.0)
trait1_300$founders<- c(2)
trait1_300$generation<- c(300)


#Generation 350
trait1_350<- read.delim("output_pi_Trait1_G350.sites.pi")
trait1_350<- as.data.frame(trait1_350)
trait1_350$dominance<- c(0.0)
trait1_350$founders<- c(2)
trait1_350$generation<- c(350)


#Generation 400
trait1_400<- read.delim("output_pi_Trait1_G400.sites.pi")
trait1_400<- as.data.frame(trait1_400)
trait1_400$dominance<- c(0.0)
trait1_400$founders<- c(2)
trait1_400$generation<- c(400)

#Generation 450
trait1_450<- read.delim("output_pi_Trait1_G450.sites.pi")
trait1_450<- as.data.frame(trait1_450)
trait1_450$dominance<- c(0.0)
trait1_450$founders<- c(2)
trait1_450$generation<- c(450)

#Generation 501
trait1_501<- read.delim("output_pi_Trait1_G501.sites.pi")
trait1_501<- as.data.frame(trait120_501)
trait1_501$dominance<- c(0.0)
trait1_501$founders<- c(2)
trait1_501$generation<- c(501)


#Generation 550
trait1_550<- read.delim("output_pi_Trait1_G550.sites.pi")
trait1_550<- as.data.frame(trait1_550)
trait1_550$dominance<- c(0.0)
trait1_550$founders<- c(2)
trait1_550$generation<- c(550)

#Generation 600
trait1_600<- read.delim("output_pi_Trait1_G600.sites.pi")
trait1_600<- as.data.frame(trait1_600)
trait1_600$dominance<- c(0.0)
trait1_600$founders<- c(2)
trait1_600$generation<- c(600)

#Generation 650
trait1_650<- read.delim("output_pi_Trait1_G650.sites.pi")
trait1_650<- as.data.frame(trait1_650)
trait1_650$dominance<- c(0.0)
trait1_650$founders<- c(2)
trait1_650$generation<- c(650)

#Generation 700
trait1_700<- read.delim("output_pi_Trait1_G700.sites.pi")
trait1_700<- as.data.frame(trait1_700)
trait1_700$dominance<- c(0.0)
trait1_700$founders<- c(2)
trait1_700$generation<- c(700)


#Generation 750
trait1_750<- read.delim("output_pi_Trait1_G750.sites.pi")
trait1_750<- as.data.frame(trait1_750)
trait1_750$dominance<- c(0.0)
trait1_750$founders<- c(2)
trait1_750$generation<- c(750)

#Generation 800
trait1_800<- read.delim("output_pi_Trait1_G800.sites.pi")
trait1_800<- as.data.frame(trait1_800)
trait1_800$dominance<- c(0.0)
trait1_800$founders<- c(2)
trait1_800$generation<- c(800)


#Generation 850
trait1_850<- read.delim("output_pi_Trait1_G850.sites.pi")
trait1_850<- as.data.frame(trait1_850)
trait1_850$dominance<- c(0.0)
trait1_850$founders<- c(2)
trait1_850$generation<- c(850)


#Generation 900
trait1_900<- read.delim("output_pi_Trait1_G900.sites.pi")
trait1_900<- as.data.frame(trait1_900)
trait1_900$dominance<- c(0.0)
trait1_900$founders<- c(2)
trait1_900$generation<- c(900)


#Generation 950
trait1_950<- read.delim("output_pi_Trait1_G950.sites.pi")
trait1_950<- as.data.frame(trait1_950)
trait1_950$dominance<- c(0.0)
trait1_950$founders<- c(2)
trait1_950$generation<- c(950)


#Generation 1000
trait1_1000<- read.delim("output_pi_Trait1_G1000.sites.pi")
trait1_1000<- as.data.frame(trait1_1000)
trait1_1000$dominance<- c(0.0)
trait1_1000$founders<- c(2)
trait1_1000$generation<- c(1000)


## Combine all generations 
## h = 0.0, founders = 2 

h0f2<- rbind(trait1_2, trait1_50, trait1_100, trait1_150, trait1_200, trait1_250,
             trait1_300, trait1_350, trait1_400, trait1_450, trait1_501,
             trait1_550, trait1_600, trait1_650, trait1_700, trait1_750,
             trait1_800, trait1_850, trait1_900, trait1_950, trait1_1000)

#Trait 1 - h=0.0 
## 20 founders

## Generation 2
trait120_2<- read.delim("output_pi_Trait120_G2.sites.pi")
trait120_2<- as.data.frame(trait120_2)
trait120_2$dominance<- c(0.0)
trait120_2$founders<- c(20)
trait120_2$generation<- c(2)

#Generation 50
trait120_50<- read.delim("output_pi_Trait120_G50.sites.pi")
trait120_50<- as.data.frame(trait120_50)
trait120_50$dominance<- c(0.0)
trait120_50$founders<- c(20)
trait120_50$generation<- c(50)

#Generation 100 
trait120_100<- read.delim("output_pi_Trait120_G100.sites.pi")
trait120_100<- as.data.frame(trait120_100)
trait120_100$dominance<- c(0.0)
trait120_100$founders<- c(20)
trait120_100$generation<- c(100)

#Generation 150 
trait120_150<- read.delim("output_pi_Trait120_G150.sites.pi")
trait120_150<- as.data.frame(trait120_150)
trait120_150$dominance<- c(0.0)
trait120_150$founders<- c(20)
trait120_150$generation<- c(150)

#Generation 200
trait120_200<- read.delim("output_pi_Trait120_G200.sites.pi")
trait120_200<- as.data.frame(trait120_200)
trait120_200$dominance<- c(0.0)
trait120_200$founders<- c(20)
trait120_200$generation<- c(200)

#Generation 250
trait120_250<- read.delim("output_pi_Trait120_G250.sites.pi")
trait120_250<- as.data.frame(trait120_250)
trait120_250$dominance<- c(0.0)
trait120_250$founders<- c(20)
trait120_250$generation<- c(250)

#Generation 300
trait120_300<- read.delim("output_pi_Trait120_G300.sites.pi")
trait120_300<- as.data.frame(trait120_300)
trait120_300$dominance<- c(0.0)
trait120_300$founders<- c(20)
trait120_300$generation<- c(300)


#Generation 350
trait120_350<- read.delim("output_pi_Trait120_G350.sites.pi")
trait120_350<- as.data.frame(trait120_350)
trait120_350$dominance<- c(0.0)
trait120_350$founders<- c(20)
trait120_350$generation<- c(350)


#Generation 400
trait120_400<- read.delim("output_pi_Trait120_G400.sites.pi")
trait120_400<- as.data.frame(trait120_400)
trait120_400$dominance<- c(0.0)
trait120_400$founders<- c(20)
trait120_400$generation<- c(400)

#Generation 450
trait120_450<- read.delim("output_pi_Trait120_G450.sites.pi")
trait120_450<- as.data.frame(trait120_450)
trait120_450$dominance<- c(0.0)
trait120_450$founders<- c(20)
trait120_450$generation<- c(450)

#Generation 501
trait120_501<- read.delim("output_pi_Trait120_G501.sites.pi")
trait120_501<- as.data.frame(trait120_501)
trait120_501$dominance<- c(0.0)
trait120_501$founders<- c(20)
trait120_501$generation<- c(501)


#Generation 550
trait120_550<- read.delim("output_pi_Trait120_G550.sites.pi")
trait120_550<- as.data.frame(trait120_550)
trait120_550$dominance<- c(0.0)
trait120_550$founders<- c(20)
trait120_550$generation<- c(550)

#Generation 600
trait120_600<- read.delim("output_pi_Trait120_G600.sites.pi")
trait120_600<- as.data.frame(trait120_600)
trait120_600$dominance<- c(0.0)
trait120_600$founders<- c(20)
trait120_600$generation<- c(600)

#Generation 650
trait120_650<- read.delim("output_pi_Trait120_G650.sites.pi")
trait120_650<- as.data.frame(trait120_650)
trait120_650$dominance<- c(0.0)
trait120_650$founders<- c(20)
trait120_650$generation<- c(650)

#Generation 700
trait120_700<- read.delim("output_pi_Trait120_G700.sites.pi")
trait120_700<- as.data.frame(trait120_700)
trait120_700$dominance<- c(0.0)
trait120_700$founders<- c(20)
trait120_700$generation<- c(700)


#Generation 750
trait120_750<- read.delim("output_pi_Trait120_G750.sites.pi")
trait120_750<- as.data.frame(trait120_750)
trait120_750$dominance<- c(0.0)
trait120_750$founders<- c(20)
trait120_750$generation<- c(750)

#Generation 800
trait120_800<- read.delim("output_pi_Trait120_G800.sites.pi")
trait120_800<- as.data.frame(trait120_800)
trait120_800$dominance<- c(0.0)
trait120_800$founders<- c(20)
trait120_800$generation<- c(800)


#Generation 850
trait120_850<- read.delim("output_pi_Trait120_G850.sites.pi")
trait120_850<- as.data.frame(trait120_850)
trait120_850$dominance<- c(0.0)
trait120_850$founders<- c(20)
trait120_850$generation<- c(850)


#Generation 900
trait120_900<- read.delim("output_pi_Trait120_G900.sites.pi")
trait120_900<- as.data.frame(trait120_900)
trait120_900$dominance<- c(0.0)
trait120_900$founders<- c(20)
trait120_900$generation<- c(900)


#Generation 950
trait120_950<- read.delim("output_pi_Trait120_G950.sites.pi")
trait120_950<- as.data.frame(trait120_950)
trait120_950$dominance<- c(0.0)
trait120_950$founders<- c(20)
trait120_950$generation<- c(950)


#Generation 1000
trait120_1000<- read.delim("output_pi_Trait120_G1000.sites.pi")
trait120_1000<- as.data.frame(trait120_1000)
trait120_1000$dominance<- c(0.0)
trait120_1000$founders<- c(20)
trait120_1000$generation<- c(1000)


## Combine all generations 
## h = 0.0, founders = 20 

h0f20<- rbind(trait120_2, trait120_50, trait120_100, trait120_150, trait120_200, trait120_250,
              trait120_300, trait120_350, trait120_400, trait120_450, trait120_501,
              trait120_550, trait120_600, trait120_650, trait120_700, trait120_750,
              trait120_800, trait120_850, trait120_900, trait120_950, trait120_1000)


#Trait 1 - h=0.0 
## 50 founders

## Generation 2
Trait150_2<- read.delim("output_pi_Trait150_G2.sites.pi")
Trait150_2<- as.data.frame(Trait150_2)
Trait150_2$dominance<- c(0.0)
Trait150_2$founders<- c(50)
Trait150_2$generation<- c(2)

#Generation 50
Trait150_50<- read.delim("output_pi_Trait150_G50.sites.pi")
Trait150_50<- as.data.frame(Trait150_50)
Trait150_50$dominance<- c(0.0)
Trait150_50$founders<- c(50)
Trait150_50$generation<- c(50)

#Generation 100 
Trait150_100<- read.delim("output_pi_Trait150_G100.sites.pi")
Trait150_100<- as.data.frame(Trait150_100)
Trait150_100$dominance<- c(0.0)
Trait150_100$founders<- c(50)
Trait150_100$generation<- c(100)

#Generation 150 
Trait150_150<- read.delim("output_pi_Trait150_G150.sites.pi")
Trait150_150<- as.data.frame(Trait150_150)
Trait150_150$dominance<- c(0.0)
Trait150_150$founders<- c(50)
Trait150_150$generation<- c(150)

#Generation 200
Trait150_200<- read.delim("output_pi_Trait150_G200.sites.pi")
Trait150_200<- as.data.frame(Trait150_200)
Trait150_200$dominance<- c(0.0)
Trait150_200$founders<- c(50)
Trait150_200$generation<- c(200)

#Generation 250
Trait150_250<- read.delim("output_pi_Trait150_G250.sites.pi")
Trait150_250<- as.data.frame(Trait150_250)
Trait150_250$dominance<- c(0.0)
Trait150_250$founders<- c(50)
Trait150_250$generation<- c(250)

#Generation 300
Trait150_300<- read.delim("output_pi_Trait150_G300.sites.pi")
Trait150_300<- as.data.frame(Trait150_300)
Trait150_300$dominance<- c(0.0)
Trait150_300$founders<- c(50)
Trait150_300$generation<- c(300)


#Generation 350
Trait150_350<- read.delim("output_pi_Trait150_G350.sites.pi")
Trait150_350<- as.data.frame(Trait150_350)
Trait150_350$dominance<- c(0.0)
Trait150_350$founders<- c(50)
Trait150_350$generation<- c(350)


#Generation 400
Trait150_400<- read.delim("output_pi_Trait150_G400.sites.pi")
Trait150_400<- as.data.frame(Trait150_400)
Trait150_400$dominance<- c(0.0)
Trait150_400$founders<- c(50)
Trait150_400$generation<- c(400)

#Generation 450
Trait150_450<- read.delim("output_pi_Trait150_G450.sites.pi")
Trait150_450<- as.data.frame(Trait150_450)
Trait150_450$dominance<- c(0.0)
Trait150_450$founders<- c(50)
Trait150_450$generation<- c(450)

#Generation 501
Trait150_501<- read.delim("output_pi_Trait150_G501.sites.pi")
Trait150_501<- as.data.frame(Trait150_501)
Trait150_501$dominance<- c(0.0)
Trait150_501$founders<- c(50)
Trait150_501$generation<- c(501)


#Generation 550
Trait150_550<- read.delim("output_pi_Trait150_G550.sites.pi")
Trait150_550<- as.data.frame(Trait150_550)
Trait150_550$dominance<- c(0.0)
Trait150_550$founders<- c(50)
Trait150_550$generation<- c(550)

#Generation 600
Trait150_600<- read.delim("output_pi_Trait150_G600.sites.pi")
Trait150_600<- as.data.frame(Trait150_600)
Trait150_600$dominance<- c(0.0)
Trait150_600$founders<- c(50)
Trait150_600$generation<- c(600)

#Generation 650
Trait150_650<- read.delim("output_pi_Trait150_G650.sites.pi")
Trait150_650<- as.data.frame(Trait150_650)
Trait150_650$dominance<- c(0.0)
Trait150_650$founders<- c(50)
Trait150_650$generation<- c(650)

#Generation 700
Trait150_700<- read.delim("output_pi_Trait150_G700.sites.pi")
Trait150_700<- as.data.frame(Trait150_700)
Trait150_700$dominance<- c(0.0)
Trait150_700$founders<- c(50)
Trait150_700$generation<- c(700)


#Generation 750
Trait150_750<- read.delim("output_pi_Trait150_G750.sites.pi")
Trait150_750<- as.data.frame(Trait150_750)
Trait150_750$dominance<- c(0.0)
Trait150_750$founders<- c(50)
Trait150_750$generation<- c(750)

#Generation 800
Trait150_800<- read.delim("output_pi_Trait150_G800.sites.pi")
Trait150_800<- as.data.frame(Trait150_800)
Trait150_800$dominance<- c(0.0)
Trait150_800$founders<- c(50)
Trait150_800$generation<- c(800)


#Generation 850
Trait150_850<- read.delim("output_pi_Trait150_G850.sites.pi")
Trait150_850<- as.data.frame(Trait150_850)
Trait150_850$dominance<- c(0.0)
Trait150_850$founders<- c(50)
Trait150_850$generation<- c(850)


#Generation 900
Trait150_900<- read.delim("output_pi_Trait150_G900.sites.pi")
Trait150_900<- as.data.frame(Trait150_900)
Trait150_900$dominance<- c(0.0)
Trait150_900$founders<- c(50)
Trait150_900$generation<- c(900)


#Generation 950
Trait150_950<- read.delim("output_pi_Trait150_G950.sites.pi")
Trait150_950<- as.data.frame(Trait150_950)
Trait150_950$dominance<- c(0.0)
Trait150_950$founders<- c(50)
Trait150_950$generation<- c(950)


#Generation 1000
Trait150_1000<- read.delim("output_pi_Trait150_G1000.sites.pi")
Trait150_1000<- as.data.frame(Trait150_1000)
Trait150_1000$dominance<- c(0.0)
Trait150_1000$founders<- c(50)
Trait150_1000$generation<- c(1000)


## Combine all generations 
## h = 0.0, founders = 50 

h0f50<- rbind(Trait150_2, Trait150_50, Trait150_100, Trait150_150, Trait150_200, Trait150_250,
              Trait150_300, Trait150_350, Trait150_400, Trait150_450, Trait150_501,
              Trait150_550, Trait150_600, Trait150_650, Trait150_700, Trait150_750,
              Trait150_800, Trait150_850, Trait150_900, Trait150_950, Trait150_1000)

#Trait 1 - h=0.0 
## 100 founders

## Generation 2
Trait1100_2<- read.delim("output_pi_Trait1100_G2.sites.pi")
Trait1100_2<- as.data.frame(Trait1100_2)
Trait1100_2$dominance<- c(0.0)
Trait1100_2$founders<- c(100)
Trait1100_2$generation<- c(2)

#Generation 50
Trait1100_50<- read.delim("output_pi_Trait1100_G50.sites.pi")
Trait1100_50<- as.data.frame(Trait1100_50)
Trait1100_50$dominance<- c(0.0)
Trait1100_50$founders<- c(100)
Trait1100_50$generation<- c(50)

#Generation 100 
Trait1100_100<- read.delim("output_pi_Trait1100_G100.sites.pi")
Trait1100_100<- as.data.frame(Trait1100_100)
Trait1100_100$dominance<- c(0.0)
Trait1100_100$founders<- c(100)
Trait1100_100$generation<- c(100)

#Generation 150 
Trait1100_150<- read.delim("output_pi_Trait1100_G150.sites.pi")
Trait1100_150<- as.data.frame(Trait1100_150)
Trait1100_150$dominance<- c(0.0)
Trait1100_150$founders<- c(100)
Trait1100_150$generation<- c(150)

#Generation 200
Trait1100_200<- read.delim("output_pi_Trait1100_G200.sites.pi")
Trait1100_200<- as.data.frame(Trait1100_200)
Trait1100_200$dominance<- c(0.0)
Trait1100_200$founders<- c(100)
Trait1100_200$generation<- c(200)

#Generation 250
Trait1100_250<- read.delim("output_pi_Trait1100_G250.sites.pi")
Trait1100_250<- as.data.frame(Trait1100_250)
Trait1100_250$dominance<- c(0.0)
Trait1100_250$founders<- c(100)
Trait1100_250$generation<- c(250)

#Generation 300
Trait1100_300<- read.delim("output_pi_Trait1100_G300.sites.pi")
Trait1100_300<- as.data.frame(Trait1100_300)
Trait1100_300$dominance<- c(0.0)
Trait1100_300$founders<- c(100)
Trait1100_300$generation<- c(300)


#Generation 350
Trait1100_350<- read.delim("output_pi_Trait1100_G350.sites.pi")
Trait1100_350<- as.data.frame(Trait1100_350)
Trait1100_350$dominance<- c(0.0)
Trait1100_350$founders<- c(100)
Trait1100_350$generation<- c(350)


#Generation 400
Trait1100_400<- read.delim("output_pi_Trait1100_G400.sites.pi")
Trait1100_400<- as.data.frame(Trait1100_400)
Trait1100_400$dominance<- c(0.0)
Trait1100_400$founders<- c(100)
Trait1100_400$generation<- c(400)

#Generation 450
Trait1100_450<- read.delim("output_pi_Trait1100_G450.sites.pi")
Trait1100_450<- as.data.frame(Trait1100_450)
Trait1100_450$dominance<- c(0.0)
Trait1100_450$founders<- c(100)
Trait1100_450$generation<- c(450)

#Generation 501
Trait1100_501<- read.delim("output_pi_Trait1100_G501.sites.pi")
Trait1100_501<- as.data.frame(Trait1100_501)
Trait1100_501$dominance<- c(0.0)
Trait1100_501$founders<- c(100)
Trait1100_501$generation<- c(501)


#Generation 550
Trait1100_550<- read.delim("output_pi_Trait1100_G550.sites.pi")
Trait1100_550<- as.data.frame(Trait1100_550)
Trait1100_550$dominance<- c(0.0)
Trait1100_550$founders<- c(100)
Trait1100_550$generation<- c(550)

#Generation 600
Trait1100_600<- read.delim("output_pi_Trait1100_G600.sites.pi")
Trait1100_600<- as.data.frame(Trait1100_600)
Trait1100_600$dominance<- c(0.0)
Trait1100_600$founders<- c(100)
Trait1100_600$generation<- c(600)

#Generation 650
Trait1100_650<- read.delim("output_pi_Trait1100_G650.sites.pi")
Trait1100_650<- as.data.frame(Trait1100_650)
Trait1100_650$dominance<- c(0.0)
Trait1100_650$founders<- c(100)
Trait1100_650$generation<- c(650)

#Generation 700
Trait1100_700<- read.delim("output_pi_Trait1100_G700.sites.pi")
Trait1100_700<- as.data.frame(Trait1100_700)
Trait1100_700$dominance<- c(0.0)
Trait1100_700$founders<- c(100)
Trait1100_700$generation<- c(700)


#Generation 750
Trait1100_750<- read.delim("output_pi_Trait1100_G750.sites.pi")
Trait1100_750<- as.data.frame(Trait1100_750)
Trait1100_750$dominance<- c(0.0)
Trait1100_750$founders<- c(100)
Trait1100_750$generation<- c(750)

#Generation 800
Trait1100_800<- read.delim("output_pi_Trait1100_G800.sites.pi")
Trait1100_800<- as.data.frame(Trait1100_800)
Trait1100_800$dominance<- c(0.0)
Trait1100_800$founders<- c(100)
Trait1100_800$generation<- c(800)


#Generation 850
Trait1100_850<- read.delim("output_pi_Trait1100_G850.sites.pi")
Trait1100_850<- as.data.frame(Trait1100_850)
Trait1100_850$dominance<- c(0.0)
Trait1100_850$founders<- c(100)
Trait1100_850$generation<- c(850)


#Generation 900
Trait1100_900<- read.delim("output_pi_Trait1100_G900.sites.pi")
Trait1100_900<- as.data.frame(Trait1100_900)
Trait1100_900$dominance<- c(0.0)
Trait1100_900$founders<- c(100)
Trait1100_900$generation<- c(900)


#Generation 950
Trait1100_950<- read.delim("output_pi_Trait1100_G950.sites.pi")
Trait1100_950<- as.data.frame(Trait1100_950)
Trait1100_950$dominance<- c(0.0)
Trait1100_950$founders<- c(100)
Trait1100_950$generation<- c(950)


#Generation 1000
Trait1100_1000<- read.delim("output_pi_Trait1100_G1000.sites.pi")
Trait1100_1000<- as.data.frame(Trait1100_1000)
Trait1100_1000$dominance<- c(0.0)
Trait1100_1000$founders<- c(100)
Trait1100_1000$generation<- c(1000)


## Combine all generations 
## h = 0.0, founders = 100 

h0f100<- rbind(Trait1100_2, Trait1100_50, Trait1100_100, Trait1100_150, Trait1100_200, Trait1100_250,
               Trait1100_300, Trait1100_350, Trait1100_400, Trait1100_450, Trait1100_501,
               Trait1100_550, Trait1100_600, Trait1100_650, Trait1100_700, Trait1100_750,
               Trait1100_800, Trait1100_850, Trait1100_900, Trait1100_950, Trait1100_1000)


#Trait 1 - h=0.0 
## 150 founders

## Generation 2
Trait1150_2<- read.delim("output_pi_Trait1150_G2.sites.pi")
Trait1150_2<- as.data.frame(Trait1150_2)
Trait1150_2$dominance<- c(0.0)
Trait1150_2$founders<- c(150)
Trait1150_2$generation<- c(2)

#Generation 50
Trait1150_50<- read.delim("output_pi_Trait1150_G50.sites.pi")
Trait1150_50<- as.data.frame(Trait1150_50)
Trait1150_50$dominance<- c(0.0)
Trait1150_50$founders<- c(150)
Trait1150_50$generation<- c(50)

#Generation 100 
Trait1150_100<- read.delim("output_pi_Trait1150_G100.sites.pi")
Trait1150_100<- as.data.frame(Trait1150_100)
Trait1150_100$dominance<- c(0.0)
Trait1150_100$founders<- c(150)
Trait1150_100$generation<- c(100)

#Generation 150 
Trait1150_150<- read.delim("output_pi_Trait1150_G150.sites.pi")
Trait1150_150<- as.data.frame(Trait1150_150)
Trait1150_150$dominance<- c(0.0)
Trait1150_150$founders<- c(150)
Trait1150_150$generation<- c(150)

#Generation 200
Trait1150_200<- read.delim("output_pi_Trait1150_G200.sites.pi")
Trait1150_200<- as.data.frame(Trait1150_200)
Trait1150_200$dominance<- c(0.0)
Trait1150_200$founders<- c(150)
Trait1150_200$generation<- c(200)

#Generation 250
Trait1150_250<- read.delim("output_pi_Trait1150_G250.sites.pi")
Trait1150_250<- as.data.frame(Trait1150_250)
Trait1150_250$dominance<- c(0.0)
Trait1150_250$founders<- c(150)
Trait1150_250$generation<- c(250)

#Generation 300
Trait1150_300<- read.delim("output_pi_Trait1150_G300.sites.pi")
Trait1150_300<- as.data.frame(Trait1150_300)
Trait1150_300$dominance<- c(0.0)
Trait1150_300$founders<- c(150)
Trait1150_300$generation<- c(300)


#Generation 350
Trait1150_350<- read.delim("output_pi_Trait1150_G350.sites.pi")
Trait1150_350<- as.data.frame(Trait1150_350)
Trait1150_350$dominance<- c(0.0)
Trait1150_350$founders<- c(150)
Trait1150_350$generation<- c(350)


#Generation 400
Trait1150_400<- read.delim("output_pi_Trait1150_G400.sites.pi")
Trait1150_400<- as.data.frame(Trait1150_400)
Trait1150_400$dominance<- c(0.0)
Trait1150_400$founders<- c(150)
Trait1150_400$generation<- c(400)

#Generation 450
Trait1150_450<- read.delim("output_pi_Trait1150_G450.sites.pi")
Trait1150_450<- as.data.frame(Trait1150_450)
Trait1150_450$dominance<- c(0.0)
Trait1150_450$founders<- c(150)
Trait1150_450$generation<- c(450)

#Generation 501
Trait1150_501<- read.delim("output_pi_Trait1150_G501.sites.pi")
Trait1150_501<- as.data.frame(Trait1150_501)
Trait1150_501$dominance<- c(0.0)
Trait1150_501$founders<- c(150)
Trait1150_501$generation<- c(501)


#Generation 550
Trait1150_550<- read.delim("output_pi_Trait1150_G550.sites.pi")
Trait1150_550<- as.data.frame(Trait1150_550)
Trait1150_550$dominance<- c(0.0)
Trait1150_550$founders<- c(150)
Trait1150_550$generation<- c(550)

#Generation 600
Trait1150_600<- read.delim("output_pi_Trait1150_G600.sites.pi")
Trait1150_600<- as.data.frame(Trait1150_600)
Trait1150_600$dominance<- c(0.0)
Trait1150_600$founders<- c(150)
Trait1150_600$generation<- c(600)

#Generation 650
Trait1150_650<- read.delim("output_pi_Trait1150_G650.sites.pi")
Trait1150_650<- as.data.frame(Trait1150_650)
Trait1150_650$dominance<- c(0.0)
Trait1150_650$founders<- c(150)
Trait1150_650$generation<- c(650)

#Generation 700
Trait1150_700<- read.delim("output_pi_Trait1150_G700.sites.pi")
Trait1150_700<- as.data.frame(Trait1150_700)
Trait1150_700$dominance<- c(0.0)
Trait1150_700$founders<- c(150)
Trait1150_700$generation<- c(700)


#Generation 750
Trait1150_750<- read.delim("output_pi_Trait1150_G750.sites.pi")
Trait1150_750<- as.data.frame(Trait1150_750)
Trait1150_750$dominance<- c(0.0)
Trait1150_750$founders<- c(150)
Trait1150_750$generation<- c(750)

#Generation 800
Trait1150_800<- read.delim("output_pi_Trait1150_G800.sites.pi")
Trait1150_800<- as.data.frame(Trait1150_800)
Trait1150_800$dominance<- c(0.0)
Trait1150_800$founders<- c(150)
Trait1150_800$generation<- c(800)


#Generation 850
Trait1150_850<- read.delim("output_pi_Trait1150_G850.sites.pi")
Trait1150_850<- as.data.frame(Trait1150_850)
Trait1150_850$dominance<- c(0.0)
Trait1150_850$founders<- c(150)
Trait1150_850$generation<- c(850)


#Generation 900
Trait1150_900<- read.delim("output_pi_Trait1150_G900.sites.pi")
Trait1150_900<- as.data.frame(Trait1150_900)
Trait1150_900$dominance<- c(0.0)
Trait1150_900$founders<- c(150)
Trait1150_900$generation<- c(900)


#Generation 950
Trait1150_950<- read.delim("output_pi_Trait1150_G950.sites.pi")
Trait1150_950<- as.data.frame(Trait1150_950)
Trait1150_950$dominance<- c(0.0)
Trait1150_950$founders<- c(150)
Trait1150_950$generation<- c(950)


#Generation 1000
Trait1150_1000<- read.delim("output_pi_Trait1150_G1000.sites.pi")
Trait1150_1000<- as.data.frame(Trait1150_1000)
Trait1150_1000$dominance<- c(0.0)
Trait1150_1000$founders<- c(150)
Trait1150_1000$generation<- c(1000)


## Combine all generations 
## h = 0.0, founders = 150

h0f150<- rbind(Trait1150_2, Trait1150_50, Trait1150_100, Trait1150_150, Trait1150_200, Trait1150_250,
               Trait1150_300, Trait1150_350, Trait1150_400, Trait1150_450, Trait1150_501,
               Trait1150_550, Trait1150_600, Trait1150_650, Trait1150_700, Trait1150_750,
               Trait1150_800, Trait1150_850, Trait1150_900, Trait1150_950, Trait1150_1000)


#Trait 1 - h=0.0 
## 200 founders

## Generation 2
Trait1200_2<- read.delim("output_pi_Trait1200_G2.sites.pi")
Trait1200_2<- as.data.frame(Trait1200_2)
Trait1200_2$dominance<- c(0.0)
Trait1200_2$founders<- c(200)
Trait1200_2$generation<- c(2)

#Generation 50
Trait1200_50<- read.delim("output_pi_Trait1200_G50.sites.pi")
Trait1200_50<- as.data.frame(Trait1200_50)
Trait1200_50$dominance<- c(0.0)
Trait1200_50$founders<- c(200)
Trait1200_50$generation<- c(50)

#Generation 100 
Trait1200_100<- read.delim("output_pi_Trait1200_G100.sites.pi")
Trait1200_100<- as.data.frame(Trait1200_100)
Trait1200_100$dominance<- c(0.0)
Trait1200_100$founders<- c(200)
Trait1200_100$generation<- c(100)

#Generation 150 
Trait1200_150<- read.delim("output_pi_Trait1200_G150.sites.pi")
Trait1200_150<- as.data.frame(Trait1200_150)
Trait1200_150$dominance<- c(0.0)
Trait1200_150$founders<- c(200)
Trait1200_150$generation<- c(150)

#Generation 200
Trait1200_200<- read.delim("output_pi_Trait1200_G200.sites.pi")
Trait1200_200<- as.data.frame(Trait1200_200)
Trait1200_200$dominance<- c(0.0)
Trait1200_200$founders<- c(200)
Trait1200_200$generation<- c(200)

#Generation 250
Trait1200_250<- read.delim("output_pi_Trait1200_G250.sites.pi")
Trait1200_250<- as.data.frame(Trait1200_250)
Trait1200_250$dominance<- c(0.0)
Trait1200_250$founders<- c(200)
Trait1200_250$generation<- c(250)

#Generation 300
Trait1200_300<- read.delim("output_pi_Trait1200_G300.sites.pi")
Trait1200_300<- as.data.frame(Trait1200_300)
Trait1200_300$dominance<- c(0.0)
Trait1200_300$founders<- c(200)
Trait1200_300$generation<- c(300)


#Generation 350
Trait1200_350<- read.delim("output_pi_Trait1200_G350.sites.pi")
Trait1200_350<- as.data.frame(Trait1200_350)
Trait1200_350$dominance<- c(0.0)
Trait1200_350$founders<- c(200)
Trait1200_350$generation<- c(350)


#Generation 400
Trait1200_400<- read.delim("output_pi_Trait1200_G400.sites.pi")
Trait1200_400<- as.data.frame(Trait1200_400)
Trait1200_400$dominance<- c(0.0)
Trait1200_400$founders<- c(200)
Trait1200_400$generation<- c(400)

#Generation 450
Trait1200_450<- read.delim("output_pi_Trait1200_G450.sites.pi")
Trait1200_450<- as.data.frame(Trait1200_450)
Trait1200_450$dominance<- c(0.0)
Trait1200_450$founders<- c(200)
Trait1200_450$generation<- c(450)

#Generation 501
Trait1200_501<- read.delim("output_pi_Trait1200_G501.sites.pi")
Trait1200_501<- as.data.frame(Trait1200_501)
Trait1200_501$dominance<- c(0.0)
Trait1200_501$founders<- c(200)
Trait1200_501$generation<- c(501)


#Generation 550
Trait1200_550<- read.delim("output_pi_Trait1200_G550.sites.pi")
Trait1200_550<- as.data.frame(Trait1200_550)
Trait1200_550$dominance<- c(0.0)
Trait1200_550$founders<- c(200)
Trait1200_550$generation<- c(550)

#Generation 600
Trait1200_600<- read.delim("output_pi_Trait1200_G600.sites.pi")
Trait1200_600<- as.data.frame(Trait1200_600)
Trait1200_600$dominance<- c(0.0)
Trait1200_600$founders<- c(200)
Trait1200_600$generation<- c(600)

#Generation 650
Trait1200_650<- read.delim("output_pi_Trait1200_G650.sites.pi")
Trait1200_650<- as.data.frame(Trait1200_650)
Trait1200_650$dominance<- c(0.0)
Trait1200_650$founders<- c(200)
Trait1200_650$generation<- c(650)

#Generation 700
Trait1200_700<- read.delim("output_pi_Trait1200_G700.sites.pi")
Trait1200_700<- as.data.frame(Trait1200_700)
Trait1200_700$dominance<- c(0.0)
Trait1200_700$founders<- c(200)
Trait1200_700$generation<- c(700)


#Generation 750
Trait1200_750<- read.delim("output_pi_Trait1200_G750.sites.pi")
Trait1200_750<- as.data.frame(Trait1200_750)
Trait1200_750$dominance<- c(0.0)
Trait1200_750$founders<- c(200)
Trait1200_750$generation<- c(750)

#Generation 800
Trait1200_800<- read.delim("output_pi_Trait1200_G800.sites.pi")
Trait1200_800<- as.data.frame(Trait1200_800)
Trait1200_800$dominance<- c(0.0)
Trait1200_800$founders<- c(200)
Trait1200_800$generation<- c(800)


#Generation 850
Trait1200_850<- read.delim("output_pi_Trait1200_G850.sites.pi")
Trait1200_850<- as.data.frame(Trait1200_850)
Trait1200_850$dominance<- c(0.0)
Trait1200_850$founders<- c(200)
Trait1200_850$generation<- c(850)


#Generation 900
Trait1200_900<- read.delim("output_pi_Trait1200_G900.sites.pi")
Trait1200_900<- as.data.frame(Trait1200_900)
Trait1200_900$dominance<- c(0.0)
Trait1200_900$founders<- c(200)
Trait1200_900$generation<- c(900)


#Generation 950
Trait1200_950<- read.delim("output_pi_Trait1200_G950.sites.pi")
Trait1200_950<- as.data.frame(Trait1200_950)
Trait1200_950$dominance<- c(0.0)
Trait1200_950$founders<- c(200)
Trait1200_950$generation<- c(950)


#Generation 1000
Trait1200_1000<- read.delim("output_pi_Trait1200_G1000.sites.pi")
Trait1200_1000<- as.data.frame(Trait1200_1000)
Trait1200_1000$dominance<- c(0.0)
Trait1200_1000$founders<- c(200)
Trait1200_1000$generation<- c(1000)


## Combine all generations 
## h = 0.0, founders = 200

h0f200<- rbind(Trait1200_2, Trait1200_50, Trait1200_100, Trait1200_150, Trait1200_200, Trait1200_250,
               Trait1200_300, Trait1200_350, Trait1200_400, Trait1200_450, Trait1200_501,
               Trait1200_550, Trait1200_600, Trait1200_650, Trait1200_700, Trait1200_750,
               Trait1200_800, Trait1200_850, Trait1200_900, Trait1200_950, Trait1200_1000)

#Trait 1 - h=0.0 
## 250 founders

## Generation 2
Trait1250_2<- read.delim("output_pi_Trait1250_G2.sites.pi")
Trait1250_2<- as.data.frame(Trait1250_2)
Trait1250_2$dominance<- c(0.0)
Trait1250_2$founders<- c(250)
Trait1250_2$generation<- c(2)

#Generation 50
Trait1250_50<- read.delim("output_pi_Trait1250_G50.sites.pi")
Trait1250_50<- as.data.frame(Trait1250_50)
Trait1250_50$dominance<- c(0.0)
Trait1250_50$founders<- c(250)
Trait1250_50$generation<- c(50)

#Generation 100 
Trait1250_100<- read.delim("output_pi_Trait1250_G100.sites.pi")
Trait1250_100<- as.data.frame(Trait1250_100)
Trait1250_100$dominance<- c(0.0)
Trait1250_100$founders<- c(250)
Trait1250_100$generation<- c(100)

#Generation 150 
Trait1250_150<- read.delim("output_pi_Trait1250_G150.sites.pi")
Trait1250_150<- as.data.frame(Trait1250_150)
Trait1250_150$dominance<- c(0.0)
Trait1250_150$founders<- c(250)
Trait1250_150$generation<- c(150)

#Generation 200
Trait1250_200<- read.delim("output_pi_Trait1250_G200.sites.pi")
Trait1250_200<- as.data.frame(Trait1250_200)
Trait1250_200$dominance<- c(0.0)
Trait1250_200$founders<- c(250)
Trait1250_200$generation<- c(200)

#Generation 250
Trait1250_250<- read.delim("output_pi_Trait1250_G250.sites.pi")
Trait1250_250<- as.data.frame(Trait1250_250)
Trait1250_250$dominance<- c(0.0)
Trait1250_250$founders<- c(250)
Trait1250_250$generation<- c(250)

#Generation 300
Trait1250_300<- read.delim("output_pi_Trait1250_G300.sites.pi")
Trait1250_300<- as.data.frame(Trait1250_300)
Trait1250_300$dominance<- c(0.0)
Trait1250_300$founders<- c(250)
Trait1250_300$generation<- c(300)


#Generation 350
Trait1250_350<- read.delim("output_pi_Trait1250_G350.sites.pi")
Trait1250_350<- as.data.frame(Trait1250_350)
Trait1250_350$dominance<- c(0.0)
Trait1250_350$founders<- c(250)
Trait1250_350$generation<- c(350)


#Generation 400
Trait1250_400<- read.delim("output_pi_Trait1250_G400.sites.pi")
Trait1250_400<- as.data.frame(Trait1250_400)
Trait1250_400$dominance<- c(0.0)
Trait1250_400$founders<- c(250)
Trait1250_400$generation<- c(400)

#Generation 450
Trait1250_450<- read.delim("output_pi_Trait1250_G450.sites.pi")
Trait1250_450<- as.data.frame(Trait1250_450)
Trait1250_450$dominance<- c(0.0)
Trait1250_450$founders<- c(250)
Trait1250_450$generation<- c(450)

#Generation 501
Trait1250_501<- read.delim("output_pi_Trait1250_G501.sites.pi")
Trait1250_501<- as.data.frame(Trait1250_501)
Trait1250_501$dominance<- c(0.0)
Trait1250_501$founders<- c(250)
Trait1250_501$generation<- c(501)


#Generation 550
Trait1250_550<- read.delim("output_pi_Trait1250_G550.sites.pi")
Trait1250_550<- as.data.frame(Trait1250_550)
Trait1250_550$dominance<- c(0.0)
Trait1250_550$founders<- c(250)
Trait1250_550$generation<- c(550)

#Generation 600
Trait1250_600<- read.delim("output_pi_Trait1250_G600.sites.pi")
Trait1250_600<- as.data.frame(Trait1250_600)
Trait1250_600$dominance<- c(0.0)
Trait1250_600$founders<- c(250)
Trait1250_600$generation<- c(600)

#Generation 650
Trait1250_650<- read.delim("output_pi_Trait1250_G650.sites.pi")
Trait1250_650<- as.data.frame(Trait1250_650)
Trait1250_650$dominance<- c(0.0)
Trait1250_650$founders<- c(250)
Trait1250_650$generation<- c(650)

#Generation 700
Trait1250_700<- read.delim("output_pi_Trait1250_G700.sites.pi")
Trait1250_700<- as.data.frame(Trait1250_700)
Trait1250_700$dominance<- c(0.0)
Trait1250_700$founders<- c(250)
Trait1250_700$generation<- c(700)


#Generation 750
Trait1250_750<- read.delim("output_pi_Trait1250_G750.sites.pi")
Trait1250_750<- as.data.frame(Trait1250_750)
Trait1250_750$dominance<- c(0.0)
Trait1250_750$founders<- c(250)
Trait1250_750$generation<- c(750)

#Generation 800
Trait1250_800<- read.delim("output_pi_Trait1250_G800.sites.pi")
Trait1250_800<- as.data.frame(Trait1250_800)
Trait1250_800$dominance<- c(0.0)
Trait1250_800$founders<- c(250)
Trait1250_800$generation<- c(800)


#Generation 850
Trait1250_850<- read.delim("output_pi_Trait1250_G850.sites.pi")
Trait1250_850<- as.data.frame(Trait1250_850)
Trait1250_850$dominance<- c(0.0)
Trait1250_850$founders<- c(250)
Trait1250_850$generation<- c(850)


#Generation 900
Trait1250_900<- read.delim("output_pi_Trait1250_G900.sites.pi")
Trait1250_900<- as.data.frame(Trait1250_900)
Trait1250_900$dominance<- c(0.0)
Trait1250_900$founders<- c(250)
Trait1250_900$generation<- c(900)


#Generation 950
Trait1250_950<- read.delim("output_pi_Trait1250_G950.sites.pi")
Trait1250_950<- as.data.frame(Trait1250_950)
Trait1250_950$dominance<- c(0.0)
Trait1250_950$founders<- c(250)
Trait1250_950$generation<- c(950)


#Generation 1000
Trait1250_1000<- read.delim("output_pi_Trait1250_G1000.sites.pi")
Trait1250_1000<- as.data.frame(Trait1250_1000)
Trait1250_1000$dominance<- c(0.0)
Trait1250_1000$founders<- c(250)
Trait1250_1000$generation<- c(1000)


## Combine all generations 
## h = 0.0, founders = 250 

h0f250<- rbind(Trait1250_2, Trait1250_50, Trait1250_100, Trait1250_150, Trait1250_200, Trait1250_250,
               Trait1250_300, Trait1250_350, Trait1250_400, Trait1250_450, Trait1250_501,
               Trait1250_550, Trait1250_600, Trait1250_650, Trait1250_700, Trait1250_750,
               Trait1250_800, Trait1250_850, Trait1250_900, Trait1250_950, Trait1250_1000)


#Trait 1 - h=0.0 
## 300 founders

## Generation 2
Trait1300_2<- read.delim("output_pi_Trait1300_G2.sites.pi")
Trait1300_2<- as.data.frame(Trait1300_2)
Trait1300_2$dominance<- c(0.0)
Trait1300_2$founders<- c(300)
Trait1300_2$generation<- c(2)

#Generation 50
Trait1300_50<- read.delim("output_pi_Trait1300_G50.sites.pi")
Trait1300_50<- as.data.frame(Trait1300_50)
Trait1300_50$dominance<- c(0.0)
Trait1300_50$founders<- c(300)
Trait1300_50$generation<- c(50)

#Generation 100 
Trait1300_100<- read.delim("output_pi_Trait1300_G100.sites.pi")
Trait1300_100<- as.data.frame(Trait1300_100)
Trait1300_100$dominance<- c(0.0)
Trait1300_100$founders<- c(300)
Trait1300_100$generation<- c(100)

#Generation 150 
Trait1300_150<- read.delim("output_pi_Trait1300_G150.sites.pi")
Trait1300_150<- as.data.frame(Trait1300_150)
Trait1300_150$dominance<- c(0.0)
Trait1300_150$founders<- c(300)
Trait1300_150$generation<- c(150)

#Generation 200
Trait1300_200<- read.delim("output_pi_Trait1300_G200.sites.pi")
Trait1300_200<- as.data.frame(Trait1300_200)
Trait1300_200$dominance<- c(0.0)
Trait1300_200$founders<- c(300)
Trait1300_200$generation<- c(200)

#Generation 250
Trait1300_250<- read.delim("output_pi_Trait1300_G250.sites.pi")
Trait1300_250<- as.data.frame(Trait1300_250)
Trait1300_250$dominance<- c(0.0)
Trait1300_250$founders<- c(300)
Trait1300_250$generation<- c(250)

#Generation 300
Trait1300_300<- read.delim("output_pi_Trait1300_G300.sites.pi")
Trait1300_300<- as.data.frame(Trait1300_300)
Trait1300_300$dominance<- c(0.0)
Trait1300_300$founders<- c(300)
Trait1300_300$generation<- c(300)


#Generation 350
Trait1300_350<- read.delim("output_pi_Trait1300_G350.sites.pi")
Trait1300_350<- as.data.frame(Trait1300_350)
Trait1300_350$dominance<- c(0.0)
Trait1300_350$founders<- c(300)
Trait1300_350$generation<- c(350)


#Generation 400
Trait1300_400<- read.delim("output_pi_Trait1300_G400.sites.pi")
Trait1300_400<- as.data.frame(Trait1300_400)
Trait1300_400$dominance<- c(0.0)
Trait1300_400$founders<- c(300)
Trait1300_400$generation<- c(400)

#Generation 450
Trait1300_450<- read.delim("output_pi_Trait1300_G450.sites.pi")
Trait1300_450<- as.data.frame(Trait1300_450)
Trait1300_450$dominance<- c(0.0)
Trait1300_450$founders<- c(300)
Trait1300_450$generation<- c(450)

#Generation 501
Trait1300_501<- read.delim("output_pi_Trait1300_G501.sites.pi")
Trait1300_501<- as.data.frame(Trait1300_501)
Trait1300_501$dominance<- c(0.0)
Trait1300_501$founders<- c(300)
Trait1300_501$generation<- c(501)


#Generation 550
Trait1300_550<- read.delim("output_pi_Trait1300_G550.sites.pi")
Trait1300_550<- as.data.frame(Trait1300_550)
Trait1300_550$dominance<- c(0.0)
Trait1300_550$founders<- c(300)
Trait1300_550$generation<- c(550)

#Generation 600
Trait1300_600<- read.delim("output_pi_Trait1300_G600.sites.pi")
Trait1300_600<- as.data.frame(Trait1300_600)
Trait1300_600$dominance<- c(0.0)
Trait1300_600$founders<- c(300)
Trait1300_600$generation<- c(600)

#Generation 650
Trait1300_650<- read.delim("output_pi_Trait1300_G650.sites.pi")
Trait1300_650<- as.data.frame(Trait1300_650)
Trait1300_650$dominance<- c(0.0)
Trait1300_650$founders<- c(300)
Trait1300_650$generation<- c(650)

#Generation 700
Trait1300_700<- read.delim("output_pi_Trait1300_G700.sites.pi")
Trait1300_700<- as.data.frame(Trait1300_700)
Trait1300_700$dominance<- c(0.0)
Trait1300_700$founders<- c(300)
Trait1300_700$generation<- c(700)


#Generation 750
Trait1300_750<- read.delim("output_pi_Trait1300_G750.sites.pi")
Trait1300_750<- as.data.frame(Trait1300_750)
Trait1300_750$dominance<- c(0.0)
Trait1300_750$founders<- c(300)
Trait1300_750$generation<- c(750)

#Generation 800
Trait1300_800<- read.delim("output_pi_Trait1300_G800.sites.pi")
Trait1300_800<- as.data.frame(Trait1300_800)
Trait1300_800$dominance<- c(0.0)
Trait1300_800$founders<- c(300)
Trait1300_800$generation<- c(800)


#Generation 850
Trait1300_850<- read.delim("output_pi_Trait1300_G850.sites.pi")
Trait1300_850<- as.data.frame(Trait1300_850)
Trait1300_850$dominance<- c(0.0)
Trait1300_850$founders<- c(300)
Trait1300_850$generation<- c(850)


#Generation 900
Trait1300_900<- read.delim("output_pi_Trait1300_G900.sites.pi")
Trait1300_900<- as.data.frame(Trait1300_900)
Trait1300_900$dominance<- c(0.0)
Trait1300_900$founders<- c(300)
Trait1300_900$generation<- c(900)


#Generation 950
Trait1300_950<- read.delim("output_pi_Trait1300_G950.sites.pi")
Trait1300_950<- as.data.frame(Trait1300_950)
Trait1300_950$dominance<- c(0.0)
Trait1300_950$founders<- c(300)
Trait1300_950$generation<- c(950)


#Generation 1000
Trait1300_1000<- read.delim("output_pi_Trait1300_G1000.sites.pi")
Trait1300_1000<- as.data.frame(Trait1300_1000)
Trait1300_1000$dominance<- c(0.0)
Trait1300_1000$founders<- c(300)
Trait1300_1000$generation<- c(1000)


## Combine all generations 
## h = 0.0, founders = 300 

h0f300<- rbind(Trait1300_2, Trait1300_50, Trait1300_100, Trait1300_150, Trait1300_200, Trait1300_250,
               Trait1300_300, Trait1300_350, Trait1300_400, Trait1300_450, Trait1300_501,
               Trait1300_550, Trait1300_600, Trait1300_650, Trait1300_700, Trait1300_750,
               Trait1300_800, Trait1300_850, Trait1300_900, Trait1300_950, Trait1300_1000)







###### Trait 2 ##################################################################################################################
#### h = 0.125 #############################################################

#Trait 2 - h=0.125
## 2 founders

## Generation 2
Trait2_2<- read.delim("output_pi_Trait2_G2.sites.pi")
Trait2_2<- as.data.frame(Trait2_2)
Trait2_2$dominance<- c(0.125)
Trait2_2$founders<- c(2)
Trait2_2$generation<- c(2)

#Generation 50
Trait2_50<- read.delim("output_pi_Trait2_G50.sites.pi")
Trait2_50<- as.data.frame(Trait2_50)
Trait2_50$dominance<- c(0.125)
Trait2_50$founders<- c(2)
Trait2_50$generation<- c(50)

#Generation 100 
Trait2_100<- read.delim("output_pi_Trait2_G100.sites.pi")
Trait2_100<- as.data.frame(Trait2_100)
Trait2_100$dominance<- c(0.125)
Trait2_100$founders<- c(2)
Trait2_100$generation<- c(100)

#Generation 150 
Trait2_150<- read.delim("output_pi_Trait2_G150.sites.pi")
Trait2_150<- as.data.frame(Trait2_150)
Trait2_150$dominance<- c(0.125)
Trait2_150$founders<- c(2)
Trait2_150$generation<- c(150)

#Generation 200
Trait2_200<- read.delim("output_pi_Trait2_G200.sites.pi")
Trait2_200<- as.data.frame(Trait2_200)
Trait2_200$dominance<- c(0.125)
Trait2_200$founders<- c(2)
Trait2_200$generation<- c(200)

#Generation 250
Trait2_250<- read.delim("output_pi_Trait2_G250.sites.pi")
Trait2_250<- as.data.frame(Trait2_250)
Trait2_250$dominance<- c(0.125)
Trait2_250$founders<- c(2)
Trait2_250$generation<- c(250)

#Generation 300
Trait2_300<- read.delim("output_pi_Trait2_G300.sites.pi")
Trait2_300<- as.data.frame(Trait2_300)
Trait2_300$dominance<- c(0.125)
Trait2_300$founders<- c(2)
Trait2_300$generation<- c(300)


#Generation 350
Trait2_350<- read.delim("output_pi_Trait2_G350.sites.pi")
Trait2_350<- as.data.frame(Trait2_350)
Trait2_350$dominance<- c(0.125)
Trait2_350$founders<- c(2)
Trait2_350$generation<- c(350)


#Generation 400
Trait2_400<- read.delim("output_pi_Trait2_G400.sites.pi")
Trait2_400<- as.data.frame(Trait2_400)
Trait2_400$dominance<- c(0.125)
Trait2_400$founders<- c(2)
Trait2_400$generation<- c(400)

#Generation 450
Trait2_450<- read.delim("output_pi_Trait2_G450.sites.pi")
Trait2_450<- as.data.frame(Trait2_450)
Trait2_450$dominance<- c(0.125)
Trait2_450$founders<- c(2)
Trait2_450$generation<- c(450)

#Generation 501
Trait2_501<- read.delim("output_pi_Trait2_G501.sites.pi")
Trait2_501<- as.data.frame(Trait2_501)
Trait2_501$dominance<- c(0.125)
Trait2_501$founders<- c(2)
Trait2_501$generation<- c(501)


#Generation 550
Trait2_550<- read.delim("output_pi_Trait2_G550.sites.pi")
Trait2_550<- as.data.frame(Trait2_550)
Trait2_550$dominance<- c(0.125)
Trait2_550$founders<- c(2)
Trait2_550$generation<- c(550)

#Generation 600
Trait2_600<- read.delim("output_pi_Trait2_G600.sites.pi")
Trait2_600<- as.data.frame(Trait2_600)
Trait2_600$dominance<- c(0.125)
Trait2_600$founders<- c(2)
Trait2_600$generation<- c(600)

#Generation 650
Trait2_650<- read.delim("output_pi_Trait2_G650.sites.pi")
Trait2_650<- as.data.frame(Trait2_650)
Trait2_650$dominance<- c(0.125)
Trait2_650$founders<- c(2)
Trait2_650$generation<- c(650)

#Generation 700
Trait2_700<- read.delim("output_pi_Trait2_G700.sites.pi")
Trait2_700<- as.data.frame(Trait2_700)
Trait2_700$dominance<- c(0.125)
Trait2_700$founders<- c(2)
Trait2_700$generation<- c(700)


#Generation 750
Trait2_750<- read.delim("output_pi_Trait2_G750.sites.pi")
Trait2_750<- as.data.frame(Trait2_750)
Trait2_750$dominance<- c(0.125)
Trait2_750$founders<- c(2)
Trait2_750$generation<- c(750)

#Generation 800
Trait2_800<- read.delim("output_pi_Trait2_G800.sites.pi")
Trait2_800<- as.data.frame(Trait2_800)
Trait2_800$dominance<- c(0.125)
Trait2_800$founders<- c(2)
Trait2_800$generation<- c(800)


#Generation 850
Trait2_850<- read.delim("output_pi_Trait2_G850.sites.pi")
Trait2_850<- as.data.frame(Trait2_850)
Trait2_850$dominance<- c(0.125)
Trait2_850$founders<- c(2)
Trait2_850$generation<- c(850)


#Generation 900
Trait2_900<- read.delim("output_pi_Trait2_G900.sites.pi")
Trait2_900<- as.data.frame(Trait2_900)
Trait2_900$dominance<- c(0.125)
Trait2_900$founders<- c(2)
Trait2_900$generation<- c(900)


#Generation 950
Trait2_950<- read.delim("output_pi_Trait2_G950.sites.pi")
Trait2_950<- as.data.frame(Trait2_950)
Trait2_950$dominance<- c(0.125)
Trait2_950$founders<- c(2)
Trait2_950$generation<- c(950)


#Generation 1000
Trait2_1000<- read.delim("output_pi_Trait2_G1000.sites.pi")
Trait2_1000<- as.data.frame(Trait2_1000)
Trait2_1000$dominance<- c(0.125)
Trait2_1000$founders<- c(2)
Trait2_1000$generation<- c(1000)


## Combine all generations 
## h = 0.125, founders = 2 

h0125f2<- rbind(Trait2_2, Trait2_50, Trait2_100, Trait2_150, Trait2_200, Trait2_250,
                Trait2_300, Trait2_350, Trait2_400, Trait2_450, Trait2_501,
                Trait2_550, Trait2_600, Trait2_650, Trait2_700, Trait2_750,
                Trait2_800, Trait2_850, Trait2_900, Trait2_950, Trait2_1000)


#Trait 2 - h=0.125
## 20 founders

## Generation 2
Trait220_2<- read.delim("output_pi_Trait220_G2.sites.pi")
Trait220_2<- as.data.frame(Trait220_2)
Trait220_2$dominance<- c(0.125)
Trait220_2$founders<- c(20)
Trait220_2$generation<- c(2)

#Generation 50
Trait220_50<- read.delim("output_pi_Trait220_G50.sites.pi")
Trait220_50<- as.data.frame(Trait220_50)
Trait220_50$dominance<- c(0.125)
Trait220_50$founders<- c(20)
Trait220_50$generation<- c(50)

#Generation 100 
Trait220_100<- read.delim("output_pi_Trait220_G100.sites.pi")
Trait220_100<- as.data.frame(Trait220_100)
Trait220_100$dominance<- c(0.125)
Trait220_100$founders<- c(20)
Trait220_100$generation<- c(100)

#Generation 150 
Trait220_150<- read.delim("output_pi_Trait220_G150.sites.pi")
Trait220_150<- as.data.frame(Trait220_150)
Trait220_150$dominance<- c(0.125)
Trait220_150$founders<- c(20)
Trait220_150$generation<- c(150)

#Generation 200
Trait220_200<- read.delim("output_pi_Trait220_G200.sites.pi")
Trait220_200<- as.data.frame(Trait220_200)
Trait220_200$dominance<- c(0.125)
Trait220_200$founders<- c(20)
Trait220_200$generation<- c(200)

#Generation 250
Trait220_250<- read.delim("output_pi_Trait220_G250.sites.pi")
Trait220_250<- as.data.frame(Trait220_250)
Trait220_250$dominance<- c(0.125)
Trait220_250$founders<- c(20)
Trait220_250$generation<- c(250)

#Generation 300
Trait220_300<- read.delim("output_pi_Trait220_G300.sites.pi")
Trait220_300<- as.data.frame(Trait220_300)
Trait220_300$dominance<- c(0.125)
Trait220_300$founders<- c(20)
Trait220_300$generation<- c(300)


#Generation 350
Trait220_350<- read.delim("output_pi_Trait220_G350.sites.pi")
Trait220_350<- as.data.frame(Trait220_350)
Trait220_350$dominance<- c(0.125)
Trait220_350$founders<- c(20)
Trait220_350$generation<- c(350)


#Generation 400
Trait220_400<- read.delim("output_pi_Trait220_G400.sites.pi")
Trait220_400<- as.data.frame(Trait220_400)
Trait220_400$dominance<- c(0.125)
Trait220_400$founders<- c(20)
Trait220_400$generation<- c(400)

#Generation 450
Trait220_450<- read.delim("output_pi_Trait220_G450.sites.pi")
Trait220_450<- as.data.frame(Trait220_450)
Trait220_450$dominance<- c(0.125)
Trait220_450$founders<- c(20)
Trait220_450$generation<- c(450)

#Generation 501
Trait220_501<- read.delim("output_pi_Trait220_G501.sites.pi")
Trait220_501<- as.data.frame(Trait220_501)
Trait220_501$dominance<- c(0.125)
Trait220_501$founders<- c(20)
Trait220_501$generation<- c(501)


#Generation 550
Trait220_550<- read.delim("output_pi_Trait220_G550.sites.pi")
Trait220_550<- as.data.frame(Trait220_550)
Trait220_550$dominance<- c(0.125)
Trait220_550$founders<- c(20)
Trait220_550$generation<- c(550)

#Generation 600
Trait220_600<- read.delim("output_pi_Trait220_G600.sites.pi")
Trait220_600<- as.data.frame(Trait220_600)
Trait220_600$dominance<- c(0.125)
Trait220_600$founders<- c(20)
Trait220_600$generation<- c(600)

#Generation 650
Trait220_650<- read.delim("output_pi_Trait220_G650.sites.pi")
Trait220_650<- as.data.frame(Trait220_650)
Trait220_650$dominance<- c(0.125)
Trait220_650$founders<- c(20)
Trait220_650$generation<- c(650)

#Generation 700
Trait220_700<- read.delim("output_pi_Trait220_G700.sites.pi")
Trait220_700<- as.data.frame(Trait220_700)
Trait220_700$dominance<- c(0.125)
Trait220_700$founders<- c(20)
Trait220_700$generation<- c(700)


#Generation 750
Trait220_750<- read.delim("output_pi_Trait220_G750.sites.pi")
Trait220_750<- as.data.frame(Trait220_750)
Trait220_750$dominance<- c(0.125)
Trait220_750$founders<- c(20)
Trait220_750$generation<- c(750)

#Generation 800
Trait220_800<- read.delim("output_pi_Trait220_G800.sites.pi")
Trait220_800<- as.data.frame(Trait220_800)
Trait220_800$dominance<- c(0.125)
Trait220_800$founders<- c(20)
Trait220_800$generation<- c(800)


#Generation 850
Trait220_850<- read.delim("output_pi_Trait220_G850.sites.pi")
Trait220_850<- as.data.frame(Trait220_850)
Trait220_850$dominance<- c(0.125)
Trait220_850$founders<- c(20)
Trait220_850$generation<- c(850)


#Generation 900
Trait220_900<- read.delim("output_pi_Trait220_G900.sites.pi")
Trait220_900<- as.data.frame(Trait220_900)
Trait220_900$dominance<- c(0.125)
Trait220_900$founders<- c(20)
Trait220_900$generation<- c(900)


#Generation 950
Trait220_950<- read.delim("output_pi_Trait220_G950.sites.pi")
Trait220_950<- as.data.frame(Trait220_950)
Trait220_950$dominance<- c(0.125)
Trait220_950$founders<- c(20)
Trait220_950$generation<- c(950)


#Generation 1000
Trait220_1000<- read.delim("output_pi_Trait220_G1000.sites.pi")
Trait220_1000<- as.data.frame(Trait220_1000)
Trait220_1000$dominance<- c(0.125)
Trait220_1000$founders<- c(20)
Trait220_1000$generation<- c(1000)


## Combine all generations 
## h = 0.125, founders = 20 

h0125f20<- rbind(Trait220_2, Trait220_50, Trait220_100, Trait220_150, Trait220_200, Trait220_250,
                 Trait220_300, Trait220_350, Trait220_400, Trait220_450, Trait220_501,
                 Trait220_550, Trait220_600, Trait220_650, Trait220_700, Trait220_750,
                 Trait220_800, Trait220_850, Trait220_900, Trait220_950, Trait220_1000)


#Trait 2 - h=0.125
## 50 founders

## Generation 2
Trait250_2<- read.delim("output_pi_Trait250_G2.sites.pi")
Trait250_2<- as.data.frame(Trait250_2)
Trait250_2$dominance<- c(0.125)
Trait250_2$founders<- c(50)
Trait250_2$generation<- c(2)

#Generation 50
Trait250_50<- read.delim("output_pi_Trait250_G50.sites.pi")
Trait250_50<- as.data.frame(Trait250_50)
Trait250_50$dominance<- c(0.125)
Trait250_50$founders<- c(50)
Trait250_50$generation<- c(50)

#Generation 100 
Trait250_100<- read.delim("output_pi_Trait250_G100.sites.pi")
Trait250_100<- as.data.frame(Trait250_100)
Trait250_100$dominance<- c(0.125)
Trait250_100$founders<- c(50)
Trait250_100$generation<- c(100)

#Generation 150 
Trait250_150<- read.delim("output_pi_Trait250_G150.sites.pi")
Trait250_150<- as.data.frame(Trait250_150)
Trait250_150$dominance<- c(0.125)
Trait250_150$founders<- c(50)
Trait250_150$generation<- c(150)

#Generation 200
Trait250_200<- read.delim("output_pi_Trait250_G200.sites.pi")
Trait250_200<- as.data.frame(Trait250_200)
Trait250_200$dominance<- c(0.125)
Trait250_200$founders<- c(50)
Trait250_200$generation<- c(200)

#Generation 250
Trait250_250<- read.delim("output_pi_Trait250_G250.sites.pi")
Trait250_250<- as.data.frame(Trait250_250)
Trait250_250$dominance<- c(0.125)
Trait250_250$founders<- c(50)
Trait250_250$generation<- c(250)

#Generation 300
Trait250_300<- read.delim("output_pi_Trait250_G300.sites.pi")
Trait250_300<- as.data.frame(Trait250_300)
Trait250_300$dominance<- c(0.125)
Trait250_300$founders<- c(50)
Trait250_300$generation<- c(300)


#Generation 350
Trait250_350<- read.delim("output_pi_Trait250_G350.sites.pi")
Trait250_350<- as.data.frame(Trait250_350)
Trait250_350$dominance<- c(0.125)
Trait250_350$founders<- c(50)
Trait250_350$generation<- c(350)


#Generation 400
Trait250_400<- read.delim("output_pi_Trait250_G400.sites.pi")
Trait250_400<- as.data.frame(Trait250_400)
Trait250_400$dominance<- c(0.125)
Trait250_400$founders<- c(50)
Trait250_400$generation<- c(400)

#Generation 450
Trait250_450<- read.delim("output_pi_Trait250_G450.sites.pi")
Trait250_450<- as.data.frame(Trait250_450)
Trait250_450$dominance<- c(0.125)
Trait250_450$founders<- c(50)
Trait250_450$generation<- c(450)

#Generation 501
Trait250_501<- read.delim("output_pi_Trait250_G501.sites.pi")
Trait250_501<- as.data.frame(Trait250_501)
Trait250_501$dominance<- c(0.125)
Trait250_501$founders<- c(50)
Trait250_501$generation<- c(501)


#Generation 550
Trait250_550<- read.delim("output_pi_Trait250_G550.sites.pi")
Trait250_550<- as.data.frame(Trait250_550)
Trait250_550$dominance<- c(0.125)
Trait250_550$founders<- c(50)
Trait250_550$generation<- c(550)

#Generation 600
Trait250_600<- read.delim("output_pi_Trait250_G600.sites.pi")
Trait250_600<- as.data.frame(Trait250_600)
Trait250_600$dominance<- c(0.125)
Trait250_600$founders<- c(50)
Trait250_600$generation<- c(600)

#Generation 650
Trait250_650<- read.delim("output_pi_Trait250_G650.sites.pi")
Trait250_650<- as.data.frame(Trait250_650)
Trait250_650$dominance<- c(0.125)
Trait250_650$founders<- c(50)
Trait250_650$generation<- c(650)

#Generation 700
Trait250_700<- read.delim("output_pi_Trait250_G700.sites.pi")
Trait250_700<- as.data.frame(Trait250_700)
Trait250_700$dominance<- c(0.125)
Trait250_700$founders<- c(50)
Trait250_700$generation<- c(700)


#Generation 750
Trait250_750<- read.delim("output_pi_Trait250_G750.sites.pi")
Trait250_750<- as.data.frame(Trait250_750)
Trait250_750$dominance<- c(0.125)
Trait250_750$founders<- c(50)
Trait250_750$generation<- c(750)

#Generation 800
Trait250_800<- read.delim("output_pi_Trait250_G800.sites.pi")
Trait250_800<- as.data.frame(Trait250_800)
Trait250_800$dominance<- c(0.125)
Trait250_800$founders<- c(50)
Trait250_800$generation<- c(800)


#Generation 850
Trait250_850<- read.delim("output_pi_Trait250_G850.sites.pi")
Trait250_850<- as.data.frame(Trait250_850)
Trait250_850$dominance<- c(0.125)
Trait250_850$founders<- c(50)
Trait250_850$generation<- c(850)


#Generation 900
Trait250_900<- read.delim("output_pi_Trait250_G900.sites.pi")
Trait250_900<- as.data.frame(Trait250_900)
Trait250_900$dominance<- c(0.125)
Trait250_900$founders<- c(50)
Trait250_900$generation<- c(900)


#Generation 950
Trait250_950<- read.delim("output_pi_Trait250_G950.sites.pi")
Trait250_950<- as.data.frame(Trait250_950)
Trait250_950$dominance<- c(0.125)
Trait250_950$founders<- c(50)
Trait250_950$generation<- c(950)


#Generation 1000
Trait250_1000<- read.delim("output_pi_Trait250_G1000.sites.pi")
Trait250_1000<- as.data.frame(Trait250_1000)
Trait250_1000$dominance<- c(0.125)
Trait250_1000$founders<- c(50)
Trait250_1000$generation<- c(1000)


## Combine all generations 
## h = 0.125, founders = 50 

h0125f50<- rbind(Trait250_2, Trait250_50, Trait250_100, Trait250_150, Trait250_200, Trait250_250,
                 Trait250_300, Trait250_350, Trait250_400, Trait250_450, Trait250_501,
                 Trait250_550, Trait250_600, Trait250_650, Trait250_700, Trait250_750,
                 Trait250_800, Trait250_850, Trait250_900, Trait250_950, Trait250_1000)



#Trait 2 - h=0.125
## 100 founders

## Generation 2
Trait2100_2<- read.delim("output_pi_Trait2100_G2.sites.pi")
Trait2100_2<- as.data.frame(Trait2100_2)
Trait2100_2$dominance<- c(0.125)
Trait2100_2$founders<- c(100)
Trait2100_2$generation<- c(2)

#Generation 50
Trait2100_50<- read.delim("output_pi_Trait2100_G50.sites.pi")
Trait2100_50<- as.data.frame(Trait2100_50)
Trait2100_50$dominance<- c(0.125)
Trait2100_50$founders<- c(100)
Trait2100_50$generation<- c(50)

#Generation 100 
Trait2100_100<- read.delim("output_pi_Trait2100_G100.sites.pi")
Trait2100_100<- as.data.frame(Trait2100_100)
Trait2100_100$dominance<- c(0.125)
Trait2100_100$founders<- c(100)
Trait2100_100$generation<- c(100)

#Generation 150 
Trait2100_150<- read.delim("output_pi_Trait2100_G150.sites.pi")
Trait2100_150<- as.data.frame(Trait2100_150)
Trait2100_150$dominance<- c(0.125)
Trait2100_150$founders<- c(100)
Trait2100_150$generation<- c(150)

#Generation 200
Trait2100_200<- read.delim("output_pi_Trait2100_G200.sites.pi")
Trait2100_200<- as.data.frame(Trait2100_200)
Trait2100_200$dominance<- c(0.125)
Trait2100_200$founders<- c(100)
Trait2100_200$generation<- c(200)

#Generation 250
Trait2100_250<- read.delim("output_pi_Trait2100_G250.sites.pi")
Trait2100_250<- as.data.frame(Trait2100_250)
Trait2100_250$dominance<- c(0.125)
Trait2100_250$founders<- c(100)
Trait2100_250$generation<- c(250)

#Generation 300
Trait2100_300<- read.delim("output_pi_Trait2100_G300.sites.pi")
Trait2100_300<- as.data.frame(Trait2100_300)
Trait2100_300$dominance<- c(0.125)
Trait2100_300$founders<- c(100)
Trait2100_300$generation<- c(300)


#Generation 350
Trait2100_350<- read.delim("output_pi_Trait2100_G350.sites.pi")
Trait2100_350<- as.data.frame(Trait2100_350)
Trait2100_350$dominance<- c(0.125)
Trait2100_350$founders<- c(100)
Trait2100_350$generation<- c(350)


#Generation 400
Trait2100_400<- read.delim("output_pi_Trait2100_G400.sites.pi")
Trait2100_400<- as.data.frame(Trait2100_400)
Trait2100_400$dominance<- c(0.125)
Trait2100_400$founders<- c(100)
Trait2100_400$generation<- c(400)

#Generation 450
Trait2100_450<- read.delim("output_pi_Trait2100_G450.sites.pi")
Trait2100_450<- as.data.frame(Trait2100_450)
Trait2100_450$dominance<- c(0.125)
Trait2100_450$founders<- c(100)
Trait2100_450$generation<- c(450)

#Generation 501
Trait2100_501<- read.delim("output_pi_Trait2100_G501.sites.pi")
Trait2100_501<- as.data.frame(Trait2100_501)
Trait2100_501$dominance<- c(0.125)
Trait2100_501$founders<- c(100)
Trait2100_501$generation<- c(501)


#Generation 550
Trait2100_550<- read.delim("output_pi_Trait2100_G550.sites.pi")
Trait2100_550<- as.data.frame(Trait2100_550)
Trait2100_550$dominance<- c(0.125)
Trait2100_550$founders<- c(100)
Trait2100_550$generation<- c(550)

#Generation 600
Trait2100_600<- read.delim("output_pi_Trait2100_G600.sites.pi")
Trait2100_600<- as.data.frame(Trait2100_600)
Trait2100_600$dominance<- c(0.125)
Trait2100_600$founders<- c(100)
Trait2100_600$generation<- c(600)

#Generation 650
Trait2100_650<- read.delim("output_pi_Trait2100_G650.sites.pi")
Trait2100_650<- as.data.frame(Trait2100_650)
Trait2100_650$dominance<- c(0.125)
Trait2100_650$founders<- c(100)
Trait2100_650$generation<- c(650)

#Generation 700
Trait2100_700<- read.delim("output_pi_Trait2100_G700.sites.pi")
Trait2100_700<- as.data.frame(Trait2100_700)
Trait2100_700$dominance<- c(0.125)
Trait2100_700$founders<- c(100)
Trait2100_700$generation<- c(700)


#Generation 750
Trait2100_750<- read.delim("output_pi_Trait2100_G750.sites.pi")
Trait2100_750<- as.data.frame(Trait2100_750)
Trait2100_750$dominance<- c(0.125)
Trait2100_750$founders<- c(100)
Trait2100_750$generation<- c(750)

#Generation 800
Trait2100_800<- read.delim("output_pi_Trait2100_G800.sites.pi")
Trait2100_800<- as.data.frame(Trait2100_800)
Trait2100_800$dominance<- c(0.125)
Trait2100_800$founders<- c(100)
Trait2100_800$generation<- c(800)


#Generation 850
Trait2100_850<- read.delim("output_pi_Trait2100_G850.sites.pi")
Trait2100_850<- as.data.frame(Trait2100_850)
Trait2100_850$dominance<- c(0.125)
Trait2100_850$founders<- c(100)
Trait2100_850$generation<- c(850)


#Generation 900
Trait2100_900<- read.delim("output_pi_Trait2100_G900.sites.pi")
Trait2100_900<- as.data.frame(Trait2100_900)
Trait2100_900$dominance<- c(0.125)
Trait2100_900$founders<- c(100)
Trait2100_900$generation<- c(900)


#Generation 950
Trait2100_950<- read.delim("output_pi_Trait2100_G950.sites.pi")
Trait2100_950<- as.data.frame(Trait2100_950)
Trait2100_950$dominance<- c(0.125)
Trait2100_950$founders<- c(100)
Trait2100_950$generation<- c(950)


#Generation 1000
Trait2100_1000<- read.delim("output_pi_Trait2100_G1000.sites.pi")
Trait2100_1000<- as.data.frame(Trait2100_1000)
Trait2100_1000$dominance<- c(0.125)
Trait2100_1000$founders<- c(100)
Trait2100_1000$generation<- c(1000)


## Combine all generations 
## h = 0.125, founders = 100 

h0125f100<- rbind(Trait2100_2, Trait2100_50, Trait2100_100, Trait2100_150, Trait2100_200, Trait2100_250,
                  Trait2100_300, Trait2100_350, Trait2100_400, Trait2100_450, Trait2100_501,
                  Trait2100_550, Trait2100_600, Trait2100_650, Trait2100_700, Trait2100_750,
                  Trait2100_800, Trait2100_850, Trait2100_900, Trait2100_950, Trait2100_1000)




#Trait 2 - h=0.125
## 150 founders

## Generation 2
Trait2150_2<- read.delim("output_pi_Trait2150_G2.sites.pi")
Trait2150_2<- as.data.frame(Trait2150_2)
Trait2150_2$dominance<- c(0.125)
Trait2150_2$founders<- c(150)
Trait2150_2$generation<- c(2)

#Generation 50
Trait2150_50<- read.delim("output_pi_Trait2150_G50.sites.pi")
Trait2150_50<- as.data.frame(Trait2150_50)
Trait2150_50$dominance<- c(0.125)
Trait2150_50$founders<- c(150)
Trait2150_50$generation<- c(50)

#Generation 100 
Trait2150_100<- read.delim("output_pi_Trait2150_G100.sites.pi")
Trait2150_100<- as.data.frame(Trait2150_100)
Trait2150_100$dominance<- c(0.125)
Trait2150_100$founders<- c(150)
Trait2150_100$generation<- c(100)

#Generation 150 
Trait2150_150<- read.delim("output_pi_Trait2150_G150.sites.pi")
Trait2150_150<- as.data.frame(Trait2150_150)
Trait2150_150$dominance<- c(0.125)
Trait2150_150$founders<- c(150)
Trait2150_150$generation<- c(150)

#Generation 200
Trait2150_200<- read.delim("output_pi_Trait2150_G200.sites.pi")
Trait2150_200<- as.data.frame(Trait2150_200)
Trait2150_200$dominance<- c(0.125)
Trait2150_200$founders<- c(150)
Trait2150_200$generation<- c(200)

#Generation 250
Trait2150_250<- read.delim("output_pi_Trait2150_G250.sites.pi")
Trait2150_250<- as.data.frame(Trait2150_250)
Trait2150_250$dominance<- c(0.125)
Trait2150_250$founders<- c(150)
Trait2150_250$generation<- c(250)

#Generation 300
Trait2150_300<- read.delim("output_pi_Trait2150_G300.sites.pi")
Trait2150_300<- as.data.frame(Trait2150_300)
Trait2150_300$dominance<- c(0.125)
Trait2150_300$founders<- c(150)
Trait2150_300$generation<- c(300)


#Generation 350
Trait2150_350<- read.delim("output_pi_Trait2150_G350.sites.pi")
Trait2150_350<- as.data.frame(Trait2150_350)
Trait2150_350$dominance<- c(0.125)
Trait2150_350$founders<- c(150)
Trait2150_350$generation<- c(350)


#Generation 400
Trait2150_400<- read.delim("output_pi_Trait2150_G400.sites.pi")
Trait2150_400<- as.data.frame(Trait2150_400)
Trait2150_400$dominance<- c(0.125)
Trait2150_400$founders<- c(150)
Trait2150_400$generation<- c(400)

#Generation 450
Trait2150_450<- read.delim("output_pi_Trait2150_G450.sites.pi")
Trait2150_450<- as.data.frame(Trait2150_450)
Trait2150_450$dominance<- c(0.125)
Trait2150_450$founders<- c(150)
Trait2150_450$generation<- c(450)

#Generation 501
Trait2150_501<- read.delim("output_pi_Trait2150_G501.sites.pi")
Trait2150_501<- as.data.frame(Trait2150_501)
Trait2150_501$dominance<- c(0.125)
Trait2150_501$founders<- c(150)
Trait2150_501$generation<- c(501)


#Generation 550
Trait2150_550<- read.delim("output_pi_Trait2150_G550.sites.pi")
Trait2150_550<- as.data.frame(Trait2150_550)
Trait2150_550$dominance<- c(0.125)
Trait2150_550$founders<- c(150)
Trait2150_550$generation<- c(550)

#Generation 600
Trait2150_600<- read.delim("output_pi_Trait2150_G600.sites.pi")
Trait2150_600<- as.data.frame(Trait2150_600)
Trait2150_600$dominance<- c(0.125)
Trait2150_600$founders<- c(150)
Trait2150_600$generation<- c(600)

#Generation 650
Trait2150_650<- read.delim("output_pi_Trait2150_G650.sites.pi")
Trait2150_650<- as.data.frame(Trait2150_650)
Trait2150_650$dominance<- c(0.125)
Trait2150_650$founders<- c(150)
Trait2150_650$generation<- c(650)

#Generation 700
Trait2150_700<- read.delim("output_pi_Trait2150_G700.sites.pi")
Trait2150_700<- as.data.frame(Trait2150_700)
Trait2150_700$dominance<- c(0.125)
Trait2150_700$founders<- c(150)
Trait2150_700$generation<- c(700)


#Generation 750
Trait2150_750<- read.delim("output_pi_Trait2150_G750.sites.pi")
Trait2150_750<- as.data.frame(Trait2150_750)
Trait2150_750$dominance<- c(0.125)
Trait2150_750$founders<- c(150)
Trait2150_750$generation<- c(750)

#Generation 800
Trait2150_800<- read.delim("output_pi_Trait2150_G800.sites.pi")
Trait2150_800<- as.data.frame(Trait2150_800)
Trait2150_800$dominance<- c(0.125)
Trait2150_800$founders<- c(150)
Trait2150_800$generation<- c(800)


#Generation 850
Trait2150_850<- read.delim("output_pi_Trait2150_G850.sites.pi")
Trait2150_850<- as.data.frame(Trait2150_850)
Trait2150_850$dominance<- c(0.125)
Trait2150_850$founders<- c(150)
Trait2150_850$generation<- c(850)


#Generation 900
Trait2150_900<- read.delim("output_pi_Trait2150_G900.sites.pi")
Trait2150_900<- as.data.frame(Trait2150_900)
Trait2150_900$dominance<- c(0.125)
Trait2150_900$founders<- c(150)
Trait2150_900$generation<- c(900)


#Generation 950
Trait2150_950<- read.delim("output_pi_Trait2150_G950.sites.pi")
Trait2150_950<- as.data.frame(Trait2150_950)
Trait2150_950$dominance<- c(0.125)
Trait2150_950$founders<- c(150)
Trait2150_950$generation<- c(950)


#Generation 1000
Trait2150_1000<- read.delim("output_pi_Trait2150_G1000.sites.pi")
Trait2150_1000<- as.data.frame(Trait2150_1000)
Trait2150_1000$dominance<- c(0.125)
Trait2150_1000$founders<- c(150)
Trait2150_1000$generation<- c(1000)


## Combine all generations 
## h = 0.125, founders = 150 

h0125f150<- rbind(Trait2150_2, Trait2150_50, Trait2150_100, Trait2150_150, Trait2150_200, Trait2150_250,
                  Trait2150_300, Trait2150_350, Trait2150_400, Trait2150_450, Trait2150_501,
                  Trait2150_550, Trait2150_600, Trait2150_650, Trait2150_700, Trait2150_750,
                  Trait2150_800, Trait2150_850, Trait2150_900, Trait2150_950, Trait2150_1000)




#Trait 2 - h=0.125
## 200 founders

## Generation 2
Trait2200_2<- read.delim("output_pi_Trait2200_G2.sites.pi")
Trait2200_2<- as.data.frame(Trait2200_2)
Trait2200_2$dominance<- c(0.125)
Trait2200_2$founders<- c(200)
Trait2200_2$generation<- c(2)

#Generation 50
Trait2200_50<- read.delim("output_pi_Trait2200_G50.sites.pi")
Trait2200_50<- as.data.frame(Trait2200_50)
Trait2200_50$dominance<- c(0.125)
Trait2200_50$founders<- c(200)
Trait2200_50$generation<- c(50)

#Generation 100 
Trait2200_100<- read.delim("output_pi_Trait2200_G100.sites.pi")
Trait2200_100<- as.data.frame(Trait2200_100)
Trait2200_100$dominance<- c(0.125)
Trait2200_100$founders<- c(200)
Trait2200_100$generation<- c(100)

#Generation 150 
Trait2200_150<- read.delim("output_pi_Trait2200_G150.sites.pi")
Trait2200_150<- as.data.frame(Trait2200_150)
Trait2200_150$dominance<- c(0.125)
Trait2200_150$founders<- c(200)
Trait2200_150$generation<- c(150)

#Generation 200
Trait2200_200<- read.delim("output_pi_Trait2200_G200.sites.pi")
Trait2200_200<- as.data.frame(Trait2200_200)
Trait2200_200$dominance<- c(0.125)
Trait2200_200$founders<- c(200)
Trait2200_200$generation<- c(200)

#Generation 250
Trait2200_250<- read.delim("output_pi_Trait2200_G250.sites.pi")
Trait2200_250<- as.data.frame(Trait2200_250)
Trait2200_250$dominance<- c(0.125)
Trait2200_250$founders<- c(200)
Trait2200_250$generation<- c(250)

#Generation 300
Trait2200_300<- read.delim("output_pi_Trait2200_G300.sites.pi")
Trait2200_300<- as.data.frame(Trait2200_300)
Trait2200_300$dominance<- c(0.125)
Trait2200_300$founders<- c(200)
Trait2200_300$generation<- c(300)


#Generation 350
Trait2200_350<- read.delim("output_pi_Trait2200_G350.sites.pi")
Trait2200_350<- as.data.frame(Trait2200_350)
Trait2200_350$dominance<- c(0.125)
Trait2200_350$founders<- c(200)
Trait2200_350$generation<- c(350)


#Generation 400
Trait2200_400<- read.delim("output_pi_Trait2200_G400.sites.pi")
Trait2200_400<- as.data.frame(Trait2200_400)
Trait2200_400$dominance<- c(0.125)
Trait2200_400$founders<- c(200)
Trait2200_400$generation<- c(400)

#Generation 450
Trait2200_450<- read.delim("output_pi_Trait2200_G450.sites.pi")
Trait2200_450<- as.data.frame(Trait2200_450)
Trait2200_450$dominance<- c(0.125)
Trait2200_450$founders<- c(200)
Trait2200_450$generation<- c(450)

#Generation 501
Trait2200_501<- read.delim("output_pi_Trait2200_G501.sites.pi")
Trait2200_501<- as.data.frame(Trait2200_501)
Trait2200_501$dominance<- c(0.125)
Trait2200_501$founders<- c(200)
Trait2200_501$generation<- c(501)


#Generation 550
Trait2200_550<- read.delim("output_pi_Trait2200_G550.sites.pi")
Trait2200_550<- as.data.frame(Trait2200_550)
Trait2200_550$dominance<- c(0.125)
Trait2200_550$founders<- c(200)
Trait2200_550$generation<- c(550)

#Generation 600
Trait2200_600<- read.delim("output_pi_Trait2200_G600.sites.pi")
Trait2200_600<- as.data.frame(Trait2200_600)
Trait2200_600$dominance<- c(0.125)
Trait2200_600$founders<- c(200)
Trait2200_600$generation<- c(600)

#Generation 650
Trait2200_650<- read.delim("output_pi_Trait2200_G650.sites.pi")
Trait2200_650<- as.data.frame(Trait2200_650)
Trait2200_650$dominance<- c(0.125)
Trait2200_650$founders<- c(200)
Trait2200_650$generation<- c(650)

#Generation 700
Trait2200_700<- read.delim("output_pi_Trait2200_G700.sites.pi")
Trait2200_700<- as.data.frame(Trait2200_700)
Trait2200_700$dominance<- c(0.125)
Trait2200_700$founders<- c(200)
Trait2200_700$generation<- c(700)


#Generation 750
Trait2200_750<- read.delim("output_pi_Trait2200_G750.sites.pi")
Trait2200_750<- as.data.frame(Trait2200_750)
Trait2200_750$dominance<- c(0.125)
Trait2200_750$founders<- c(200)
Trait2200_750$generation<- c(750)

#Generation 800
Trait2200_800<- read.delim("output_pi_Trait2200_G800.sites.pi")
Trait2200_800<- as.data.frame(Trait2200_800)
Trait2200_800$dominance<- c(0.125)
Trait2200_800$founders<- c(200)
Trait2200_800$generation<- c(800)


#Generation 850
Trait2200_850<- read.delim("output_pi_Trait2200_G850.sites.pi")
Trait2200_850<- as.data.frame(Trait2200_850)
Trait2200_850$dominance<- c(0.125)
Trait2200_850$founders<- c(200)
Trait2200_850$generation<- c(850)


#Generation 900
Trait2200_900<- read.delim("output_pi_Trait2200_G900.sites.pi")
Trait2200_900<- as.data.frame(Trait2200_900)
Trait2200_900$dominance<- c(0.125)
Trait2200_900$founders<- c(200)
Trait2200_900$generation<- c(900)


#Generation 950
Trait2200_950<- read.delim("output_pi_Trait2200_G950.sites.pi")
Trait2200_950<- as.data.frame(Trait2200_950)
Trait2200_950$dominance<- c(0.125)
Trait2200_950$founders<- c(200)
Trait2200_950$generation<- c(950)


#Generation 1000
Trait2200_1000<- read.delim("output_pi_Trait2200_G1000.sites.pi")
Trait2200_1000<- as.data.frame(Trait2200_1000)
Trait2200_1000$dominance<- c(0.125)
Trait2200_1000$founders<- c(200)
Trait2200_1000$generation<- c(1000)


## Combine all generations 
## h = 0.125, founders = 200 

h0125f200<- rbind(Trait2200_2, Trait2200_50, Trait2200_100, Trait2200_150, Trait2200_200, Trait2200_250,
                  Trait2200_300, Trait2200_350, Trait2200_400, Trait2200_450, Trait2200_501,
                  Trait2200_550, Trait2200_600, Trait2200_650, Trait2200_700, Trait2200_750,
                  Trait2200_800, Trait2200_850, Trait2200_900, Trait2200_950, Trait2200_1000)



#Trait 2 - h=0.125
## 250 founders

## Generation 2
Trait2250_2<- read.delim("output_pi_Trait2250_G2.sites.pi")
Trait2250_2<- as.data.frame(Trait2250_2)
Trait2250_2$dominance<- c(0.125)
Trait2250_2$founders<- c(250)
Trait2250_2$generation<- c(2)

#Generation 50
Trait2250_50<- read.delim("output_pi_Trait2250_G50.sites.pi")
Trait2250_50<- as.data.frame(Trait2250_50)
Trait2250_50$dominance<- c(0.125)
Trait2250_50$founders<- c(250)
Trait2250_50$generation<- c(50)

#Generation 100 
Trait2250_100<- read.delim("output_pi_Trait2250_G100.sites.pi")
Trait2250_100<- as.data.frame(Trait2250_100)
Trait2250_100$dominance<- c(0.125)
Trait2250_100$founders<- c(250)
Trait2250_100$generation<- c(100)

#Generation 150 
Trait2250_150<- read.delim("output_pi_Trait2250_G150.sites.pi")
Trait2250_150<- as.data.frame(Trait2250_150)
Trait2250_150$dominance<- c(0.125)
Trait2250_150$founders<- c(250)
Trait2250_150$generation<- c(150)

#Generation 200
Trait2250_200<- read.delim("output_pi_Trait2250_G200.sites.pi")
Trait2250_200<- as.data.frame(Trait2250_200)
Trait2250_200$dominance<- c(0.125)
Trait2250_200$founders<- c(250)
Trait2250_200$generation<- c(200)

#Generation 250
Trait2250_250<- read.delim("output_pi_Trait2250_G250.sites.pi")
Trait2250_250<- as.data.frame(Trait2250_250)
Trait2250_250$dominance<- c(0.125)
Trait2250_250$founders<- c(250)
Trait2250_250$generation<- c(250)

#Generation 300
Trait2250_300<- read.delim("output_pi_Trait2250_G300.sites.pi")
Trait2250_300<- as.data.frame(Trait2250_300)
Trait2250_300$dominance<- c(0.125)
Trait2250_300$founders<- c(250)
Trait2250_300$generation<- c(300)


#Generation 350
Trait2250_350<- read.delim("output_pi_Trait2250_G350.sites.pi")
Trait2250_350<- as.data.frame(Trait2250_350)
Trait2250_350$dominance<- c(0.125)
Trait2250_350$founders<- c(250)
Trait2250_350$generation<- c(350)


#Generation 400
Trait2250_400<- read.delim("output_pi_Trait2250_G400.sites.pi")
Trait2250_400<- as.data.frame(Trait2250_400)
Trait2250_400$dominance<- c(0.125)
Trait2250_400$founders<- c(250)
Trait2250_400$generation<- c(400)

#Generation 450
Trait2250_450<- read.delim("output_pi_Trait2250_G450.sites.pi")
Trait2250_450<- as.data.frame(Trait2250_450)
Trait2250_450$dominance<- c(0.125)
Trait2250_450$founders<- c(250)
Trait2250_450$generation<- c(450)

#Generation 501
Trait2250_501<- read.delim("output_pi_Trait2250_G501.sites.pi")
Trait2250_501<- as.data.frame(Trait2250_501)
Trait2250_501$dominance<- c(0.125)
Trait2250_501$founders<- c(250)
Trait2250_501$generation<- c(501)


#Generation 550
Trait2250_550<- read.delim("output_pi_Trait2250_G550.sites.pi")
Trait2250_550<- as.data.frame(Trait2250_550)
Trait2250_550$dominance<- c(0.125)
Trait2250_550$founders<- c(250)
Trait2250_550$generation<- c(550)

#Generation 600
Trait2250_600<- read.delim("output_pi_Trait2250_G600.sites.pi")
Trait2250_600<- as.data.frame(Trait2250_600)
Trait2250_600$dominance<- c(0.125)
Trait2250_600$founders<- c(250)
Trait2250_600$generation<- c(600)

#Generation 650
Trait2250_650<- read.delim("output_pi_Trait2250_G650.sites.pi")
Trait2250_650<- as.data.frame(Trait2250_650)
Trait2250_650$dominance<- c(0.125)
Trait2250_650$founders<- c(250)
Trait2250_650$generation<- c(650)

#Generation 700
Trait2250_700<- read.delim("output_pi_Trait2250_G700.sites.pi")
Trait2250_700<- as.data.frame(Trait2250_700)
Trait2250_700$dominance<- c(0.125)
Trait2250_700$founders<- c(250)
Trait2250_700$generation<- c(700)


#Generation 750
Trait2250_750<- read.delim("output_pi_Trait2250_G750.sites.pi")
Trait2250_750<- as.data.frame(Trait2250_750)
Trait2250_750$dominance<- c(0.125)
Trait2250_750$founders<- c(250)
Trait2250_750$generation<- c(750)

#Generation 800
Trait2250_800<- read.delim("output_pi_Trait2250_G800.sites.pi")
Trait2250_800<- as.data.frame(Trait2250_800)
Trait2250_800$dominance<- c(0.125)
Trait2250_800$founders<- c(250)
Trait2250_800$generation<- c(800)


#Generation 850
Trait2250_850<- read.delim("output_pi_Trait2250_G850.sites.pi")
Trait2250_850<- as.data.frame(Trait2250_850)
Trait2250_850$dominance<- c(0.125)
Trait2250_850$founders<- c(250)
Trait2250_850$generation<- c(850)


#Generation 900
Trait2250_900<- read.delim("output_pi_Trait2250_G900.sites.pi")
Trait2250_900<- as.data.frame(Trait2250_900)
Trait2250_900$dominance<- c(0.125)
Trait2250_900$founders<- c(250)
Trait2250_900$generation<- c(900)


#Generation 950
Trait2250_950<- read.delim("output_pi_Trait2250_G950.sites.pi")
Trait2250_950<- as.data.frame(Trait2250_950)
Trait2250_950$dominance<- c(0.125)
Trait2250_950$founders<- c(250)
Trait2250_950$generation<- c(950)


#Generation 1000
Trait2250_1000<- read.delim("output_pi_Trait2250_G1000.sites.pi")
Trait2250_1000<- as.data.frame(Trait2250_1000)
Trait2250_1000$dominance<- c(0.125)
Trait2250_1000$founders<- c(250)
Trait2250_1000$generation<- c(1000)


## Combine all generations 
## h = 0.125, founders = 250 

h0125f250<- rbind(Trait2250_2, Trait2250_50, Trait2250_100, Trait2250_150, Trait2250_200, Trait2250_250,
                  Trait2250_300, Trait2250_350, Trait2250_400, Trait2250_450, Trait2250_501,
                  Trait2250_550, Trait2250_600, Trait2250_650, Trait2250_700, Trait2250_750,
                  Trait2250_800, Trait2250_850, Trait2250_900, Trait2250_950, Trait2250_1000)



#Trait 2 - h=0.125
## 300 founders

## Generation 2
Trait2300_2<- read.delim("output_pi_Trait2300_G2.sites.pi")
Trait2300_2<- as.data.frame(Trait2300_2)
Trait2300_2$dominance<- c(0.125)
Trait2300_2$founders<- c(300)
Trait2300_2$generation<- c(2)

#Generation 50
Trait2300_50<- read.delim("output_pi_Trait2300_G50.sites.pi")
Trait2300_50<- as.data.frame(Trait2300_50)
Trait2300_50$dominance<- c(0.125)
Trait2300_50$founders<- c(300)
Trait2300_50$generation<- c(50)

#Generation 100 
Trait2300_100<- read.delim("output_pi_Trait2300_G100.sites.pi")
Trait2300_100<- as.data.frame(Trait2300_100)
Trait2300_100$dominance<- c(0.125)
Trait2300_100$founders<- c(300)
Trait2300_100$generation<- c(100)

#Generation 150 
Trait2300_150<- read.delim("output_pi_Trait2300_G150.sites.pi")
Trait2300_150<- as.data.frame(Trait2300_150)
Trait2300_150$dominance<- c(0.125)
Trait2300_150$founders<- c(300)
Trait2300_150$generation<- c(150)

#Generation 200
Trait2300_200<- read.delim("output_pi_Trait2300_G200.sites.pi")
Trait2300_200<- as.data.frame(Trait2300_200)
Trait2300_200$dominance<- c(0.125)
Trait2300_200$founders<- c(300)
Trait2300_200$generation<- c(200)

#Generation 250
Trait2300_250<- read.delim("output_pi_Trait2300_G250.sites.pi")
Trait2300_250<- as.data.frame(Trait2300_250)
Trait2300_250$dominance<- c(0.125)
Trait2300_250$founders<- c(300)
Trait2300_250$generation<- c(250)

#Generation 300
Trait2300_300<- read.delim("output_pi_Trait2300_G300.sites.pi")
Trait2300_300<- as.data.frame(Trait2300_300)
Trait2300_300$dominance<- c(0.125)
Trait2300_300$founders<- c(300)
Trait2300_300$generation<- c(300)


#Generation 350
Trait2300_350<- read.delim("output_pi_Trait2300_G350.sites.pi")
Trait2300_350<- as.data.frame(Trait2300_350)
Trait2300_350$dominance<- c(0.125)
Trait2300_350$founders<- c(300)
Trait2300_350$generation<- c(350)


#Generation 400
Trait2300_400<- read.delim("output_pi_Trait2300_G400.sites.pi")
Trait2300_400<- as.data.frame(Trait2300_400)
Trait2300_400$dominance<- c(0.125)
Trait2300_400$founders<- c(300)
Trait2300_400$generation<- c(400)

#Generation 450
Trait2300_450<- read.delim("output_pi_Trait2300_G450.sites.pi")
Trait2300_450<- as.data.frame(Trait2300_450)
Trait2300_450$dominance<- c(0.125)
Trait2300_450$founders<- c(300)
Trait2300_450$generation<- c(450)

#Generation 501
Trait2300_501<- read.delim("output_pi_Trait2300_G501.sites.pi")
Trait2300_501<- as.data.frame(Trait2300_501)
Trait2300_501$dominance<- c(0.125)
Trait2300_501$founders<- c(300)
Trait2300_501$generation<- c(501)


#Generation 550
Trait2300_550<- read.delim("output_pi_Trait2300_G550.sites.pi")
Trait2300_550<- as.data.frame(Trait2300_550)
Trait2300_550$dominance<- c(0.125)
Trait2300_550$founders<- c(300)
Trait2300_550$generation<- c(550)

#Generation 600
Trait2300_600<- read.delim("output_pi_Trait2300_G600.sites.pi")
Trait2300_600<- as.data.frame(Trait2300_600)
Trait2300_600$dominance<- c(0.125)
Trait2300_600$founders<- c(300)
Trait2300_600$generation<- c(600)

#Generation 650
Trait2300_650<- read.delim("output_pi_Trait2300_G650.sites.pi")
Trait2300_650<- as.data.frame(Trait2300_650)
Trait2300_650$dominance<- c(0.125)
Trait2300_650$founders<- c(300)
Trait2300_650$generation<- c(650)

#Generation 700
Trait2300_700<- read.delim("output_pi_Trait2300_G700.sites.pi")
Trait2300_700<- as.data.frame(Trait2300_700)
Trait2300_700$dominance<- c(0.125)
Trait2300_700$founders<- c(300)
Trait2300_700$generation<- c(700)


#Generation 750
Trait2300_750<- read.delim("output_pi_Trait2300_G750.sites.pi")
Trait2300_750<- as.data.frame(Trait2300_750)
Trait2300_750$dominance<- c(0.125)
Trait2300_750$founders<- c(300)
Trait2300_750$generation<- c(750)

#Generation 800
Trait2300_800<- read.delim("output_pi_Trait2300_G800.sites.pi")
Trait2300_800<- as.data.frame(Trait2300_800)
Trait2300_800$dominance<- c(0.125)
Trait2300_800$founders<- c(300)
Trait2300_800$generation<- c(800)


#Generation 850
Trait2300_850<- read.delim("output_pi_Trait2300_G850.sites.pi")
Trait2300_850<- as.data.frame(Trait2300_850)
Trait2300_850$dominance<- c(0.125)
Trait2300_850$founders<- c(300)
Trait2300_850$generation<- c(850)


#Generation 900
Trait2300_900<- read.delim("output_pi_Trait2300_G900.sites.pi")
Trait2300_900<- as.data.frame(Trait2300_900)
Trait2300_900$dominance<- c(0.125)
Trait2300_900$founders<- c(300)
Trait2300_900$generation<- c(900)


#Generation 950
Trait2300_950<- read.delim("output_pi_Trait2300_G950.sites.pi")
Trait2300_950<- as.data.frame(Trait2300_950)
Trait2300_950$dominance<- c(0.125)
Trait2300_950$founders<- c(300)
Trait2300_950$generation<- c(950)


#Generation 1000
Trait2300_1000<- read.delim("output_pi_Trait2300_G1000.sites.pi")
Trait2300_1000<- as.data.frame(Trait2300_1000)
Trait2300_1000$dominance<- c(0.125)
Trait2300_1000$founders<- c(300)
Trait2300_1000$generation<- c(1000)


## Combine all generations 
## h = 0.125, founders = 300 

h0125f300<- rbind(Trait2300_2, Trait2300_50, Trait2300_100, Trait2300_150, Trait2300_200, Trait2300_250,
                  Trait2300_300, Trait2300_350, Trait2300_400, Trait2300_450, Trait2300_501,
                  Trait2300_550, Trait2300_600, Trait2300_650, Trait2300_700, Trait2300_750,
                  Trait2300_800, Trait2300_850, Trait2300_900, Trait2300_950, Trait2300_1000)


####### Trait 3 #################################################################################################################

#### h= 0.25 #########################################

#Trait 3 - h=0.25
## 2 founders

## Generation 2
Trait3_2<- read.delim("output_pi_Trait3_G2.sites.pi")
Trait3_2<- as.data.frame(Trait3_2)
Trait3_2$dominance<- c(0.25)
Trait3_2$founders<- c(2)
Trait3_2$generation<- c(2)

#Generation 50
Trait3_50<- read.delim("output_pi_Trait3_G50.sites.pi")
Trait3_50<- as.data.frame(Trait3_50)
Trait3_50$dominance<- c(0.25)
Trait3_50$founders<- c(2)
Trait3_50$generation<- c(50)

#Generation 100 
Trait3_100<- read.delim("output_pi_Trait3_G100.sites.pi")
Trait3_100<- as.data.frame(Trait3_100)
Trait3_100$dominance<- c(0.25)
Trait3_100$founders<- c(2)
Trait3_100$generation<- c(100)

#Generation 150 
Trait3_150<- read.delim("output_pi_Trait3_G150.sites.pi")
Trait3_150<- as.data.frame(Trait3_150)
Trait3_150$dominance<- c(0.25)
Trait3_150$founders<- c(2)
Trait3_150$generation<- c(150)

#Generation 200
Trait3_200<- read.delim("output_pi_Trait3_G200.sites.pi")
Trait3_200<- as.data.frame(Trait3_200)
Trait3_200$dominance<- c(0.25)
Trait3_200$founders<- c(2)
Trait3_200$generation<- c(200)

#Generation 250
Trait3_250<- read.delim("output_pi_Trait3_G250.sites.pi")
Trait3_250<- as.data.frame(Trait3_250)
Trait3_250$dominance<- c(0.25)
Trait3_250$founders<- c(2)
Trait3_250$generation<- c(250)

#Generation 300
Trait3_300<- read.delim("output_pi_Trait3_G300.sites.pi")
Trait3_300<- as.data.frame(Trait3_300)
Trait3_300$dominance<- c(0.25)
Trait3_300$founders<- c(2)
Trait3_300$generation<- c(300)


#Generation 350
Trait3_350<- read.delim("output_pi_Trait3_G350.sites.pi")
Trait3_350<- as.data.frame(Trait3_350)
Trait3_350$dominance<- c(0.25)
Trait3_350$founders<- c(2)
Trait3_350$generation<- c(350)


#Generation 400
Trait3_400<- read.delim("output_pi_Trait3_G400.sites.pi")
Trait3_400<- as.data.frame(Trait3_400)
Trait3_400$dominance<- c(0.25)
Trait3_400$founders<- c(2)
Trait3_400$generation<- c(400)

#Generation 450
Trait3_450<- read.delim("output_pi_Trait3_G450.sites.pi")
Trait3_450<- as.data.frame(Trait3_450)
Trait3_450$dominance<- c(0.25)
Trait3_450$founders<- c(2)
Trait3_450$generation<- c(450)

#Generation 501
Trait3_501<- read.delim("output_pi_Trait3_G501.sites.pi")
Trait3_501<- as.data.frame(Trait3_501)
Trait3_501$dominance<- c(0.25)
Trait3_501$founders<- c(2)
Trait3_501$generation<- c(501)


#Generation 550
Trait3_550<- read.delim("output_pi_Trait3_G550.sites.pi")
Trait3_550<- as.data.frame(Trait3_550)
Trait3_550$dominance<- c(0.25)
Trait3_550$founders<- c(2)
Trait3_550$generation<- c(550)

#Generation 600
Trait3_600<- read.delim("output_pi_Trait3_G600.sites.pi")
Trait3_600<- as.data.frame(Trait3_600)
Trait3_600$dominance<- c(0.25)
Trait3_600$founders<- c(2)
Trait3_600$generation<- c(600)

#Generation 650
Trait3_650<- read.delim("output_pi_Trait3_G650.sites.pi")
Trait3_650<- as.data.frame(Trait3_650)
Trait3_650$dominance<- c(0.25)
Trait3_650$founders<- c(2)
Trait3_650$generation<- c(650)

#Generation 700
Trait3_700<- read.delim("output_pi_Trait3_G700.sites.pi")
Trait3_700<- as.data.frame(Trait3_700)
Trait3_700$dominance<- c(0.25)
Trait3_700$founders<- c(2)
Trait3_700$generation<- c(700)


#Generation 750
Trait3_750<- read.delim("output_pi_Trait3_G750.sites.pi")
Trait3_750<- as.data.frame(Trait3_750)
Trait3_750$dominance<- c(0.25)
Trait3_750$founders<- c(2)
Trait3_750$generation<- c(750)

#Generation 800
Trait3_800<- read.delim("output_pi_Trait3_G800.sites.pi")
Trait3_800<- as.data.frame(Trait3_800)
Trait3_800$dominance<- c(0.25)
Trait3_800$founders<- c(2)
Trait3_800$generation<- c(800)


#Generation 850
Trait3_850<- read.delim("output_pi_Trait3_G850.sites.pi")
Trait3_850<- as.data.frame(Trait3_850)
Trait3_850$dominance<- c(0.25)
Trait3_850$founders<- c(2)
Trait3_850$generation<- c(850)


#Generation 900
Trait3_900<- read.delim("output_pi_Trait3_G900.sites.pi")
Trait3_900<- as.data.frame(Trait3_900)
Trait3_900$dominance<- c(0.25)
Trait3_900$founders<- c(2)
Trait3_900$generation<- c(900)


#Generation 950
Trait3_950<- read.delim("output_pi_Trait3_G950.sites.pi")
Trait3_950<- as.data.frame(Trait3_950)
Trait3_950$dominance<- c(0.25)
Trait3_950$founders<- c(2)
Trait3_950$generation<- c(950)


#Generation 1000
Trait3_1000<- read.delim("output_pi_Trait3_G1000.sites.pi")
Trait3_1000<- as.data.frame(Trait3_1000)
Trait3_1000$dominance<- c(0.25)
Trait3_1000$founders<- c(2)
Trait3_1000$generation<- c(1000)


## Combine all generations 
## h = 0.25, founders = 2 

h025f2<- rbind(Trait3_2, Trait3_50, Trait3_100, Trait3_150, Trait3_200, Trait3_250,
               Trait3_300, Trait3_350, Trait3_400, Trait3_450, Trait3_501,
               Trait3_550, Trait3_600, Trait3_650, Trait3_700, Trait3_750,
               Trait3_800, Trait3_850, Trait3_900, Trait3_950, Trait3_1000)



#Trait 3 - h=0.25
## 20 founders

## Generation 2
Trait320_2<- read.delim("output_pi_Trait320_G2.sites.pi")
Trait320_2<- as.data.frame(Trait320_2)
Trait320_2$dominance<- c(0.25)
Trait320_2$founders<- c(20)
Trait320_2$generation<- c(2)

#Generation 50
Trait320_50<- read.delim("output_pi_Trait320_G50.sites.pi")
Trait320_50<- as.data.frame(Trait320_50)
Trait320_50$dominance<- c(0.25)
Trait320_50$founders<- c(20)
Trait320_50$generation<- c(50)

#Generation 100 
Trait320_100<- read.delim("output_pi_Trait320_G100.sites.pi")
Trait320_100<- as.data.frame(Trait320_100)
Trait320_100$dominance<- c(0.25)
Trait320_100$founders<- c(20)
Trait320_100$generation<- c(100)

#Generation 150 
Trait320_150<- read.delim("output_pi_Trait320_G150.sites.pi")
Trait320_150<- as.data.frame(Trait320_150)
Trait320_150$dominance<- c(0.25)
Trait320_150$founders<- c(20)
Trait320_150$generation<- c(150)

#Generation 200
Trait320_200<- read.delim("output_pi_Trait320_G200.sites.pi")
Trait320_200<- as.data.frame(Trait320_200)
Trait320_200$dominance<- c(0.25)
Trait320_200$founders<- c(20)
Trait320_200$generation<- c(200)

#Generation 250
Trait320_250<- read.delim("output_pi_Trait320_G250.sites.pi")
Trait320_250<- as.data.frame(Trait320_250)
Trait320_250$dominance<- c(0.25)
Trait320_250$founders<- c(20)
Trait320_250$generation<- c(250)

#Generation 300
Trait320_300<- read.delim("output_pi_Trait320_G300.sites.pi")
Trait320_300<- as.data.frame(Trait320_300)
Trait320_300$dominance<- c(0.25)
Trait320_300$founders<- c(20)
Trait320_300$generation<- c(300)


#Generation 350
Trait320_350<- read.delim("output_pi_Trait320_G350.sites.pi")
Trait320_350<- as.data.frame(Trait320_350)
Trait320_350$dominance<- c(0.25)
Trait320_350$founders<- c(20)
Trait320_350$generation<- c(350)


#Generation 400
Trait320_400<- read.delim("output_pi_Trait320_G400.sites.pi")
Trait320_400<- as.data.frame(Trait320_400)
Trait320_400$dominance<- c(0.25)
Trait320_400$founders<- c(20)
Trait320_400$generation<- c(400)

#Generation 450
Trait320_450<- read.delim("output_pi_Trait320_G450.sites.pi")
Trait320_450<- as.data.frame(Trait320_450)
Trait320_450$dominance<- c(0.25)
Trait320_450$founders<- c(20)
Trait320_450$generation<- c(450)

#Generation 501
Trait320_501<- read.delim("output_pi_Trait320_G501.sites.pi")
Trait320_501<- as.data.frame(Trait320_501)
Trait320_501$dominance<- c(0.25)
Trait320_501$founders<- c(20)
Trait320_501$generation<- c(501)


#Generation 550
Trait320_550<- read.delim("output_pi_Trait320_G550.sites.pi")
Trait320_550<- as.data.frame(Trait320_550)
Trait320_550$dominance<- c(0.25)
Trait320_550$founders<- c(20)
Trait320_550$generation<- c(550)

#Generation 600
Trait320_600<- read.delim("output_pi_Trait320_G600.sites.pi")
Trait320_600<- as.data.frame(Trait320_600)
Trait320_600$dominance<- c(0.25)
Trait320_600$founders<- c(20)
Trait320_600$generation<- c(600)

#Generation 650
Trait320_650<- read.delim("output_pi_Trait320_G650.sites.pi")
Trait320_650<- as.data.frame(Trait320_650)
Trait320_650$dominance<- c(0.25)
Trait320_650$founders<- c(20)
Trait320_650$generation<- c(650)

#Generation 700
Trait320_700<- read.delim("output_pi_Trait320_G700.sites.pi")
Trait320_700<- as.data.frame(Trait320_700)
Trait320_700$dominance<- c(0.25)
Trait320_700$founders<- c(20)
Trait320_700$generation<- c(700)


#Generation 750
Trait320_750<- read.delim("output_pi_Trait320_G750.sites.pi")
Trait320_750<- as.data.frame(Trait320_750)
Trait320_750$dominance<- c(0.25)
Trait320_750$founders<- c(20)
Trait320_750$generation<- c(750)

#Generation 800
Trait320_800<- read.delim("output_pi_Trait320_G800.sites.pi")
Trait320_800<- as.data.frame(Trait320_800)
Trait320_800$dominance<- c(0.25)
Trait320_800$founders<- c(20)
Trait320_800$generation<- c(800)


#Generation 850
Trait320_850<- read.delim("output_pi_Trait320_G850.sites.pi")
Trait320_850<- as.data.frame(Trait320_850)
Trait320_850$dominance<- c(0.25)
Trait320_850$founders<- c(20)
Trait320_850$generation<- c(850)


#Generation 900
Trait320_900<- read.delim("output_pi_Trait320_G900.sites.pi")
Trait320_900<- as.data.frame(Trait320_900)
Trait320_900$dominance<- c(0.25)
Trait320_900$founders<- c(20)
Trait320_900$generation<- c(900)


#Generation 950
Trait320_950<- read.delim("output_pi_Trait320_G950.sites.pi")
Trait320_950<- as.data.frame(Trait320_950)
Trait320_950$dominance<- c(0.25)
Trait320_950$founders<- c(20)
Trait320_950$generation<- c(950)


#Generation 1000
Trait320_1000<- read.delim("output_pi_Trait320_G1000.sites.pi")
Trait320_1000<- as.data.frame(Trait320_1000)
Trait320_1000$dominance<- c(0.25)
Trait320_1000$founders<- c(20)
Trait320_1000$generation<- c(1000)


## Combine all generations 
## h = 0.25, founders = 20 

h025f20<- rbind(Trait320_2, Trait320_50, Trait320_100, Trait320_150, Trait320_200, Trait320_250,
                Trait320_300, Trait320_350, Trait320_400, Trait320_450, Trait320_501,
                Trait320_550, Trait320_600, Trait320_650, Trait320_700, Trait320_750,
                Trait320_800, Trait320_850, Trait320_900, Trait320_950, Trait320_1000)


#Trait 3 - h=0.25
## 50 founders

## Generation 2
Trait350_2<- read.delim("output_pi_Trait350_G2.sites.pi")
Trait350_2<- as.data.frame(Trait350_2)
Trait350_2$dominance<- c(0.25)
Trait350_2$founders<- c(50)
Trait350_2$generation<- c(2)

#Generation 50
Trait350_50<- read.delim("output_pi_Trait350_G50.sites.pi")
Trait350_50<- as.data.frame(Trait350_50)
Trait350_50$dominance<- c(0.25)
Trait350_50$founders<- c(50)
Trait350_50$generation<- c(50)

#Generation 100 
Trait350_100<- read.delim("output_pi_Trait350_G100.sites.pi")
Trait350_100<- as.data.frame(Trait350_100)
Trait350_100$dominance<- c(0.25)
Trait350_100$founders<- c(50)
Trait350_100$generation<- c(100)

#Generation 150 
Trait350_150<- read.delim("output_pi_Trait350_G150.sites.pi")
Trait350_150<- as.data.frame(Trait350_150)
Trait350_150$dominance<- c(0.25)
Trait350_150$founders<- c(50)
Trait350_150$generation<- c(150)

#Generation 200
Trait350_200<- read.delim("output_pi_Trait350_G200.sites.pi")
Trait350_200<- as.data.frame(Trait350_200)
Trait350_200$dominance<- c(0.25)
Trait350_200$founders<- c(50)
Trait350_200$generation<- c(200)

#Generation 250
Trait350_250<- read.delim("output_pi_Trait350_G250.sites.pi")
Trait350_250<- as.data.frame(Trait350_250)
Trait350_250$dominance<- c(0.25)
Trait350_250$founders<- c(50)
Trait350_250$generation<- c(250)

#Generation 300
Trait350_300<- read.delim("output_pi_Trait350_G300.sites.pi")
Trait350_300<- as.data.frame(Trait350_300)
Trait350_300$dominance<- c(0.25)
Trait350_300$founders<- c(50)
Trait350_300$generation<- c(300)


#Generation 350
Trait350_350<- read.delim("output_pi_Trait350_G350.sites.pi")
Trait350_350<- as.data.frame(Trait350_350)
Trait350_350$dominance<- c(0.25)
Trait350_350$founders<- c(50)
Trait350_350$generation<- c(350)


#Generation 400
Trait350_400<- read.delim("output_pi_Trait350_G400.sites.pi")
Trait350_400<- as.data.frame(Trait350_400)
Trait350_400$dominance<- c(0.25)
Trait350_400$founders<- c(50)
Trait350_400$generation<- c(400)

#Generation 450
Trait350_450<- read.delim("output_pi_Trait350_G450.sites.pi")
Trait350_450<- as.data.frame(Trait350_450)
Trait350_450$dominance<- c(0.25)
Trait350_450$founders<- c(50)
Trait350_450$generation<- c(450)

#Generation 501
Trait350_501<- read.delim("output_pi_Trait350_G501.sites.pi")
Trait350_501<- as.data.frame(Trait350_501)
Trait350_501$dominance<- c(0.25)
Trait350_501$founders<- c(50)
Trait350_501$generation<- c(501)


#Generation 550
Trait350_550<- read.delim("output_pi_Trait350_G550.sites.pi")
Trait350_550<- as.data.frame(Trait350_550)
Trait350_550$dominance<- c(0.25)
Trait350_550$founders<- c(50)
Trait350_550$generation<- c(550)

#Generation 600
Trait350_600<- read.delim("output_pi_Trait350_G600.sites.pi")
Trait350_600<- as.data.frame(Trait350_600)
Trait350_600$dominance<- c(0.25)
Trait350_600$founders<- c(50)
Trait350_600$generation<- c(600)

#Generation 650
Trait350_650<- read.delim("output_pi_Trait350_G650.sites.pi")
Trait350_650<- as.data.frame(Trait350_650)
Trait350_650$dominance<- c(0.25)
Trait350_650$founders<- c(50)
Trait350_650$generation<- c(650)

#Generation 700
Trait350_700<- read.delim("output_pi_Trait350_G700.sites.pi")
Trait350_700<- as.data.frame(Trait350_700)
Trait350_700$dominance<- c(0.25)
Trait350_700$founders<- c(50)
Trait350_700$generation<- c(700)


#Generation 750
Trait350_750<- read.delim("output_pi_Trait350_G750.sites.pi")
Trait350_750<- as.data.frame(Trait350_750)
Trait350_750$dominance<- c(0.25)
Trait350_750$founders<- c(50)
Trait350_750$generation<- c(750)

#Generation 800
Trait350_800<- read.delim("output_pi_Trait350_G800.sites.pi")
Trait350_800<- as.data.frame(Trait350_800)
Trait350_800$dominance<- c(0.25)
Trait350_800$founders<- c(50)
Trait350_800$generation<- c(800)


#Generation 850
Trait350_850<- read.delim("output_pi_Trait350_G850.sites.pi")
Trait350_850<- as.data.frame(Trait350_850)
Trait350_850$dominance<- c(0.25)
Trait350_850$founders<- c(50)
Trait350_850$generation<- c(850)


#Generation 900
Trait350_900<- read.delim("output_pi_Trait350_G900.sites.pi")
Trait350_900<- as.data.frame(Trait350_900)
Trait350_900$dominance<- c(0.25)
Trait350_900$founders<- c(50)
Trait350_900$generation<- c(900)


#Generation 950
Trait350_950<- read.delim("output_pi_Trait350_G950.sites.pi")
Trait350_950<- as.data.frame(Trait350_950)
Trait350_950$dominance<- c(0.25)
Trait350_950$founders<- c(50)
Trait350_950$generation<- c(950)


#Generation 1000
Trait350_1000<- read.delim("output_pi_Trait350_G1000.sites.pi")
Trait350_1000<- as.data.frame(Trait350_1000)
Trait350_1000$dominance<- c(0.25)
Trait350_1000$founders<- c(50)
Trait350_1000$generation<- c(1000)


## Combine all generations 
## h = 0.25, founders = 50 

h025f50<- rbind(Trait350_2, Trait350_50, Trait350_100, Trait350_150, Trait350_200, Trait350_250,
                Trait350_300, Trait350_350, Trait350_400, Trait350_450, Trait350_501,
                Trait350_550, Trait350_600, Trait350_650, Trait350_700, Trait350_750,
                Trait350_800, Trait350_850, Trait350_900, Trait350_950, Trait350_1000)



#Trait 3 - h=0.25
## 100 founders

## Generation 2
Trait3100_2<- read.delim("output_pi_Trait3100_G2.sites.pi")
Trait3100_2<- as.data.frame(Trait3100_2)
Trait3100_2$dominance<- c(0.25)
Trait3100_2$founders<- c(100)
Trait3100_2$generation<- c(2)

#Generation 50
Trait3100_50<- read.delim("output_pi_Trait3100_G50.sites.pi")
Trait3100_50<- as.data.frame(Trait3100_50)
Trait3100_50$dominance<- c(0.25)
Trait3100_50$founders<- c(100)
Trait3100_50$generation<- c(50)

#Generation 100 
Trait3100_100<- read.delim("output_pi_Trait3100_G100.sites.pi")
Trait3100_100<- as.data.frame(Trait3100_100)
Trait3100_100$dominance<- c(0.25)
Trait3100_100$founders<- c(100)
Trait3100_100$generation<- c(100)

#Generation 150 
Trait3100_150<- read.delim("output_pi_Trait3100_G150.sites.pi")
Trait3100_150<- as.data.frame(Trait3100_150)
Trait3100_150$dominance<- c(0.25)
Trait3100_150$founders<- c(100)
Trait3100_150$generation<- c(150)

#Generation 200
Trait3100_200<- read.delim("output_pi_Trait3100_G200.sites.pi")
Trait3100_200<- as.data.frame(Trait3100_200)
Trait3100_200$dominance<- c(0.25)
Trait3100_200$founders<- c(100)
Trait3100_200$generation<- c(200)

#Generation 250
Trait3100_250<- read.delim("output_pi_Trait3100_G250.sites.pi")
Trait3100_250<- as.data.frame(Trait3100_250)
Trait3100_250$dominance<- c(0.25)
Trait3100_250$founders<- c(100)
Trait3100_250$generation<- c(250)

#Generation 300
Trait3100_300<- read.delim("output_pi_Trait3100_G300.sites.pi")
Trait3100_300<- as.data.frame(Trait3100_300)
Trait3100_300$dominance<- c(0.25)
Trait3100_300$founders<- c(100)
Trait3100_300$generation<- c(300)


#Generation 350
Trait3100_350<- read.delim("output_pi_Trait3100_G350.sites.pi")
Trait3100_350<- as.data.frame(Trait3100_350)
Trait3100_350$dominance<- c(0.25)
Trait3100_350$founders<- c(100)
Trait3100_350$generation<- c(350)


#Generation 400
Trait3100_400<- read.delim("output_pi_Trait3100_G400.sites.pi")
Trait3100_400<- as.data.frame(Trait3100_400)
Trait3100_400$dominance<- c(0.25)
Trait3100_400$founders<- c(100)
Trait3100_400$generation<- c(400)

#Generation 450
Trait3100_450<- read.delim("output_pi_Trait3100_G450.sites.pi")
Trait3100_450<- as.data.frame(Trait3100_450)
Trait3100_450$dominance<- c(0.25)
Trait3100_450$founders<- c(100)
Trait3100_450$generation<- c(450)

#Generation 501
Trait3100_501<- read.delim("output_pi_Trait3100_G501.sites.pi")
Trait3100_501<- as.data.frame(Trait3100_501)
Trait3100_501$dominance<- c(0.25)
Trait3100_501$founders<- c(100)
Trait3100_501$generation<- c(501)


#Generation 550
Trait3100_550<- read.delim("output_pi_Trait3100_G550.sites.pi")
Trait3100_550<- as.data.frame(Trait3100_550)
Trait3100_550$dominance<- c(0.25)
Trait3100_550$founders<- c(100)
Trait3100_550$generation<- c(550)

#Generation 600
Trait3100_600<- read.delim("output_pi_Trait3100_G600.sites.pi")
Trait3100_600<- as.data.frame(Trait3100_600)
Trait3100_600$dominance<- c(0.25)
Trait3100_600$founders<- c(100)
Trait3100_600$generation<- c(600)

#Generation 650
Trait3100_650<- read.delim("output_pi_Trait3100_G650.sites.pi")
Trait3100_650<- as.data.frame(Trait3100_650)
Trait3100_650$dominance<- c(0.25)
Trait3100_650$founders<- c(100)
Trait3100_650$generation<- c(650)

#Generation 700
Trait3100_700<- read.delim("output_pi_Trait3100_G700.sites.pi")
Trait3100_700<- as.data.frame(Trait3100_700)
Trait3100_700$dominance<- c(0.25)
Trait3100_700$founders<- c(100)
Trait3100_700$generation<- c(700)


#Generation 750
Trait3100_750<- read.delim("output_pi_Trait3100_G750.sites.pi")
Trait3100_750<- as.data.frame(Trait3100_750)
Trait3100_750$dominance<- c(0.25)
Trait3100_750$founders<- c(100)
Trait3100_750$generation<- c(750)

#Generation 800
Trait3100_800<- read.delim("output_pi_Trait3100_G800.sites.pi")
Trait3100_800<- as.data.frame(Trait3100_800)
Trait3100_800$dominance<- c(0.25)
Trait3100_800$founders<- c(100)
Trait3100_800$generation<- c(800)


#Generation 850
Trait3100_850<- read.delim("output_pi_Trait3100_G850.sites.pi")
Trait3100_850<- as.data.frame(Trait3100_850)
Trait3100_850$dominance<- c(0.25)
Trait3100_850$founders<- c(100)
Trait3100_850$generation<- c(850)


#Generation 900
Trait3100_900<- read.delim("output_pi_Trait3100_G900.sites.pi")
Trait3100_900<- as.data.frame(Trait3100_900)
Trait3100_900$dominance<- c(0.25)
Trait3100_900$founders<- c(100)
Trait3100_900$generation<- c(900)


#Generation 950
Trait3100_950<- read.delim("output_pi_Trait3100_G950.sites.pi")
Trait3100_950<- as.data.frame(Trait3100_950)
Trait3100_950$dominance<- c(0.25)
Trait3100_950$founders<- c(100)
Trait3100_950$generation<- c(950)


#Generation 1000
Trait3100_1000<- read.delim("output_pi_Trait3100_G1000.sites.pi")
Trait3100_1000<- as.data.frame(Trait3100_1000)
Trait3100_1000$dominance<- c(0.25)
Trait3100_1000$founders<- c(100)
Trait3100_1000$generation<- c(1000)


## Combine all generations 
## h = 0.25, founders = 100 

h025f100<- rbind(Trait3100_2, Trait3100_50, Trait3100_100, Trait3100_150, Trait3100_200, Trait3100_250,
                 Trait3100_300, Trait3100_350, Trait3100_400, Trait3100_450, Trait3100_501,
                 Trait3100_550, Trait3100_600, Trait3100_650, Trait3100_700, Trait3100_750,
                 Trait3100_800, Trait3100_850, Trait3100_900, Trait3100_950, Trait3100_1000)



#Trait 3 - h=0.25
## 150 founders

## Generation 2
Trait3150_2<- read.delim("output_pi_Trait3150_G2.sites.pi")
Trait3150_2<- as.data.frame(Trait3150_2)
Trait3150_2$dominance<- c(0.25)
Trait3150_2$founders<- c(150)
Trait3150_2$generation<- c(2)

#Generation 50
Trait3150_50<- read.delim("output_pi_Trait3150_G50.sites.pi")
Trait3150_50<- as.data.frame(Trait3150_50)
Trait3150_50$dominance<- c(0.25)
Trait3150_50$founders<- c(150)
Trait3150_50$generation<- c(50)

#Generation 100 
Trait3150_100<- read.delim("output_pi_Trait3150_G100.sites.pi")
Trait3150_100<- as.data.frame(Trait3150_100)
Trait3150_100$dominance<- c(0.25)
Trait3150_100$founders<- c(150)
Trait3150_100$generation<- c(100)

#Generation 150 
Trait3150_150<- read.delim("output_pi_Trait3150_G150.sites.pi")
Trait3150_150<- as.data.frame(Trait3150_150)
Trait3150_150$dominance<- c(0.25)
Trait3150_150$founders<- c(150)
Trait3150_150$generation<- c(150)

#Generation 200
Trait3150_200<- read.delim("output_pi_Trait3150_G200.sites.pi")
Trait3150_200<- as.data.frame(Trait3150_200)
Trait3150_200$dominance<- c(0.25)
Trait3150_200$founders<- c(150)
Trait3150_200$generation<- c(200)

#Generation 250
Trait3150_250<- read.delim("output_pi_Trait3150_G250.sites.pi")
Trait3150_250<- as.data.frame(Trait3150_250)
Trait3150_250$dominance<- c(0.25)
Trait3150_250$founders<- c(150)
Trait3150_250$generation<- c(250)

#Generation 300
Trait3150_300<- read.delim("output_pi_Trait3150_G300.sites.pi")
Trait3150_300<- as.data.frame(Trait3150_300)
Trait3150_300$dominance<- c(0.25)
Trait3150_300$founders<- c(150)
Trait3150_300$generation<- c(300)


#Generation 350
Trait3150_350<- read.delim("output_pi_Trait3150_G350.sites.pi")
Trait3150_350<- as.data.frame(Trait3150_350)
Trait3150_350$dominance<- c(0.25)
Trait3150_350$founders<- c(150)
Trait3150_350$generation<- c(350)


#Generation 400
Trait3150_400<- read.delim("output_pi_Trait3150_G400.sites.pi")
Trait3150_400<- as.data.frame(Trait3150_400)
Trait3150_400$dominance<- c(0.25)
Trait3150_400$founders<- c(150)
Trait3150_400$generation<- c(400)

#Generation 450
Trait3150_450<- read.delim("output_pi_Trait3150_G450.sites.pi")
Trait3150_450<- as.data.frame(Trait3150_450)
Trait3150_450$dominance<- c(0.25)
Trait3150_450$founders<- c(150)
Trait3150_450$generation<- c(450)

#Generation 501
Trait3150_501<- read.delim("output_pi_Trait3150_G501.sites.pi")
Trait3150_501<- as.data.frame(Trait3150_501)
Trait3150_501$dominance<- c(0.25)
Trait3150_501$founders<- c(150)
Trait3150_501$generation<- c(501)


#Generation 550
Trait3150_550<- read.delim("output_pi_Trait3150_G550.sites.pi")
Trait3150_550<- as.data.frame(Trait3150_550)
Trait3150_550$dominance<- c(0.25)
Trait3150_550$founders<- c(150)
Trait3150_550$generation<- c(550)

#Generation 600
Trait3150_600<- read.delim("output_pi_Trait3150_G600.sites.pi")
Trait3150_600<- as.data.frame(Trait3150_600)
Trait3150_600$dominance<- c(0.25)
Trait3150_600$founders<- c(150)
Trait3150_600$generation<- c(600)

#Generation 650
Trait3150_650<- read.delim("output_pi_Trait3150_G650.sites.pi")
Trait3150_650<- as.data.frame(Trait3150_650)
Trait3150_650$dominance<- c(0.25)
Trait3150_650$founders<- c(150)
Trait3150_650$generation<- c(650)

#Generation 700
Trait3150_700<- read.delim("output_pi_Trait3150_G700.sites.pi")
Trait3150_700<- as.data.frame(Trait3150_700)
Trait3150_700$dominance<- c(0.25)
Trait3150_700$founders<- c(150)
Trait3150_700$generation<- c(700)


#Generation 750
Trait3150_750<- read.delim("output_pi_Trait3150_G750.sites.pi")
Trait3150_750<- as.data.frame(Trait3150_750)
Trait3150_750$dominance<- c(0.25)
Trait3150_750$founders<- c(150)
Trait3150_750$generation<- c(750)

#Generation 800
Trait3150_800<- read.delim("output_pi_Trait3150_G800.sites.pi")
Trait3150_800<- as.data.frame(Trait3150_800)
Trait3150_800$dominance<- c(0.25)
Trait3150_800$founders<- c(150)
Trait3150_800$generation<- c(800)


#Generation 850
Trait3150_850<- read.delim("output_pi_Trait3150_G850.sites.pi")
Trait3150_850<- as.data.frame(Trait3150_850)
Trait3150_850$dominance<- c(0.25)
Trait3150_850$founders<- c(150)
Trait3150_850$generation<- c(850)


#Generation 900
Trait3150_900<- read.delim("output_pi_Trait3150_G900.sites.pi")
Trait3150_900<- as.data.frame(Trait3150_900)
Trait3150_900$dominance<- c(0.25)
Trait3150_900$founders<- c(150)
Trait3150_900$generation<- c(900)


#Generation 950
Trait3150_950<- read.delim("output_pi_Trait3150_G950.sites.pi")
Trait3150_950<- as.data.frame(Trait3150_950)
Trait3150_950$dominance<- c(0.25)
Trait3150_950$founders<- c(150)
Trait3150_950$generation<- c(950)


#Generation 1000
Trait3150_1000<- read.delim("output_pi_Trait3150_G1000.sites.pi")
Trait3150_1000<- as.data.frame(Trait3150_1000)
Trait3150_1000$dominance<- c(0.25)
Trait3150_1000$founders<- c(150)
Trait3150_1000$generation<- c(1000)


## Combine all generations 
## h = 0.25, founders = 150 

h025f150<- rbind(Trait3150_2, Trait3150_50, Trait3150_100, Trait3150_150, Trait3150_200, Trait3150_250,
                 Trait3150_300, Trait3150_350, Trait3150_400, Trait3150_450, Trait3150_501,
                 Trait3150_550, Trait3150_600, Trait3150_650, Trait3150_700, Trait3150_750,
                 Trait3150_800, Trait3150_850, Trait3150_900, Trait3150_950, Trait3150_1000)


#Trait 3 - h=0.25
## 200 founders

## Generation 2
Trait3200_2<- read.delim("output_pi_Trait3200_G2.sites.pi")
Trait3200_2<- as.data.frame(Trait3200_2)
Trait3200_2$dominance<- c(0.25)
Trait3200_2$founders<- c(200)
Trait3200_2$generation<- c(2)

#Generation 50
Trait3200_50<- read.delim("output_pi_Trait3200_G50.sites.pi")
Trait3200_50<- as.data.frame(Trait3200_50)
Trait3200_50$dominance<- c(0.25)
Trait3200_50$founders<- c(200)
Trait3200_50$generation<- c(50)

#Generation 100 
Trait3200_100<- read.delim("output_pi_Trait3200_G100.sites.pi")
Trait3200_100<- as.data.frame(Trait3200_100)
Trait3200_100$dominance<- c(0.25)
Trait3200_100$founders<- c(200)
Trait3200_100$generation<- c(100)

#Generation 150 
Trait3200_150<- read.delim("output_pi_Trait3200_G150.sites.pi")
Trait3200_150<- as.data.frame(Trait3200_150)
Trait3200_150$dominance<- c(0.25)
Trait3200_150$founders<- c(200)
Trait3200_150$generation<- c(150)

#Generation 200
Trait3200_200<- read.delim("output_pi_Trait3200_G200.sites.pi")
Trait3200_200<- as.data.frame(Trait3200_200)
Trait3200_200$dominance<- c(0.25)
Trait3200_200$founders<- c(200)
Trait3200_200$generation<- c(200)

#Generation 250
Trait3200_250<- read.delim("output_pi_Trait3200_G250.sites.pi")
Trait3200_250<- as.data.frame(Trait3200_250)
Trait3200_250$dominance<- c(0.25)
Trait3200_250$founders<- c(200)
Trait3200_250$generation<- c(250)

#Generation 300
Trait3200_300<- read.delim("output_pi_Trait3200_G300.sites.pi")
Trait3200_300<- as.data.frame(Trait3200_300)
Trait3200_300$dominance<- c(0.25)
Trait3200_300$founders<- c(200)
Trait3200_300$generation<- c(300)


#Generation 350
Trait3200_350<- read.delim("output_pi_Trait3200_G350.sites.pi")
Trait3200_350<- as.data.frame(Trait3200_350)
Trait3200_350$dominance<- c(0.25)
Trait3200_350$founders<- c(200)
Trait3200_350$generation<- c(350)


#Generation 400
Trait3200_400<- read.delim("output_pi_Trait3200_G400.sites.pi")
Trait3200_400<- as.data.frame(Trait3200_400)
Trait3200_400$dominance<- c(0.25)
Trait3200_400$founders<- c(200)
Trait3200_400$generation<- c(400)

#Generation 450
Trait3200_450<- read.delim("output_pi_Trait3200_G450.sites.pi")
Trait3200_450<- as.data.frame(Trait3200_450)
Trait3200_450$dominance<- c(0.25)
Trait3200_450$founders<- c(200)
Trait3200_450$generation<- c(450)

#Generation 501
Trait3200_501<- read.delim("output_pi_Trait3200_G501.sites.pi")
Trait3200_501<- as.data.frame(Trait3200_501)
Trait3200_501$dominance<- c(0.25)
Trait3200_501$founders<- c(200)
Trait3200_501$generation<- c(501)


#Generation 550
Trait3200_550<- read.delim("output_pi_Trait3200_G550.sites.pi")
Trait3200_550<- as.data.frame(Trait3200_550)
Trait3200_550$dominance<- c(0.25)
Trait3200_550$founders<- c(200)
Trait3200_550$generation<- c(550)

#Generation 600
Trait3200_600<- read.delim("output_pi_Trait3200_G600.sites.pi")
Trait3200_600<- as.data.frame(Trait3200_600)
Trait3200_600$dominance<- c(0.25)
Trait3200_600$founders<- c(200)
Trait3200_600$generation<- c(600)

#Generation 650
Trait3200_650<- read.delim("output_pi_Trait3200_G650.sites.pi")
Trait3200_650<- as.data.frame(Trait3200_650)
Trait3200_650$dominance<- c(0.25)
Trait3200_650$founders<- c(200)
Trait3200_650$generation<- c(650)

#Generation 700
Trait3200_700<- read.delim("output_pi_Trait3200_G700.sites.pi")
Trait3200_700<- as.data.frame(Trait3200_700)
Trait3200_700$dominance<- c(0.25)
Trait3200_700$founders<- c(200)
Trait3200_700$generation<- c(700)


#Generation 750
Trait3200_750<- read.delim("output_pi_Trait3200_G750.sites.pi")
Trait3200_750<- as.data.frame(Trait3200_750)
Trait3200_750$dominance<- c(0.25)
Trait3200_750$founders<- c(200)
Trait3200_750$generation<- c(750)

#Generation 800
Trait3200_800<- read.delim("output_pi_Trait3200_G800.sites.pi")
Trait3200_800<- as.data.frame(Trait3200_800)
Trait3200_800$dominance<- c(0.25)
Trait3200_800$founders<- c(200)
Trait3200_800$generation<- c(800)


#Generation 850
Trait3200_850<- read.delim("output_pi_Trait3200_G850.sites.pi")
Trait3200_850<- as.data.frame(Trait3200_850)
Trait3200_850$dominance<- c(0.25)
Trait3200_850$founders<- c(200)
Trait3200_850$generation<- c(850)


#Generation 900
Trait3200_900<- read.delim("output_pi_Trait3200_G900.sites.pi")
Trait3200_900<- as.data.frame(Trait3200_900)
Trait3200_900$dominance<- c(0.25)
Trait3200_900$founders<- c(200)
Trait3200_900$generation<- c(900)


#Generation 950
Trait3200_950<- read.delim("output_pi_Trait3200_G950.sites.pi")
Trait3200_950<- as.data.frame(Trait3200_950)
Trait3200_950$dominance<- c(0.25)
Trait3200_950$founders<- c(200)
Trait3200_950$generation<- c(950)


#Generation 1000
Trait3200_1000<- read.delim("output_pi_Trait3200_G1000.sites.pi")
Trait3200_1000<- as.data.frame(Trait3200_1000)
Trait3200_1000$dominance<- c(0.25)
Trait3200_1000$founders<- c(200)
Trait3200_1000$generation<- c(1000)


## Combine all generations 
## h = 0.25, founders = 200 

h025f200<- rbind(Trait3200_2, Trait3200_50, Trait3200_100, Trait3200_150, Trait3200_200, Trait3200_250,
                 Trait3200_300, Trait3200_350, Trait3200_400, Trait3200_450, Trait3200_501,
                 Trait3200_550, Trait3200_600, Trait3200_650, Trait3200_700, Trait3200_750,
                 Trait3200_800, Trait3200_850, Trait3200_900, Trait3200_950, Trait3200_1000)



#Trait 3 - h=0.25
## 250 founders

## Generation 2
Trait3250_2<- read.delim("output_pi_Trait3250_G2.sites.pi")
Trait3250_2<- as.data.frame(Trait3250_2)
Trait3250_2$dominance<- c(0.25)
Trait3250_2$founders<- c(250)
Trait3250_2$generation<- c(2)

#Generation 50
Trait3250_50<- read.delim("output_pi_Trait3250_G50.sites.pi")
Trait3250_50<- as.data.frame(Trait3250_50)
Trait3250_50$dominance<- c(0.25)
Trait3250_50$founders<- c(250)
Trait3250_50$generation<- c(50)

#Generation 100 
Trait3250_100<- read.delim("output_pi_Trait3250_G100.sites.pi")
Trait3250_100<- as.data.frame(Trait3250_100)
Trait3250_100$dominance<- c(0.25)
Trait3250_100$founders<- c(250)
Trait3250_100$generation<- c(100)

#Generation 150 
Trait3250_150<- read.delim("output_pi_Trait3250_G150.sites.pi")
Trait3250_150<- as.data.frame(Trait3250_150)
Trait3250_150$dominance<- c(0.25)
Trait3250_150$founders<- c(250)
Trait3250_150$generation<- c(150)

#Generation 200
Trait3250_200<- read.delim("output_pi_Trait3250_G200.sites.pi")
Trait3250_200<- as.data.frame(Trait3250_200)
Trait3250_200$dominance<- c(0.25)
Trait3250_200$founders<- c(250)
Trait3250_200$generation<- c(200)

#Generation 250
Trait3250_250<- read.delim("output_pi_Trait3250_G250.sites.pi")
Trait3250_250<- as.data.frame(Trait3250_250)
Trait3250_250$dominance<- c(0.25)
Trait3250_250$founders<- c(250)
Trait3250_250$generation<- c(250)

#Generation 300
Trait3250_300<- read.delim("output_pi_Trait3250_G300.sites.pi")
Trait3250_300<- as.data.frame(Trait3250_300)
Trait3250_300$dominance<- c(0.25)
Trait3250_300$founders<- c(250)
Trait3250_300$generation<- c(300)


#Generation 350
Trait3250_350<- read.delim("output_pi_Trait3250_G350.sites.pi")
Trait3250_350<- as.data.frame(Trait3250_350)
Trait3250_350$dominance<- c(0.25)
Trait3250_350$founders<- c(250)
Trait3250_350$generation<- c(350)


#Generation 400
Trait3250_400<- read.delim("output_pi_Trait3250_G400.sites.pi")
Trait3250_400<- as.data.frame(Trait3250_400)
Trait3250_400$dominance<- c(0.25)
Trait3250_400$founders<- c(250)
Trait3250_400$generation<- c(400)

#Generation 450
Trait3250_450<- read.delim("output_pi_Trait3250_G450.sites.pi")
Trait3250_450<- as.data.frame(Trait3250_450)
Trait3250_450$dominance<- c(0.25)
Trait3250_450$founders<- c(250)
Trait3250_450$generation<- c(450)

#Generation 501
Trait3250_501<- read.delim("output_pi_Trait3250_G501.sites.pi")
Trait3250_501<- as.data.frame(Trait3250_501)
Trait3250_501$dominance<- c(0.25)
Trait3250_501$founders<- c(250)
Trait3250_501$generation<- c(501)


#Generation 550
Trait3250_550<- read.delim("output_pi_Trait3250_G550.sites.pi")
Trait3250_550<- as.data.frame(Trait3250_550)
Trait3250_550$dominance<- c(0.25)
Trait3250_550$founders<- c(250)
Trait3250_550$generation<- c(550)

#Generation 600
Trait3250_600<- read.delim("output_pi_Trait3250_G600.sites.pi")
Trait3250_600<- as.data.frame(Trait3250_600)
Trait3250_600$dominance<- c(0.25)
Trait3250_600$founders<- c(250)
Trait3250_600$generation<- c(600)

#Generation 650
Trait3250_650<- read.delim("output_pi_Trait3250_G650.sites.pi")
Trait3250_650<- as.data.frame(Trait3250_650)
Trait3250_650$dominance<- c(0.25)
Trait3250_650$founders<- c(250)
Trait3250_650$generation<- c(650)

#Generation 700
Trait3250_700<- read.delim("output_pi_Trait3250_G700.sites.pi")
Trait3250_700<- as.data.frame(Trait3250_700)
Trait3250_700$dominance<- c(0.25)
Trait3250_700$founders<- c(250)
Trait3250_700$generation<- c(700)


#Generation 750
Trait3250_750<- read.delim("output_pi_Trait3250_G750.sites.pi")
Trait3250_750<- as.data.frame(Trait3250_750)
Trait3250_750$dominance<- c(0.25)
Trait3250_750$founders<- c(250)
Trait3250_750$generation<- c(750)

#Generation 800
Trait3250_800<- read.delim("output_pi_Trait3250_G800.sites.pi")
Trait3250_800<- as.data.frame(Trait3250_800)
Trait3250_800$dominance<- c(0.25)
Trait3250_800$founders<- c(250)
Trait3250_800$generation<- c(800)


#Generation 850
Trait3250_850<- read.delim("output_pi_Trait3250_G850.sites.pi")
Trait3250_850<- as.data.frame(Trait3250_850)
Trait3250_850$dominance<- c(0.25)
Trait3250_850$founders<- c(250)
Trait3250_850$generation<- c(850)


#Generation 900
Trait3250_900<- read.delim("output_pi_Trait3250_G900.sites.pi")
Trait3250_900<- as.data.frame(Trait3250_900)
Trait3250_900$dominance<- c(0.25)
Trait3250_900$founders<- c(250)
Trait3250_900$generation<- c(900)


#Generation 950
Trait3250_950<- read.delim("output_pi_Trait3250_G950.sites.pi")
Trait3250_950<- as.data.frame(Trait3250_950)
Trait3250_950$dominance<- c(0.25)
Trait3250_950$founders<- c(250)
Trait3250_950$generation<- c(950)


#Generation 1000
Trait3250_1000<- read.delim("output_pi_Trait3250_G1000.sites.pi")
Trait3250_1000<- as.data.frame(Trait3250_1000)
Trait3250_1000$dominance<- c(0.25)
Trait3250_1000$founders<- c(250)
Trait3250_1000$generation<- c(1000)


## Combine all generations 
## h = 0.25, founders = 250 

h025f250<- rbind(Trait3250_2, Trait3250_50, Trait3250_100, Trait3250_150, Trait3250_200, Trait3250_250,
                 Trait3250_300, Trait3250_350, Trait3250_400, Trait3250_450, Trait3250_501,
                 Trait3250_550, Trait3250_600, Trait3250_650, Trait3250_700, Trait3250_750,
                 Trait3250_800, Trait3250_850, Trait3250_900, Trait3250_950, Trait3250_1000)


#Trait 3 - h=0.25
## 300 founders

## Generation 2
Trait3300_2<- read.delim("output_pi_Trait3300_G2.sites.pi")
Trait3300_2<- as.data.frame(Trait3300_2)
Trait3300_2$dominance<- c(0.25)
Trait3300_2$founders<- c(300)
Trait3300_2$generation<- c(2)

#Generation 50
Trait3300_50<- read.delim("output_pi_Trait3300_G50.sites.pi")
Trait3300_50<- as.data.frame(Trait3300_50)
Trait3300_50$dominance<- c(0.25)
Trait3300_50$founders<- c(300)
Trait3300_50$generation<- c(50)

#Generation 100 
Trait3300_100<- read.delim("output_pi_Trait3300_G100.sites.pi")
Trait3300_100<- as.data.frame(Trait3300_100)
Trait3300_100$dominance<- c(0.25)
Trait3300_100$founders<- c(300)
Trait3300_100$generation<- c(100)

#Generation 150 
Trait3300_150<- read.delim("output_pi_Trait3300_G150.sites.pi")
Trait3300_150<- as.data.frame(Trait3300_150)
Trait3300_150$dominance<- c(0.25)
Trait3300_150$founders<- c(300)
Trait3300_150$generation<- c(150)

#Generation 200
Trait3300_200<- read.delim("output_pi_Trait3300_G200.sites.pi")
Trait3300_200<- as.data.frame(Trait3300_200)
Trait3300_200$dominance<- c(0.25)
Trait3300_200$founders<- c(300)
Trait3300_200$generation<- c(200)

#Generation 250
Trait3300_250<- read.delim("output_pi_Trait3300_G250.sites.pi")
Trait3300_250<- as.data.frame(Trait3300_250)
Trait3300_250$dominance<- c(0.25)
Trait3300_250$founders<- c(300)
Trait3300_250$generation<- c(250)

#Generation 300
Trait3300_300<- read.delim("output_pi_Trait3300_G300.sites.pi")
Trait3300_300<- as.data.frame(Trait3300_300)
Trait3300_300$dominance<- c(0.25)
Trait3300_300$founders<- c(300)
Trait3300_300$generation<- c(300)


#Generation 350
Trait3300_350<- read.delim("output_pi_Trait3300_G350.sites.pi")
Trait3300_350<- as.data.frame(Trait3300_350)
Trait3300_350$dominance<- c(0.25)
Trait3300_350$founders<- c(300)
Trait3300_350$generation<- c(350)


#Generation 400
Trait3300_400<- read.delim("output_pi_Trait3300_G400.sites.pi")
Trait3300_400<- as.data.frame(Trait3300_400)
Trait3300_400$dominance<- c(0.25)
Trait3300_400$founders<- c(300)
Trait3300_400$generation<- c(400)

#Generation 450
Trait3300_450<- read.delim("output_pi_Trait3300_G450.sites.pi")
Trait3300_450<- as.data.frame(Trait3300_450)
Trait3300_450$dominance<- c(0.25)
Trait3300_450$founders<- c(300)
Trait3300_450$generation<- c(450)

#Generation 501
Trait3300_501<- read.delim("output_pi_Trait3300_G501.sites.pi")
Trait3300_501<- as.data.frame(Trait3300_501)
Trait3300_501$dominance<- c(0.25)
Trait3300_501$founders<- c(300)
Trait3300_501$generation<- c(501)


#Generation 550
Trait3300_550<- read.delim("output_pi_Trait3300_G550.sites.pi")
Trait3300_550<- as.data.frame(Trait3300_550)
Trait3300_550$dominance<- c(0.25)
Trait3300_550$founders<- c(300)
Trait3300_550$generation<- c(550)

#Generation 600
Trait3300_600<- read.delim("output_pi_Trait3300_G600.sites.pi")
Trait3300_600<- as.data.frame(Trait3300_600)
Trait3300_600$dominance<- c(0.25)
Trait3300_600$founders<- c(300)
Trait3300_600$generation<- c(600)

#Generation 650
Trait3300_650<- read.delim("output_pi_Trait3300_G650.sites.pi")
Trait3300_650<- as.data.frame(Trait3300_650)
Trait3300_650$dominance<- c(0.25)
Trait3300_650$founders<- c(300)
Trait3300_650$generation<- c(650)

#Generation 700
Trait3300_700<- read.delim("output_pi_Trait3300_G700.sites.pi")
Trait3300_700<- as.data.frame(Trait3300_700)
Trait3300_700$dominance<- c(0.25)
Trait3300_700$founders<- c(300)
Trait3300_700$generation<- c(700)


#Generation 750
Trait3300_750<- read.delim("output_pi_Trait3300_G750.sites.pi")
Trait3300_750<- as.data.frame(Trait3300_750)
Trait3300_750$dominance<- c(0.25)
Trait3300_750$founders<- c(300)
Trait3300_750$generation<- c(750)

#Generation 800
Trait3300_800<- read.delim("output_pi_Trait3300_G800.sites.pi")
Trait3300_800<- as.data.frame(Trait3300_800)
Trait3300_800$dominance<- c(0.25)
Trait3300_800$founders<- c(300)
Trait3300_800$generation<- c(800)


#Generation 850
Trait3300_850<- read.delim("output_pi_Trait3300_G850.sites.pi")
Trait3300_850<- as.data.frame(Trait3300_850)
Trait3300_850$dominance<- c(0.25)
Trait3300_850$founders<- c(300)
Trait3300_850$generation<- c(850)


#Generation 900
Trait3300_900<- read.delim("output_pi_Trait3300_G900.sites.pi")
Trait3300_900<- as.data.frame(Trait3300_900)
Trait3300_900$dominance<- c(0.25)
Trait3300_900$founders<- c(300)
Trait3300_900$generation<- c(900)


#Generation 950
Trait3300_950<- read.delim("output_pi_Trait3300_G950.sites.pi")
Trait3300_950<- as.data.frame(Trait3300_950)
Trait3300_950$dominance<- c(0.25)
Trait3300_950$founders<- c(300)
Trait3300_950$generation<- c(950)


#Generation 1000
Trait3300_1000<- read.delim("output_pi_Trait3300_G1000.sites.pi")
Trait3300_1000<- as.data.frame(Trait3300_1000)
Trait3300_1000$dominance<- c(0.25)
Trait3300_1000$founders<- c(300)
Trait3300_1000$generation<- c(1000)


## Combine all generations 
## h = 0.25, founders = 300 

h025f300<- rbind(Trait3300_2, Trait3300_50, Trait3300_100, Trait3300_150, Trait3300_200, Trait3300_250,
                 Trait3300_300, Trait3300_350, Trait3300_400, Trait3300_450, Trait3300_501,
                 Trait3300_550, Trait3300_600, Trait3300_650, Trait3300_700, Trait3300_750,
                 Trait3300_800, Trait3300_850, Trait3300_900, Trait3300_950, Trait3300_1000)



###### Trait 4 ####################################################################################################################

## h = 0.375 #################################################################


#Trait 4 - h=0.375
## 2 founders

## Generation 2
Trait4_2<- read.delim("output_pi_Trait4_G2.sites.pi")
Trait4_2<- as.data.frame(Trait4_2)
Trait4_2$dominance<- c(0.375)
Trait4_2$founders<- c(2)
Trait4_2$generation<- c(2)

#Generation 50
Trait4_50<- read.delim("output_pi_Trait4_G50.sites.pi")
Trait4_50<- as.data.frame(Trait4_50)
Trait4_50$dominance<- c(0.375)
Trait4_50$founders<- c(2)
Trait4_50$generation<- c(50)

#Generation 100 
Trait4_100<- read.delim("output_pi_Trait4_G100.sites.pi")
Trait4_100<- as.data.frame(Trait4_100)
Trait4_100$dominance<- c(0.375)
Trait4_100$founders<- c(2)
Trait4_100$generation<- c(100)

#Generation 150 
Trait4_150<- read.delim("output_pi_Trait4_G150.sites.pi")
Trait4_150<- as.data.frame(Trait4_150)
Trait4_150$dominance<- c(0.375)
Trait4_150$founders<- c(2)
Trait4_150$generation<- c(150)

#Generation 200
Trait4_200<- read.delim("output_pi_Trait4_G200.sites.pi")
Trait4_200<- as.data.frame(Trait4_200)
Trait4_200$dominance<- c(0.375)
Trait4_200$founders<- c(2)
Trait4_200$generation<- c(200)

#Generation 250
Trait4_250<- read.delim("output_pi_Trait4_G250.sites.pi")
Trait4_250<- as.data.frame(Trait4_250)
Trait4_250$dominance<- c(0.375)
Trait4_250$founders<- c(2)
Trait4_250$generation<- c(250)

#Generation 300
Trait4_300<- read.delim("output_pi_Trait4_G300.sites.pi")
Trait4_300<- as.data.frame(Trait4_300)
Trait4_300$dominance<- c(0.375)
Trait4_300$founders<- c(2)
Trait4_300$generation<- c(300)


#Generation 350
Trait4_350<- read.delim("output_pi_Trait4_G350.sites.pi")
Trait4_350<- as.data.frame(Trait4_350)
Trait4_350$dominance<- c(0.375)
Trait4_350$founders<- c(2)
Trait4_350$generation<- c(350)


#Generation 400
Trait4_400<- read.delim("output_pi_Trait4_G400.sites.pi")
Trait4_400<- as.data.frame(Trait4_400)
Trait4_400$dominance<- c(0.375)
Trait4_400$founders<- c(2)
Trait4_400$generation<- c(400)

#Generation 450
Trait4_450<- read.delim("output_pi_Trait4_G450.sites.pi")
Trait4_450<- as.data.frame(Trait4_450)
Trait4_450$dominance<- c(0.375)
Trait4_450$founders<- c(2)
Trait4_450$generation<- c(450)

#Generation 501
Trait4_501<- read.delim("output_pi_Trait4_G501.sites.pi")
Trait4_501<- as.data.frame(Trait4_501)
Trait4_501$dominance<- c(0.375)
Trait4_501$founders<- c(2)
Trait4_501$generation<- c(501)


#Generation 550
Trait4_550<- read.delim("output_pi_Trait4_G550.sites.pi")
Trait4_550<- as.data.frame(Trait4_550)
Trait4_550$dominance<- c(0.375)
Trait4_550$founders<- c(2)
Trait4_550$generation<- c(550)

#Generation 600
Trait4_600<- read.delim("output_pi_Trait4_G600.sites.pi")
Trait4_600<- as.data.frame(Trait4_600)
Trait4_600$dominance<- c(0.375)
Trait4_600$founders<- c(2)
Trait4_600$generation<- c(600)

#Generation 650
Trait4_650<- read.delim("output_pi_Trait4_G650.sites.pi")
Trait4_650<- as.data.frame(Trait4_650)
Trait4_650$dominance<- c(0.375)
Trait4_650$founders<- c(2)
Trait4_650$generation<- c(650)

#Generation 700
Trait4_700<- read.delim("output_pi_Trait4_G700.sites.pi")
Trait4_700<- as.data.frame(Trait4_700)
Trait4_700$dominance<- c(0.375)
Trait4_700$founders<- c(2)
Trait4_700$generation<- c(700)


#Generation 750
Trait4_750<- read.delim("output_pi_Trait4_G750.sites.pi")
Trait4_750<- as.data.frame(Trait4_750)
Trait4_750$dominance<- c(0.375)
Trait4_750$founders<- c(2)
Trait4_750$generation<- c(750)

#Generation 800
Trait4_800<- read.delim("output_pi_Trait4_G800.sites.pi")
Trait4_800<- as.data.frame(Trait4_800)
Trait4_800$dominance<- c(0.375)
Trait4_800$founders<- c(2)
Trait4_800$generation<- c(800)


#Generation 850
Trait4_850<- read.delim("output_pi_Trait4_G850.sites.pi")
Trait4_850<- as.data.frame(Trait4_850)
Trait4_850$dominance<- c(0.375)
Trait4_850$founders<- c(2)
Trait4_850$generation<- c(850)


#Generation 900
Trait4_900<- read.delim("output_pi_Trait4_G900.sites.pi")
Trait4_900<- as.data.frame(Trait4_900)
Trait4_900$dominance<- c(0.375)
Trait4_900$founders<- c(2)
Trait4_900$generation<- c(900)


#Generation 950
Trait4_950<- read.delim("output_pi_Trait4_G950.sites.pi")
Trait4_950<- as.data.frame(Trait4_950)
Trait4_950$dominance<- c(0.375)
Trait4_950$founders<- c(2)
Trait4_950$generation<- c(950)


#Generation 1000
Trait4_1000<- read.delim("output_pi_Trait4_G1000.sites.pi")
Trait4_1000<- as.data.frame(Trait4_1000)
Trait4_1000$dominance<- c(0.375)
Trait4_1000$founders<- c(2)
Trait4_1000$generation<- c(1000)


## Combine all generations 
## h = 0.375, founders = 2 

h0375f2<- rbind(Trait4_2, Trait4_50, Trait4_100, Trait4_150, Trait4_200, Trait4_250,
                Trait4_300, Trait4_350, Trait4_400, Trait4_450, Trait4_501,
                Trait4_550, Trait4_600, Trait4_650, Trait4_700, Trait4_750,
                Trait4_800, Trait4_850, Trait4_900, Trait4_950, Trait4_1000)


#Trait 4 - h=0.375
## 20 founders

## Generation 2
Trait420_2<- read.delim("output_pi_Trait420_G2.sites.pi")
Trait420_2<- as.data.frame(Trait420_2)
Trait420_2$dominance<- c(0.375)
Trait420_2$founders<- c(20)
Trait420_2$generation<- c(2)

#Generation 50
Trait420_50<- read.delim("output_pi_Trait420_G50.sites.pi")
Trait420_50<- as.data.frame(Trait420_50)
Trait420_50$dominance<- c(0.375)
Trait420_50$founders<- c(20)
Trait420_50$generation<- c(50)

#Generation 100 
Trait420_100<- read.delim("output_pi_Trait420_G100.sites.pi")
Trait420_100<- as.data.frame(Trait420_100)
Trait420_100$dominance<- c(0.375)
Trait420_100$founders<- c(20)
Trait420_100$generation<- c(100)

#Generation 150 
Trait420_150<- read.delim("output_pi_Trait420_G150.sites.pi")
Trait420_150<- as.data.frame(Trait420_150)
Trait420_150$dominance<- c(0.375)
Trait420_150$founders<- c(20)
Trait420_150$generation<- c(150)

#Generation 200
Trait420_200<- read.delim("output_pi_Trait420_G200.sites.pi")
Trait420_200<- as.data.frame(Trait420_200)
Trait420_200$dominance<- c(0.375)
Trait420_200$founders<- c(20)
Trait420_200$generation<- c(200)

#Generation 250
Trait420_250<- read.delim("output_pi_Trait420_G250.sites.pi")
Trait420_250<- as.data.frame(Trait420_250)
Trait420_250$dominance<- c(0.375)
Trait420_250$founders<- c(20)
Trait420_250$generation<- c(250)

#Generation 300
Trait420_300<- read.delim("output_pi_Trait420_G300.sites.pi")
Trait420_300<- as.data.frame(Trait420_300)
Trait420_300$dominance<- c(0.375)
Trait420_300$founders<- c(20)
Trait420_300$generation<- c(300)


#Generation 350
Trait420_350<- read.delim("output_pi_Trait420_G350.sites.pi")
Trait420_350<- as.data.frame(Trait420_350)
Trait420_350$dominance<- c(0.375)
Trait420_350$founders<- c(20)
Trait420_350$generation<- c(350)


#Generation 400
Trait420_400<- read.delim("output_pi_Trait420_G400.sites.pi")
Trait420_400<- as.data.frame(Trait420_400)
Trait420_400$dominance<- c(0.375)
Trait420_400$founders<- c(20)
Trait420_400$generation<- c(400)

#Generation 450
Trait420_450<- read.delim("output_pi_Trait420_G450.sites.pi")
Trait420_450<- as.data.frame(Trait420_450)
Trait420_450$dominance<- c(0.375)
Trait420_450$founders<- c(20)
Trait420_450$generation<- c(450)

#Generation 501
Trait420_501<- read.delim("output_pi_Trait420_G501.sites.pi")
Trait420_501<- as.data.frame(Trait420_501)
Trait420_501$dominance<- c(0.375)
Trait420_501$founders<- c(20)
Trait420_501$generation<- c(501)


#Generation 550
Trait420_550<- read.delim("output_pi_Trait420_G550.sites.pi")
Trait420_550<- as.data.frame(Trait420_550)
Trait420_550$dominance<- c(0.375)
Trait420_550$founders<- c(20)
Trait420_550$generation<- c(550)

#Generation 600
Trait420_600<- read.delim("output_pi_Trait420_G600.sites.pi")
Trait420_600<- as.data.frame(Trait420_600)
Trait420_600$dominance<- c(0.375)
Trait420_600$founders<- c(20)
Trait420_600$generation<- c(600)

#Generation 650
Trait420_650<- read.delim("output_pi_Trait420_G650.sites.pi")
Trait420_650<- as.data.frame(Trait420_650)
Trait420_650$dominance<- c(0.375)
Trait420_650$founders<- c(20)
Trait420_650$generation<- c(650)

#Generation 700
Trait420_700<- read.delim("output_pi_Trait420_G700.sites.pi")
Trait420_700<- as.data.frame(Trait420_700)
Trait420_700$dominance<- c(0.375)
Trait420_700$founders<- c(20)
Trait420_700$generation<- c(700)


#Generation 750
Trait420_750<- read.delim("output_pi_Trait420_G750.sites.pi")
Trait420_750<- as.data.frame(Trait420_750)
Trait420_750$dominance<- c(0.375)
Trait420_750$founders<- c(20)
Trait420_750$generation<- c(750)

#Generation 800
Trait420_800<- read.delim("output_pi_Trait420_G800.sites.pi")
Trait420_800<- as.data.frame(Trait420_800)
Trait420_800$dominance<- c(0.375)
Trait420_800$founders<- c(20)
Trait420_800$generation<- c(800)


#Generation 850
Trait420_850<- read.delim("output_pi_Trait420_G850.sites.pi")
Trait420_850<- as.data.frame(Trait420_850)
Trait420_850$dominance<- c(0.375)
Trait420_850$founders<- c(20)
Trait420_850$generation<- c(850)


#Generation 900
Trait420_900<- read.delim("output_pi_Trait420_G900.sites.pi")
Trait420_900<- as.data.frame(Trait420_900)
Trait420_900$dominance<- c(0.375)
Trait420_900$founders<- c(20)
Trait420_900$generation<- c(900)


#Generation 950
Trait420_950<- read.delim("output_pi_Trait420_G950.sites.pi")
Trait420_950<- as.data.frame(Trait420_950)
Trait420_950$dominance<- c(0.375)
Trait420_950$founders<- c(20)
Trait420_950$generation<- c(950)


#Generation 1000
Trait420_1000<- read.delim("output_pi_Trait420_G1000.sites.pi")
Trait420_1000<- as.data.frame(Trait420_1000)
Trait420_1000$dominance<- c(0.375)
Trait420_1000$founders<- c(20)
Trait420_1000$generation<- c(1000)


## Combine all generations 
## h = 0.375, founders = 20 

h0375f20<- rbind(Trait420_2, Trait420_50, Trait420_100, Trait420_150, Trait420_200, Trait420_250,
                 Trait420_300, Trait420_350, Trait420_400, Trait420_450, Trait420_501,
                 Trait420_550, Trait420_600, Trait420_650, Trait420_700, Trait420_750,
                 Trait420_800, Trait420_850, Trait420_900, Trait420_950, Trait420_1000)



#Trait 4 - h=0.375
## 50 founders

## Generation 2
Trait450_2<- read.delim("output_pi_Trait450_G2.sites.pi")
Trait450_2<- as.data.frame(Trait450_2)
Trait450_2$dominance<- c(0.375)
Trait450_2$founders<- c(50)
Trait450_2$generation<- c(2)

#Generation 50
Trait450_50<- read.delim("output_pi_Trait450_G50.sites.pi")
Trait450_50<- as.data.frame(Trait450_50)
Trait450_50$dominance<- c(0.375)
Trait450_50$founders<- c(50)
Trait450_50$generation<- c(50)

#Generation 100 
Trait450_100<- read.delim("output_pi_Trait450_G100.sites.pi")
Trait450_100<- as.data.frame(Trait450_100)
Trait450_100$dominance<- c(0.375)
Trait450_100$founders<- c(50)
Trait450_100$generation<- c(100)

#Generation 150 
Trait450_150<- read.delim("output_pi_Trait450_G150.sites.pi")
Trait450_150<- as.data.frame(Trait450_150)
Trait450_150$dominance<- c(0.375)
Trait450_150$founders<- c(50)
Trait450_150$generation<- c(150)

#Generation 200
Trait450_200<- read.delim("output_pi_Trait450_G200.sites.pi")
Trait450_200<- as.data.frame(Trait450_200)
Trait450_200$dominance<- c(0.375)
Trait450_200$founders<- c(50)
Trait450_200$generation<- c(200)

#Generation 250
Trait450_250<- read.delim("output_pi_Trait450_G250.sites.pi")
Trait450_250<- as.data.frame(Trait450_250)
Trait450_250$dominance<- c(0.375)
Trait450_250$founders<- c(50)
Trait450_250$generation<- c(250)

#Generation 300
Trait450_300<- read.delim("output_pi_Trait450_G300.sites.pi")
Trait450_300<- as.data.frame(Trait450_300)
Trait450_300$dominance<- c(0.375)
Trait450_300$founders<- c(50)
Trait450_300$generation<- c(300)


#Generation 350
Trait450_350<- read.delim("output_pi_Trait450_G350.sites.pi")
Trait450_350<- as.data.frame(Trait450_350)
Trait450_350$dominance<- c(0.375)
Trait450_350$founders<- c(50)
Trait450_350$generation<- c(350)


#Generation 400
Trait450_400<- read.delim("output_pi_Trait450_G400.sites.pi")
Trait450_400<- as.data.frame(Trait450_400)
Trait450_400$dominance<- c(0.375)
Trait450_400$founders<- c(50)
Trait450_400$generation<- c(400)

#Generation 450
Trait450_450<- read.delim("output_pi_Trait450_G450.sites.pi")
Trait450_450<- as.data.frame(Trait450_450)
Trait450_450$dominance<- c(0.375)
Trait450_450$founders<- c(50)
Trait450_450$generation<- c(450)

#Generation 501
Trait450_501<- read.delim("output_pi_Trait450_G501.sites.pi")
Trait450_501<- as.data.frame(Trait450_501)
Trait450_501$dominance<- c(0.375)
Trait450_501$founders<- c(50)
Trait450_501$generation<- c(501)


#Generation 550
Trait450_550<- read.delim("output_pi_Trait450_G550.sites.pi")
Trait450_550<- as.data.frame(Trait450_550)
Trait450_550$dominance<- c(0.375)
Trait450_550$founders<- c(50)
Trait450_550$generation<- c(550)

#Generation 600
Trait450_600<- read.delim("output_pi_Trait450_G600.sites.pi")
Trait450_600<- as.data.frame(Trait450_600)
Trait450_600$dominance<- c(0.375)
Trait450_600$founders<- c(50)
Trait450_600$generation<- c(600)

#Generation 650
Trait450_650<- read.delim("output_pi_Trait450_G650.sites.pi")
Trait450_650<- as.data.frame(Trait450_650)
Trait450_650$dominance<- c(0.375)
Trait450_650$founders<- c(50)
Trait450_650$generation<- c(650)

#Generation 700
Trait450_700<- read.delim("output_pi_Trait450_G700.sites.pi")
Trait450_700<- as.data.frame(Trait450_700)
Trait450_700$dominance<- c(0.375)
Trait450_700$founders<- c(50)
Trait450_700$generation<- c(700)


#Generation 750
Trait450_750<- read.delim("output_pi_Trait450_G750.sites.pi")
Trait450_750<- as.data.frame(Trait450_750)
Trait450_750$dominance<- c(0.375)
Trait450_750$founders<- c(50)
Trait450_750$generation<- c(750)

#Generation 800
Trait450_800<- read.delim("output_pi_Trait450_G800.sites.pi")
Trait450_800<- as.data.frame(Trait450_800)
Trait450_800$dominance<- c(0.375)
Trait450_800$founders<- c(50)
Trait450_800$generation<- c(800)


#Generation 850
Trait450_850<- read.delim("output_pi_Trait450_G850.sites.pi")
Trait450_850<- as.data.frame(Trait450_850)
Trait450_850$dominance<- c(0.375)
Trait450_850$founders<- c(50)
Trait450_850$generation<- c(850)


#Generation 900
Trait450_900<- read.delim("output_pi_Trait450_G900.sites.pi")
Trait450_900<- as.data.frame(Trait450_900)
Trait450_900$dominance<- c(0.375)
Trait450_900$founders<- c(50)
Trait450_900$generation<- c(900)


#Generation 950
Trait450_950<- read.delim("output_pi_Trait450_G950.sites.pi")
Trait450_950<- as.data.frame(Trait450_950)
Trait450_950$dominance<- c(0.375)
Trait450_950$founders<- c(50)
Trait450_950$generation<- c(950)


#Generation 1000
Trait450_1000<- read.delim("output_pi_Trait450_G1000.sites.pi")
Trait450_1000<- as.data.frame(Trait450_1000)
Trait450_1000$dominance<- c(0.375)
Trait450_1000$founders<- c(50)
Trait450_1000$generation<- c(1000)


## Combine all generations 
## h = 0.375, founders = 50 

h0375f50<- rbind(Trait450_2, Trait450_50, Trait450_100, Trait450_150, Trait450_200, Trait450_250,
                 Trait450_300, Trait450_350, Trait450_400, Trait450_450, Trait450_501,
                 Trait450_550, Trait450_600, Trait450_650, Trait450_700, Trait450_750,
                 Trait450_800, Trait450_850, Trait450_900, Trait450_950, Trait450_1000)





#Trait 4 - h=0.375
## 100 founders

## Generation 2
Trait4100_2<- read.delim("output_pi_Trait4100_G2.sites.pi")
Trait4100_2<- as.data.frame(Trait4100_2)
Trait4100_2$dominance<- c(0.375)
Trait4100_2$founders<- c(100)
Trait4100_2$generation<- c(2)

#Generation 50
Trait4100_50<- read.delim("output_pi_Trait4100_G50.sites.pi")
Trait4100_50<- as.data.frame(Trait4100_50)
Trait4100_50$dominance<- c(0.375)
Trait4100_50$founders<- c(100)
Trait4100_50$generation<- c(50)

#Generation 100 
Trait4100_100<- read.delim("output_pi_Trait4100_G100.sites.pi")
Trait4100_100<- as.data.frame(Trait4100_100)
Trait4100_100$dominance<- c(0.375)
Trait4100_100$founders<- c(100)
Trait4100_100$generation<- c(100)

#Generation 150 
Trait4100_150<- read.delim("output_pi_Trait4100_G150.sites.pi")
Trait4100_150<- as.data.frame(Trait4100_150)
Trait4100_150$dominance<- c(0.375)
Trait4100_150$founders<- c(100)
Trait4100_150$generation<- c(150)

#Generation 200
Trait4100_200<- read.delim("output_pi_Trait4100_G200.sites.pi")
Trait4100_200<- as.data.frame(Trait4100_200)
Trait4100_200$dominance<- c(0.375)
Trait4100_200$founders<- c(100)
Trait4100_200$generation<- c(200)

#Generation 250
Trait4100_250<- read.delim("output_pi_Trait4100_G250.sites.pi")
Trait4100_250<- as.data.frame(Trait4100_250)
Trait4100_250$dominance<- c(0.375)
Trait4100_250$founders<- c(100)
Trait4100_250$generation<- c(250)

#Generation 300
Trait4100_300<- read.delim("output_pi_Trait4100_G300.sites.pi")
Trait4100_300<- as.data.frame(Trait4100_300)
Trait4100_300$dominance<- c(0.375)
Trait4100_300$founders<- c(100)
Trait4100_300$generation<- c(300)


#Generation 350
Trait4100_350<- read.delim("output_pi_Trait4100_G350.sites.pi")
Trait4100_350<- as.data.frame(Trait4100_350)
Trait4100_350$dominance<- c(0.375)
Trait4100_350$founders<- c(100)
Trait4100_350$generation<- c(350)


#Generation 400
Trait4100_400<- read.delim("output_pi_Trait4100_G400.sites.pi")
Trait4100_400<- as.data.frame(Trait4100_400)
Trait4100_400$dominance<- c(0.375)
Trait4100_400$founders<- c(100)
Trait4100_400$generation<- c(400)

#Generation 450
Trait4100_450<- read.delim("output_pi_Trait4100_G450.sites.pi")
Trait4100_450<- as.data.frame(Trait4100_450)
Trait4100_450$dominance<- c(0.375)
Trait4100_450$founders<- c(100)
Trait4100_450$generation<- c(450)

#Generation 501
Trait4100_501<- read.delim("output_pi_Trait4100_G501.sites.pi")
Trait4100_501<- as.data.frame(Trait4100_501)
Trait4100_501$dominance<- c(0.375)
Trait4100_501$founders<- c(100)
Trait4100_501$generation<- c(501)


#Generation 550
Trait4100_550<- read.delim("output_pi_Trait4100_G550.sites.pi")
Trait4100_550<- as.data.frame(Trait4100_550)
Trait4100_550$dominance<- c(0.375)
Trait4100_550$founders<- c(100)
Trait4100_550$generation<- c(550)

#Generation 600
Trait4100_600<- read.delim("output_pi_Trait4100_G600.sites.pi")
Trait4100_600<- as.data.frame(Trait4100_600)
Trait4100_600$dominance<- c(0.375)
Trait4100_600$founders<- c(100)
Trait4100_600$generation<- c(600)

#Generation 650
Trait4100_650<- read.delim("output_pi_Trait4100_G650.sites.pi")
Trait4100_650<- as.data.frame(Trait4100_650)
Trait4100_650$dominance<- c(0.375)
Trait4100_650$founders<- c(100)
Trait4100_650$generation<- c(650)

#Generation 700
Trait4100_700<- read.delim("output_pi_Trait4100_G700.sites.pi")
Trait4100_700<- as.data.frame(Trait4100_700)
Trait4100_700$dominance<- c(0.375)
Trait4100_700$founders<- c(100)
Trait4100_700$generation<- c(700)


#Generation 750
Trait4100_750<- read.delim("output_pi_Trait4100_G750.sites.pi")
Trait4100_750<- as.data.frame(Trait4100_750)
Trait4100_750$dominance<- c(0.375)
Trait4100_750$founders<- c(100)
Trait4100_750$generation<- c(750)

#Generation 800
Trait4100_800<- read.delim("output_pi_Trait4100_G800.sites.pi")
Trait4100_800<- as.data.frame(Trait4100_800)
Trait4100_800$dominance<- c(0.375)
Trait4100_800$founders<- c(100)
Trait4100_800$generation<- c(800)


#Generation 850
Trait4100_850<- read.delim("output_pi_Trait4100_G850.sites.pi")
Trait4100_850<- as.data.frame(Trait4100_850)
Trait4100_850$dominance<- c(0.375)
Trait4100_850$founders<- c(100)
Trait4100_850$generation<- c(850)


#Generation 900
Trait4100_900<- read.delim("output_pi_Trait4100_G900.sites.pi")
Trait4100_900<- as.data.frame(Trait4100_900)
Trait4100_900$dominance<- c(0.375)
Trait4100_900$founders<- c(100)
Trait4100_900$generation<- c(900)


#Generation 950
Trait4100_950<- read.delim("output_pi_Trait4100_G950.sites.pi")
Trait4100_950<- as.data.frame(Trait4100_950)
Trait4100_950$dominance<- c(0.375)
Trait4100_950$founders<- c(100)
Trait4100_950$generation<- c(950)


#Generation 1000
Trait4100_1000<- read.delim("output_pi_Trait4100_G1000.sites.pi")
Trait4100_1000<- as.data.frame(Trait4100_1000)
Trait4100_1000$dominance<- c(0.375)
Trait4100_1000$founders<- c(100)
Trait4100_1000$generation<- c(1000)


## Combine all generations 
## h = 0.375, founders = 100 

h0375f100<- rbind(Trait4100_2, Trait4100_50, Trait4100_100, Trait4100_150, Trait4100_200, Trait4100_250,
                  Trait4100_300, Trait4100_350, Trait4100_400, Trait4100_450, Trait4100_501,
                  Trait4100_550, Trait4100_600, Trait4100_650, Trait4100_700, Trait4100_750,
                  Trait4100_800, Trait4100_850, Trait4100_900, Trait4100_950, Trait4100_1000)




#Trait 4 - h=0.375
## 150 founders

## Generation 2
Trait4150_2<- read.delim("output_pi_Trait4150_G2.sites.pi")
Trait4150_2<- as.data.frame(Trait4150_2)
Trait4150_2$dominance<- c(0.375)
Trait4150_2$founders<- c(150)
Trait4150_2$generation<- c(2)

#Generation 50
Trait4150_50<- read.delim("output_pi_Trait4150_G50.sites.pi")
Trait4150_50<- as.data.frame(Trait4150_50)
Trait4150_50$dominance<- c(0.375)
Trait4150_50$founders<- c(150)
Trait4150_50$generation<- c(50)

#Generation 100 
Trait4150_100<- read.delim("output_pi_Trait4150_G100.sites.pi")
Trait4150_100<- as.data.frame(Trait4150_100)
Trait4150_100$dominance<- c(0.375)
Trait4150_100$founders<- c(150)
Trait4150_100$generation<- c(100)

#Generation 150 
Trait4150_150<- read.delim("output_pi_Trait4150_G150.sites.pi")
Trait4150_150<- as.data.frame(Trait4150_150)
Trait4150_150$dominance<- c(0.375)
Trait4150_150$founders<- c(150)
Trait4150_150$generation<- c(150)

#Generation 200
Trait4150_200<- read.delim("output_pi_Trait4150_G200.sites.pi")
Trait4150_200<- as.data.frame(Trait4150_200)
Trait4150_200$dominance<- c(0.375)
Trait4150_200$founders<- c(150)
Trait4150_200$generation<- c(200)

#Generation 250
Trait4150_250<- read.delim("output_pi_Trait4150_G250.sites.pi")
Trait4150_250<- as.data.frame(Trait4150_250)
Trait4150_250$dominance<- c(0.375)
Trait4150_250$founders<- c(150)
Trait4150_250$generation<- c(250)

#Generation 300
Trait4150_300<- read.delim("output_pi_Trait4150_G300.sites.pi")
Trait4150_300<- as.data.frame(Trait4150_300)
Trait4150_300$dominance<- c(0.375)
Trait4150_300$founders<- c(150)
Trait4150_300$generation<- c(300)


#Generation 350
Trait4150_350<- read.delim("output_pi_Trait4150_G350.sites.pi")
Trait4150_350<- as.data.frame(Trait4150_350)
Trait4150_350$dominance<- c(0.375)
Trait4150_350$founders<- c(150)
Trait4150_350$generation<- c(350)


#Generation 400
Trait4150_400<- read.delim("output_pi_Trait4150_G400.sites.pi")
Trait4150_400<- as.data.frame(Trait4150_400)
Trait4150_400$dominance<- c(0.375)
Trait4150_400$founders<- c(150)
Trait4150_400$generation<- c(400)

#Generation 450
Trait4150_450<- read.delim("output_pi_Trait4150_G450.sites.pi")
Trait4150_450<- as.data.frame(Trait4150_450)
Trait4150_450$dominance<- c(0.375)
Trait4150_450$founders<- c(150)
Trait4150_450$generation<- c(450)

#Generation 501
Trait4150_501<- read.delim("output_pi_Trait4150_G501.sites.pi")
Trait4150_501<- as.data.frame(Trait4150_501)
Trait4150_501$dominance<- c(0.375)
Trait4150_501$founders<- c(150)
Trait4150_501$generation<- c(501)


#Generation 550
Trait4150_550<- read.delim("output_pi_Trait4150_G550.sites.pi")
Trait4150_550<- as.data.frame(Trait4150_550)
Trait4150_550$dominance<- c(0.375)
Trait4150_550$founders<- c(150)
Trait4150_550$generation<- c(550)

#Generation 600
Trait4150_600<- read.delim("output_pi_Trait4150_G600.sites.pi")
Trait4150_600<- as.data.frame(Trait4150_600)
Trait4150_600$dominance<- c(0.375)
Trait4150_600$founders<- c(150)
Trait4150_600$generation<- c(600)

#Generation 650
Trait4150_650<- read.delim("output_pi_Trait4150_G650.sites.pi")
Trait4150_650<- as.data.frame(Trait4150_650)
Trait4150_650$dominance<- c(0.375)
Trait4150_650$founders<- c(150)
Trait4150_650$generation<- c(650)

#Generation 700
Trait4150_700<- read.delim("output_pi_Trait4150_G700.sites.pi")
Trait4150_700<- as.data.frame(Trait4150_700)
Trait4150_700$dominance<- c(0.375)
Trait4150_700$founders<- c(150)
Trait4150_700$generation<- c(700)


#Generation 750
Trait4150_750<- read.delim("output_pi_Trait4150_G750.sites.pi")
Trait4150_750<- as.data.frame(Trait4150_750)
Trait4150_750$dominance<- c(0.375)
Trait4150_750$founders<- c(150)
Trait4150_750$generation<- c(750)

#Generation 800
Trait4150_800<- read.delim("output_pi_Trait4150_G800.sites.pi")
Trait4150_800<- as.data.frame(Trait4150_800)
Trait4150_800$dominance<- c(0.375)
Trait4150_800$founders<- c(150)
Trait4150_800$generation<- c(800)


#Generation 850
Trait4150_850<- read.delim("output_pi_Trait4150_G850.sites.pi")
Trait4150_850<- as.data.frame(Trait4150_850)
Trait4150_850$dominance<- c(0.375)
Trait4150_850$founders<- c(150)
Trait4150_850$generation<- c(850)


#Generation 900
Trait4150_900<- read.delim("output_pi_Trait4150_G900.sites.pi")
Trait4150_900<- as.data.frame(Trait4150_900)
Trait4150_900$dominance<- c(0.375)
Trait4150_900$founders<- c(150)
Trait4150_900$generation<- c(900)


#Generation 950
Trait4150_950<- read.delim("output_pi_Trait4150_G950.sites.pi")
Trait4150_950<- as.data.frame(Trait4150_950)
Trait4150_950$dominance<- c(0.375)
Trait4150_950$founders<- c(150)
Trait4150_950$generation<- c(950)


#Generation 1000
Trait4150_1000<- read.delim("output_pi_Trait4150_G1000.sites.pi")
Trait4150_1000<- as.data.frame(Trait4150_1000)
Trait4150_1000$dominance<- c(0.375)
Trait4150_1000$founders<- c(150)
Trait4150_1000$generation<- c(1000)


## Combine all generations 
## h = 0.375, founders = 150 

h0375f150<- rbind(Trait4150_2, Trait4150_50, Trait4150_100, Trait4150_150, Trait4150_200, Trait4150_250,
                  Trait4150_300, Trait4150_350, Trait4150_400, Trait4150_450, Trait4150_501,
                  Trait4150_550, Trait4150_600, Trait4150_650, Trait4150_700, Trait4150_750,
                  Trait4150_800, Trait4150_850, Trait4150_900, Trait4150_950, Trait4150_1000)


#Trait 4 - h=0.375
## 200 founders

## Generation 2
Trait4200_2<- read.delim("output_pi_Trait4200_G2.sites.pi")
Trait4200_2<- as.data.frame(Trait4200_2)
Trait4200_2$dominance<- c(0.375)
Trait4200_2$founders<- c(200)
Trait4200_2$generation<- c(2)

#Generation 50
Trait4200_50<- read.delim("output_pi_Trait4200_G50.sites.pi")
Trait4200_50<- as.data.frame(Trait4200_50)
Trait4200_50$dominance<- c(0.375)
Trait4200_50$founders<- c(200)
Trait4200_50$generation<- c(50)

#Generation 100 
Trait4200_100<- read.delim("output_pi_Trait4200_G100.sites.pi")
Trait4200_100<- as.data.frame(Trait4200_100)
Trait4200_100$dominance<- c(0.375)
Trait4200_100$founders<- c(200)
Trait4200_100$generation<- c(100)

#Generation 150 
Trait4200_150<- read.delim("output_pi_Trait4200_G150.sites.pi")
Trait4200_150<- as.data.frame(Trait4200_150)
Trait4200_150$dominance<- c(0.375)
Trait4200_150$founders<- c(200)
Trait4200_150$generation<- c(150)

#Generation 200
Trait4200_200<- read.delim("output_pi_Trait4200_G200.sites.pi")
Trait4200_200<- as.data.frame(Trait4200_200)
Trait4200_200$dominance<- c(0.375)
Trait4200_200$founders<- c(200)
Trait4200_200$generation<- c(200)

#Generation 250
Trait4200_250<- read.delim("output_pi_Trait4200_G250.sites.pi")
Trait4200_250<- as.data.frame(Trait4200_250)
Trait4200_250$dominance<- c(0.375)
Trait4200_250$founders<- c(200)
Trait4200_250$generation<- c(250)

#Generation 300
Trait4200_300<- read.delim("output_pi_Trait4200_G300.sites.pi")
Trait4200_300<- as.data.frame(Trait4200_300)
Trait4200_300$dominance<- c(0.375)
Trait4200_300$founders<- c(200)
Trait4200_300$generation<- c(300)


#Generation 350
Trait4200_350<- read.delim("output_pi_Trait4200_G350.sites.pi")
Trait4200_350<- as.data.frame(Trait4200_350)
Trait4200_350$dominance<- c(0.375)
Trait4200_350$founders<- c(200)
Trait4200_350$generation<- c(350)


#Generation 400
Trait4200_400<- read.delim("output_pi_Trait4200_G400.sites.pi")
Trait4200_400<- as.data.frame(Trait4200_400)
Trait4200_400$dominance<- c(0.375)
Trait4200_400$founders<- c(200)
Trait4200_400$generation<- c(400)

#Generation 450
Trait4200_450<- read.delim("output_pi_Trait4200_G450.sites.pi")
Trait4200_450<- as.data.frame(Trait4200_450)
Trait4200_450$dominance<- c(0.375)
Trait4200_450$founders<- c(200)
Trait4200_450$generation<- c(450)

#Generation 501
Trait4200_501<- read.delim("output_pi_Trait4200_G501.sites.pi")
Trait4200_501<- as.data.frame(Trait4200_501)
Trait4200_501$dominance<- c(0.375)
Trait4200_501$founders<- c(200)
Trait4200_501$generation<- c(501)


#Generation 550
Trait4200_550<- read.delim("output_pi_Trait4200_G550.sites.pi")
Trait4200_550<- as.data.frame(Trait4200_550)
Trait4200_550$dominance<- c(0.375)
Trait4200_550$founders<- c(200)
Trait4200_550$generation<- c(550)

#Generation 600
Trait4200_600<- read.delim("output_pi_Trait4200_G600.sites.pi")
Trait4200_600<- as.data.frame(Trait4200_600)
Trait4200_600$dominance<- c(0.375)
Trait4200_600$founders<- c(200)
Trait4200_600$generation<- c(600)

#Generation 650
Trait4200_650<- read.delim("output_pi_Trait4200_G650.sites.pi")
Trait4200_650<- as.data.frame(Trait4200_650)
Trait4200_650$dominance<- c(0.375)
Trait4200_650$founders<- c(200)
Trait4200_650$generation<- c(650)

#Generation 700
Trait4200_700<- read.delim("output_pi_Trait4200_G700.sites.pi")
Trait4200_700<- as.data.frame(Trait4200_700)
Trait4200_700$dominance<- c(0.375)
Trait4200_700$founders<- c(200)
Trait4200_700$generation<- c(700)


#Generation 750
Trait4200_750<- read.delim("output_pi_Trait4200_G750.sites.pi")
Trait4200_750<- as.data.frame(Trait4200_750)
Trait4200_750$dominance<- c(0.375)
Trait4200_750$founders<- c(200)
Trait4200_750$generation<- c(750)

#Generation 800
Trait4200_800<- read.delim("output_pi_Trait4200_G800.sites.pi")
Trait4200_800<- as.data.frame(Trait4200_800)
Trait4200_800$dominance<- c(0.375)
Trait4200_800$founders<- c(200)
Trait4200_800$generation<- c(800)


#Generation 850
Trait4200_850<- read.delim("output_pi_Trait4200_G850.sites.pi")
Trait4200_850<- as.data.frame(Trait4200_850)
Trait4200_850$dominance<- c(0.375)
Trait4200_850$founders<- c(200)
Trait4200_850$generation<- c(850)


#Generation 900
Trait4200_900<- read.delim("output_pi_Trait4200_G900.sites.pi")
Trait4200_900<- as.data.frame(Trait4200_900)
Trait4200_900$dominance<- c(0.375)
Trait4200_900$founders<- c(200)
Trait4200_900$generation<- c(900)


#Generation 950
Trait4200_950<- read.delim("output_pi_Trait4200_G950.sites.pi")
Trait4200_950<- as.data.frame(Trait4200_950)
Trait4200_950$dominance<- c(0.375)
Trait4200_950$founders<- c(200)
Trait4200_950$generation<- c(950)


#Generation 1000
Trait4200_1000<- read.delim("output_pi_Trait4200_G1000.sites.pi")
Trait4200_1000<- as.data.frame(Trait4200_1000)
Trait4200_1000$dominance<- c(0.375)
Trait4200_1000$founders<- c(200)
Trait4200_1000$generation<- c(1000)


## Combine all generations 
## h = 0.375, founders = 200 

h0375f200<- rbind(Trait4200_2, Trait4200_50, Trait4200_100, Trait4200_150, Trait4200_200, Trait4200_250,
                  Trait4200_300, Trait4200_350, Trait4200_400, Trait4200_450, Trait4200_501,
                  Trait4200_550, Trait4200_600, Trait4200_650, Trait4200_700, Trait4200_750,
                  Trait4200_800, Trait4200_850, Trait4200_900, Trait4200_950, Trait4200_1000)



#Trait 4 - h=0.375
## 250 founders

## Generation 2
Trait4250_2<- read.delim("output_pi_Trait4250_G2.sites.pi")
Trait4250_2<- as.data.frame(Trait4250_2)
Trait4250_2$dominance<- c(0.375)
Trait4250_2$founders<- c(250)
Trait4250_2$generation<- c(2)

#Generation 50
Trait4250_50<- read.delim("output_pi_Trait4250_G50.sites.pi")
Trait4250_50<- as.data.frame(Trait4250_50)
Trait4250_50$dominance<- c(0.375)
Trait4250_50$founders<- c(250)
Trait4250_50$generation<- c(50)

#Generation 100 
Trait4250_100<- read.delim("output_pi_Trait4250_G100.sites.pi")
Trait4250_100<- as.data.frame(Trait4250_100)
Trait4250_100$dominance<- c(0.375)
Trait4250_100$founders<- c(250)
Trait4250_100$generation<- c(100)

#Generation 150 
Trait4250_150<- read.delim("output_pi_Trait4250_G150.sites.pi")
Trait4250_150<- as.data.frame(Trait4250_150)
Trait4250_150$dominance<- c(0.375)
Trait4250_150$founders<- c(250)
Trait4250_150$generation<- c(150)

#Generation 200
Trait4250_200<- read.delim("output_pi_Trait4250_G200.sites.pi")
Trait4250_200<- as.data.frame(Trait4250_200)
Trait4250_200$dominance<- c(0.375)
Trait4250_200$founders<- c(250)
Trait4250_200$generation<- c(200)

#Generation 250
Trait4250_250<- read.delim("output_pi_Trait4250_G250.sites.pi")
Trait4250_250<- as.data.frame(Trait4250_250)
Trait4250_250$dominance<- c(0.375)
Trait4250_250$founders<- c(250)
Trait4250_250$generation<- c(250)

#Generation 300
Trait4250_300<- read.delim("output_pi_Trait4250_G300.sites.pi")
Trait4250_300<- as.data.frame(Trait4250_300)
Trait4250_300$dominance<- c(0.375)
Trait4250_300$founders<- c(250)
Trait4250_300$generation<- c(300)


#Generation 350
Trait4250_350<- read.delim("output_pi_Trait4250_G350.sites.pi")
Trait4250_350<- as.data.frame(Trait4250_350)
Trait4250_350$dominance<- c(0.375)
Trait4250_350$founders<- c(250)
Trait4250_350$generation<- c(350)


#Generation 400
Trait4250_400<- read.delim("output_pi_Trait4250_G400.sites.pi")
Trait4250_400<- as.data.frame(Trait4250_400)
Trait4250_400$dominance<- c(0.375)
Trait4250_400$founders<- c(250)
Trait4250_400$generation<- c(400)

#Generation 450
Trait4250_450<- read.delim("output_pi_Trait4250_G450.sites.pi")
Trait4250_450<- as.data.frame(Trait4250_450)
Trait4250_450$dominance<- c(0.375)
Trait4250_450$founders<- c(250)
Trait4250_450$generation<- c(450)

#Generation 501
Trait4250_501<- read.delim("output_pi_Trait4250_G501.sites.pi")
Trait4250_501<- as.data.frame(Trait4250_501)
Trait4250_501$dominance<- c(0.375)
Trait4250_501$founders<- c(250)
Trait4250_501$generation<- c(501)


#Generation 550
Trait4250_550<- read.delim("output_pi_Trait4250_G550.sites.pi")
Trait4250_550<- as.data.frame(Trait4250_550)
Trait4250_550$dominance<- c(0.375)
Trait4250_550$founders<- c(250)
Trait4250_550$generation<- c(550)

#Generation 600
Trait4250_600<- read.delim("output_pi_Trait4250_G600.sites.pi")
Trait4250_600<- as.data.frame(Trait4250_600)
Trait4250_600$dominance<- c(0.375)
Trait4250_600$founders<- c(250)
Trait4250_600$generation<- c(600)

#Generation 650
Trait4250_650<- read.delim("output_pi_Trait4250_G650.sites.pi")
Trait4250_650<- as.data.frame(Trait4250_650)
Trait4250_650$dominance<- c(0.375)
Trait4250_650$founders<- c(250)
Trait4250_650$generation<- c(650)

#Generation 700
Trait4250_700<- read.delim("output_pi_Trait4250_G700.sites.pi")
Trait4250_700<- as.data.frame(Trait4250_700)
Trait4250_700$dominance<- c(0.375)
Trait4250_700$founders<- c(250)
Trait4250_700$generation<- c(700)


#Generation 750
Trait4250_750<- read.delim("output_pi_Trait4250_G750.sites.pi")
Trait4250_750<- as.data.frame(Trait4250_750)
Trait4250_750$dominance<- c(0.375)
Trait4250_750$founders<- c(250)
Trait4250_750$generation<- c(750)

#Generation 800
Trait4250_800<- read.delim("output_pi_Trait4250_G800.sites.pi")
Trait4250_800<- as.data.frame(Trait4250_800)
Trait4250_800$dominance<- c(0.375)
Trait4250_800$founders<- c(250)
Trait4250_800$generation<- c(800)


#Generation 850
Trait4250_850<- read.delim("output_pi_Trait4250_G850.sites.pi")
Trait4250_850<- as.data.frame(Trait4250_850)
Trait4250_850$dominance<- c(0.375)
Trait4250_850$founders<- c(250)
Trait4250_850$generation<- c(850)


#Generation 900
Trait4250_900<- read.delim("output_pi_Trait4250_G900.sites.pi")
Trait4250_900<- as.data.frame(Trait4250_900)
Trait4250_900$dominance<- c(0.375)
Trait4250_900$founders<- c(250)
Trait4250_900$generation<- c(900)


#Generation 950
Trait4250_950<- read.delim("output_pi_Trait4250_G950.sites.pi")
Trait4250_950<- as.data.frame(Trait4250_950)
Trait4250_950$dominance<- c(0.375)
Trait4250_950$founders<- c(250)
Trait4250_950$generation<- c(950)


#Generation 1000
Trait4250_1000<- read.delim("output_pi_Trait4250_G1000.sites.pi")
Trait4250_1000<- as.data.frame(Trait4250_1000)
Trait4250_1000$dominance<- c(0.375)
Trait4250_1000$founders<- c(250)
Trait4250_1000$generation<- c(1000)


## Combine all generations 
## h = 0.375, founders = 250 

h0375f250<- rbind(Trait4250_2, Trait4250_50, Trait4250_100, Trait4250_150, Trait4250_200, Trait4250_250,
                  Trait4250_300, Trait4250_350, Trait4250_400, Trait4250_450, Trait4250_501,
                  Trait4250_550, Trait4250_600, Trait4250_650, Trait4250_700, Trait4250_750,
                  Trait4250_800, Trait4250_850, Trait4250_900, Trait4250_950, Trait4250_1000)





#Trait 4 - h=0.375
## 300 founders

## Generation 2
Trait4300_2<- read.delim("output_pi_Trait4300_G2.sites.pi")
Trait4300_2<- as.data.frame(Trait4300_2)
Trait4300_2$dominance<- c(0.375)
Trait4300_2$founders<- c(300)
Trait4300_2$generation<- c(2)

#Generation 50
Trait4300_50<- read.delim("output_pi_Trait4300_G50.sites.pi")
Trait4300_50<- as.data.frame(Trait4300_50)
Trait4300_50$dominance<- c(0.375)
Trait4300_50$founders<- c(300)
Trait4300_50$generation<- c(50)

#Generation 100 
Trait4300_100<- read.delim("output_pi_Trait4300_G100.sites.pi")
Trait4300_100<- as.data.frame(Trait4300_100)
Trait4300_100$dominance<- c(0.375)
Trait4300_100$founders<- c(300)
Trait4300_100$generation<- c(100)

#Generation 150 
Trait4300_150<- read.delim("output_pi_Trait4300_G150.sites.pi")
Trait4300_150<- as.data.frame(Trait4300_150)
Trait4300_150$dominance<- c(0.375)
Trait4300_150$founders<- c(300)
Trait4300_150$generation<- c(150)

#Generation 200
Trait4300_200<- read.delim("output_pi_Trait4300_G200.sites.pi")
Trait4300_200<- as.data.frame(Trait4300_200)
Trait4300_200$dominance<- c(0.375)
Trait4300_200$founders<- c(300)
Trait4300_200$generation<- c(200)

#Generation 250
Trait4300_250<- read.delim("output_pi_Trait4300_G250.sites.pi")
Trait4300_250<- as.data.frame(Trait4300_250)
Trait4300_250$dominance<- c(0.375)
Trait4300_250$founders<- c(300)
Trait4300_250$generation<- c(250)

#Generation 300
Trait4300_300<- read.delim("output_pi_Trait4300_G300.sites.pi")
Trait4300_300<- as.data.frame(Trait4300_300)
Trait4300_300$dominance<- c(0.375)
Trait4300_300$founders<- c(300)
Trait4300_300$generation<- c(300)


#Generation 350
Trait4300_350<- read.delim("output_pi_Trait4300_G350.sites.pi")
Trait4300_350<- as.data.frame(Trait4300_350)
Trait4300_350$dominance<- c(0.375)
Trait4300_350$founders<- c(300)
Trait4300_350$generation<- c(350)


#Generation 400
Trait4300_400<- read.delim("output_pi_Trait4300_G400.sites.pi")
Trait4300_400<- as.data.frame(Trait4300_400)
Trait4300_400$dominance<- c(0.375)
Trait4300_400$founders<- c(300)
Trait4300_400$generation<- c(400)

#Generation 450
Trait4300_450<- read.delim("output_pi_Trait4300_G450.sites.pi")
Trait4300_450<- as.data.frame(Trait4300_450)
Trait4300_450$dominance<- c(0.375)
Trait4300_450$founders<- c(300)
Trait4300_450$generation<- c(450)

#Generation 501
Trait4300_501<- read.delim("output_pi_Trait4300_G501.sites.pi")
Trait4300_501<- as.data.frame(Trait4300_501)
Trait4300_501$dominance<- c(0.375)
Trait4300_501$founders<- c(300)
Trait4300_501$generation<- c(501)


#Generation 550
Trait4300_550<- read.delim("output_pi_Trait4300_G550.sites.pi")
Trait4300_550<- as.data.frame(Trait4300_550)
Trait4300_550$dominance<- c(0.375)
Trait4300_550$founders<- c(300)
Trait4300_550$generation<- c(550)

#Generation 600
Trait4300_600<- read.delim("output_pi_Trait4300_G600.sites.pi")
Trait4300_600<- as.data.frame(Trait4300_600)
Trait4300_600$dominance<- c(0.375)
Trait4300_600$founders<- c(300)
Trait4300_600$generation<- c(600)

#Generation 650
Trait4300_650<- read.delim("output_pi_Trait4300_G650.sites.pi")
Trait4300_650<- as.data.frame(Trait4300_650)
Trait4300_650$dominance<- c(0.375)
Trait4300_650$founders<- c(300)
Trait4300_650$generation<- c(650)

#Generation 700
Trait4300_700<- read.delim("output_pi_Trait4300_G700.sites.pi")
Trait4300_700<- as.data.frame(Trait4300_700)
Trait4300_700$dominance<- c(0.375)
Trait4300_700$founders<- c(300)
Trait4300_700$generation<- c(700)


#Generation 750
Trait4300_750<- read.delim("output_pi_Trait4300_G750.sites.pi")
Trait4300_750<- as.data.frame(Trait4300_750)
Trait4300_750$dominance<- c(0.375)
Trait4300_750$founders<- c(300)
Trait4300_750$generation<- c(750)

#Generation 800
Trait4300_800<- read.delim("output_pi_Trait4300_G800.sites.pi")
Trait4300_800<- as.data.frame(Trait4300_800)
Trait4300_800$dominance<- c(0.375)
Trait4300_800$founders<- c(300)
Trait4300_800$generation<- c(800)


#Generation 850
Trait4300_850<- read.delim("output_pi_Trait4300_G850.sites.pi")
Trait4300_850<- as.data.frame(Trait4300_850)
Trait4300_850$dominance<- c(0.375)
Trait4300_850$founders<- c(300)
Trait4300_850$generation<- c(850)


#Generation 900
Trait4300_900<- read.delim("output_pi_Trait4300_G900.sites.pi")
Trait4300_900<- as.data.frame(Trait4300_900)
Trait4300_900$dominance<- c(0.375)
Trait4300_900$founders<- c(300)
Trait4300_900$generation<- c(900)


#Generation 950
Trait4300_950<- read.delim("output_pi_Trait4300_G950.sites.pi")
Trait4300_950<- as.data.frame(Trait4300_950)
Trait4300_950$dominance<- c(0.375)
Trait4300_950$founders<- c(300)
Trait4300_950$generation<- c(950)


#Generation 1000
Trait4300_1000<- read.delim("output_pi_Trait4300_G1000.sites.pi")
Trait4300_1000<- as.data.frame(Trait4300_1000)
Trait4300_1000$dominance<- c(0.375)
Trait4300_1000$founders<- c(300)
Trait4300_1000$generation<- c(1000)


## Combine all generations 
## h = 0.375, founders = 300 

h0375f300<- rbind(Trait4300_2, Trait4300_50, Trait4300_100, Trait4300_150, Trait4300_200, Trait4300_250,
                  Trait4300_300, Trait4300_350, Trait4300_400, Trait4300_450, Trait4300_501,
                  Trait4300_550, Trait4300_600, Trait4300_650, Trait4300_700, Trait4300_750,
                  Trait4300_800, Trait4300_850, Trait4300_900, Trait4300_950, Trait4300_1000)




##### Trait 5 ###############################################################################################################

### h = 0.5 #############################################################################################################################

#Trait 5 - h=0.5
## 2 founders

## Generation 2
Trait5_2<- read.delim("output_pi_Trait5_G2.sites.pi")
Trait5_2<- as.data.frame(Trait5_2)
Trait5_2$dominance<- c(0.5)
Trait5_2$founders<- c(2)
Trait5_2$generation<- c(2)

#Generation 50
Trait5_50<- read.delim("output_pi_Trait5_G50.sites.pi")
Trait5_50<- as.data.frame(Trait5_50)
Trait5_50$dominance<- c(0.5)
Trait5_50$founders<- c(2)
Trait5_50$generation<- c(50)

#Generation 100 
Trait5_100<- read.delim("output_pi_Trait5_G100.sites.pi")
Trait5_100<- as.data.frame(Trait5_100)
Trait5_100$dominance<- c(0.5)
Trait5_100$founders<- c(2)
Trait5_100$generation<- c(100)

#Generation 150 
Trait5_150<- read.delim("output_pi_Trait5_G150.sites.pi")
Trait5_150<- as.data.frame(Trait5_150)
Trait5_150$dominance<- c(0.5)
Trait5_150$founders<- c(2)
Trait5_150$generation<- c(150)

#Generation 200
Trait5_200<- read.delim("output_pi_Trait5_G200.sites.pi")
Trait5_200<- as.data.frame(Trait5_200)
Trait5_200$dominance<- c(0.5)
Trait5_200$founders<- c(2)
Trait5_200$generation<- c(200)

#Generation 250
Trait5_250<- read.delim("output_pi_Trait5_G250.sites.pi")
Trait5_250<- as.data.frame(Trait5_250)
Trait5_250$dominance<- c(0.5)
Trait5_250$founders<- c(2)
Trait5_250$generation<- c(250)

#Generation 300
Trait5_300<- read.delim("output_pi_Trait5_G300.sites.pi")
Trait5_300<- as.data.frame(Trait5_300)
Trait5_300$dominance<- c(0.5)
Trait5_300$founders<- c(2)
Trait5_300$generation<- c(300)


#Generation 350
Trait5_350<- read.delim("output_pi_Trait5_G350.sites.pi")
Trait5_350<- as.data.frame(Trait5_350)
Trait5_350$dominance<- c(0.5)
Trait5_350$founders<- c(2)
Trait5_350$generation<- c(350)


#Generation 400
Trait5_400<- read.delim("output_pi_Trait5_G400.sites.pi")
Trait5_400<- as.data.frame(Trait5_400)
Trait5_400$dominance<- c(0.5)
Trait5_400$founders<- c(2)
Trait5_400$generation<- c(400)

#Generation 450
Trait5_450<- read.delim("output_pi_Trait5_G450.sites.pi")
Trait5_450<- as.data.frame(Trait5_450)
Trait5_450$dominance<- c(0.5)
Trait5_450$founders<- c(2)
Trait5_450$generation<- c(450)

#Generation 501
Trait5_501<- read.delim("output_pi_Trait5_G501.sites.pi")
Trait5_501<- as.data.frame(Trait5_501)
Trait5_501$dominance<- c(0.5)
Trait5_501$founders<- c(2)
Trait5_501$generation<- c(501)


#Generation 550
Trait5_550<- read.delim("output_pi_Trait5_G550.sites.pi")
Trait5_550<- as.data.frame(Trait5_550)
Trait5_550$dominance<- c(0.5)
Trait5_550$founders<- c(2)
Trait5_550$generation<- c(550)

#Generation 600
Trait5_600<- read.delim("output_pi_Trait5_G600.sites.pi")
Trait5_600<- as.data.frame(Trait5_600)
Trait5_600$dominance<- c(0.5)
Trait5_600$founders<- c(2)
Trait5_600$generation<- c(600)

#Generation 650
Trait5_650<- read.delim("output_pi_Trait5_G650.sites.pi")
Trait5_650<- as.data.frame(Trait5_650)
Trait5_650$dominance<- c(0.5)
Trait5_650$founders<- c(2)
Trait5_650$generation<- c(650)

#Generation 700
Trait5_700<- read.delim("output_pi_Trait5_G700.sites.pi")
Trait5_700<- as.data.frame(Trait5_700)
Trait5_700$dominance<- c(0.5)
Trait5_700$founders<- c(2)
Trait5_700$generation<- c(700)


#Generation 750
Trait5_750<- read.delim("output_pi_Trait5_G750.sites.pi")
Trait5_750<- as.data.frame(Trait5_750)
Trait5_750$dominance<- c(0.5)
Trait5_750$founders<- c(2)
Trait5_750$generation<- c(750)

#Generation 800
Trait5_800<- read.delim("output_pi_Trait5_G800.sites.pi")
Trait5_800<- as.data.frame(Trait5_800)
Trait5_800$dominance<- c(0.5)
Trait5_800$founders<- c(2)
Trait5_800$generation<- c(800)


#Generation 850
Trait5_850<- read.delim("output_pi_Trait5_G850.sites.pi")
Trait5_850<- as.data.frame(Trait5_850)
Trait5_850$dominance<- c(0.5)
Trait5_850$founders<- c(2)
Trait5_850$generation<- c(850)


#Generation 900
Trait5_900<- read.delim("output_pi_Trait5_G900.sites.pi")
Trait5_900<- as.data.frame(Trait5_900)
Trait5_900$dominance<- c(0.5)
Trait5_900$founders<- c(2)
Trait5_900$generation<- c(900)


#Generation 950
Trait5_950<- read.delim("output_pi_Trait5_G950.sites.pi")
Trait5_950<- as.data.frame(Trait5_950)
Trait5_950$dominance<- c(0.5)
Trait5_950$founders<- c(2)
Trait5_950$generation<- c(950)


#Generation 1000
Trait5_1000<- read.delim("output_pi_Trait5_G1000.sites.pi")
Trait5_1000<- as.data.frame(Trait5_1000)
Trait5_1000$dominance<- c(0.5)
Trait5_1000$founders<- c(2)
Trait5_1000$generation<- c(1000)


## Combine all generations 
## h = 0.5, founders = 2 

h05f2<- rbind(Trait5_2, Trait5_50, Trait5_100, Trait5_150, Trait5_200, Trait5_250,
              Trait5_300, Trait5_350, Trait5_400, Trait5_450, Trait5_501,
              Trait5_550, Trait5_600, Trait5_650, Trait5_700, Trait5_750,
              Trait5_800, Trait5_850, Trait5_900, Trait5_950, Trait5_1000)




#Trait 5 - h=0.5
## 20 founders

## Generation 2
Trait520_2<- read.delim("output_pi_Trait520_G2.sites.pi")
Trait520_2<- as.data.frame(Trait520_2)
Trait520_2$dominance<- c(0.5)
Trait520_2$founders<- c(20)
Trait520_2$generation<- c(2)

#Generation 50
Trait520_50<- read.delim("output_pi_Trait520_G50.sites.pi")
Trait520_50<- as.data.frame(Trait520_50)
Trait520_50$dominance<- c(0.5)
Trait520_50$founders<- c(20)
Trait520_50$generation<- c(50)

#Generation 100 
Trait520_100<- read.delim("output_pi_Trait520_G100.sites.pi")
Trait520_100<- as.data.frame(Trait520_100)
Trait520_100$dominance<- c(0.5)
Trait520_100$founders<- c(20)
Trait520_100$generation<- c(100)

#Generation 150 
Trait520_150<- read.delim("output_pi_Trait520_G150.sites.pi")
Trait520_150<- as.data.frame(Trait520_150)
Trait520_150$dominance<- c(0.5)
Trait520_150$founders<- c(20)
Trait520_150$generation<- c(150)

#Generation 200
Trait520_200<- read.delim("output_pi_Trait520_G200.sites.pi")
Trait520_200<- as.data.frame(Trait520_200)
Trait520_200$dominance<- c(0.5)
Trait520_200$founders<- c(20)
Trait520_200$generation<- c(200)

#Generation 250
Trait520_250<- read.delim("output_pi_Trait520_G250.sites.pi")
Trait520_250<- as.data.frame(Trait520_250)
Trait520_250$dominance<- c(0.5)
Trait520_250$founders<- c(20)
Trait520_250$generation<- c(250)

#Generation 300
Trait520_300<- read.delim("output_pi_Trait520_G300.sites.pi")
Trait520_300<- as.data.frame(Trait520_300)
Trait520_300$dominance<- c(0.5)
Trait520_300$founders<- c(20)
Trait520_300$generation<- c(300)


#Generation 350
Trait520_350<- read.delim("output_pi_Trait520_G350.sites.pi")
Trait520_350<- as.data.frame(Trait520_350)
Trait520_350$dominance<- c(0.5)
Trait520_350$founders<- c(20)
Trait520_350$generation<- c(350)


#Generation 400
Trait520_400<- read.delim("output_pi_Trait520_G400.sites.pi")
Trait520_400<- as.data.frame(Trait520_400)
Trait520_400$dominance<- c(0.5)
Trait520_400$founders<- c(20)
Trait520_400$generation<- c(400)

#Generation 450
Trait520_450<- read.delim("output_pi_Trait520_G450.sites.pi")
Trait520_450<- as.data.frame(Trait520_450)
Trait520_450$dominance<- c(0.5)
Trait520_450$founders<- c(20)
Trait520_450$generation<- c(450)

#Generation 501
Trait520_501<- read.delim("output_pi_Trait520_G501.sites.pi")
Trait520_501<- as.data.frame(Trait520_501)
Trait520_501$dominance<- c(0.5)
Trait520_501$founders<- c(20)
Trait520_501$generation<- c(501)


#Generation 550
Trait520_550<- read.delim("output_pi_Trait520_G550.sites.pi")
Trait520_550<- as.data.frame(Trait520_550)
Trait520_550$dominance<- c(0.5)
Trait520_550$founders<- c(20)
Trait520_550$generation<- c(550)

#Generation 600
Trait520_600<- read.delim("output_pi_Trait520_G600.sites.pi")
Trait520_600<- as.data.frame(Trait520_600)
Trait520_600$dominance<- c(0.5)
Trait520_600$founders<- c(20)
Trait520_600$generation<- c(600)

#Generation 650
Trait520_650<- read.delim("output_pi_Trait520_G650.sites.pi")
Trait520_650<- as.data.frame(Trait520_650)
Trait520_650$dominance<- c(0.5)
Trait520_650$founders<- c(20)
Trait520_650$generation<- c(650)

#Generation 700
Trait520_700<- read.delim("output_pi_Trait520_G700.sites.pi")
Trait520_700<- as.data.frame(Trait520_700)
Trait520_700$dominance<- c(0.5)
Trait520_700$founders<- c(20)
Trait520_700$generation<- c(700)


#Generation 750
Trait520_750<- read.delim("output_pi_Trait520_G750.sites.pi")
Trait520_750<- as.data.frame(Trait520_750)
Trait520_750$dominance<- c(0.5)
Trait520_750$founders<- c(20)
Trait520_750$generation<- c(750)

#Generation 800
Trait520_800<- read.delim("output_pi_Trait520_G800.sites.pi")
Trait520_800<- as.data.frame(Trait520_800)
Trait520_800$dominance<- c(0.5)
Trait520_800$founders<- c(20)
Trait520_800$generation<- c(800)


#Generation 850
Trait520_850<- read.delim("output_pi_Trait520_G850.sites.pi")
Trait520_850<- as.data.frame(Trait520_850)
Trait520_850$dominance<- c(0.5)
Trait520_850$founders<- c(20)
Trait520_850$generation<- c(850)


#Generation 900
Trait520_900<- read.delim("output_pi_Trait520_G900.sites.pi")
Trait520_900<- as.data.frame(Trait520_900)
Trait520_900$dominance<- c(0.5)
Trait520_900$founders<- c(20)
Trait520_900$generation<- c(900)


#Generation 950
Trait520_950<- read.delim("output_pi_Trait520_G950.sites.pi")
Trait520_950<- as.data.frame(Trait520_950)
Trait520_950$dominance<- c(0.5)
Trait520_950$founders<- c(20)
Trait520_950$generation<- c(950)


#Generation 1000
Trait520_1000<- read.delim("output_pi_Trait520_G1000.sites.pi")
Trait520_1000<- as.data.frame(Trait520_1000)
Trait520_1000$dominance<- c(0.5)
Trait520_1000$founders<- c(20)
Trait520_1000$generation<- c(1000)


## Combine all generations 
## h = 0.5, founders = 20 

h05f20<- rbind(Trait520_2, Trait520_50, Trait520_100, Trait520_150, Trait520_200, Trait520_250,
               Trait520_300, Trait520_350, Trait520_400, Trait520_450, Trait520_501,
               Trait520_550, Trait520_600, Trait520_650, Trait520_700, Trait520_750,
               Trait520_800, Trait520_850, Trait520_900, Trait520_950, Trait520_1000)




#Trait 5 - h=0.5
## 50 founders

## Generation 2
Trait550_2<- read.delim("output_pi_Trait550_G2.sites.pi")
Trait550_2<- as.data.frame(Trait550_2)
Trait550_2$dominance<- c(0.5)
Trait550_2$founders<- c(50)
Trait550_2$generation<- c(2)

#Generation 50
Trait550_50<- read.delim("output_pi_Trait550_G50.sites.pi")
Trait550_50<- as.data.frame(Trait550_50)
Trait550_50$dominance<- c(0.5)
Trait550_50$founders<- c(50)
Trait550_50$generation<- c(50)

#Generation 100 
Trait550_100<- read.delim("output_pi_Trait550_G100.sites.pi")
Trait550_100<- as.data.frame(Trait550_100)
Trait550_100$dominance<- c(0.5)
Trait550_100$founders<- c(50)
Trait550_100$generation<- c(100)

#Generation 150 
Trait550_150<- read.delim("output_pi_Trait550_G150.sites.pi")
Trait550_150<- as.data.frame(Trait550_150)
Trait550_150$dominance<- c(0.5)
Trait550_150$founders<- c(50)
Trait550_150$generation<- c(150)

#Generation 200
Trait550_200<- read.delim("output_pi_Trait550_G200.sites.pi")
Trait550_200<- as.data.frame(Trait550_200)
Trait550_200$dominance<- c(0.5)
Trait550_200$founders<- c(50)
Trait550_200$generation<- c(200)

#Generation 250
Trait550_250<- read.delim("output_pi_Trait550_G250.sites.pi")
Trait550_250<- as.data.frame(Trait550_250)
Trait550_250$dominance<- c(0.5)
Trait550_250$founders<- c(50)
Trait550_250$generation<- c(250)

#Generation 300
Trait550_300<- read.delim("output_pi_Trait550_G300.sites.pi")
Trait550_300<- as.data.frame(Trait550_300)
Trait550_300$dominance<- c(0.5)
Trait550_300$founders<- c(50)
Trait550_300$generation<- c(300)


#Generation 350
Trait550_350<- read.delim("output_pi_Trait550_G350.sites.pi")
Trait550_350<- as.data.frame(Trait550_350)
Trait550_350$dominance<- c(0.5)
Trait550_350$founders<- c(50)
Trait550_350$generation<- c(350)


#Generation 400
Trait550_400<- read.delim("output_pi_Trait550_G400.sites.pi")
Trait550_400<- as.data.frame(Trait550_400)
Trait550_400$dominance<- c(0.5)
Trait550_400$founders<- c(50)
Trait550_400$generation<- c(400)

#Generation 450
Trait550_450<- read.delim("output_pi_Trait550_G450.sites.pi")
Trait550_450<- as.data.frame(Trait550_450)
Trait550_450$dominance<- c(0.5)
Trait550_450$founders<- c(50)
Trait550_450$generation<- c(450)

#Generation 501
Trait550_501<- read.delim("output_pi_Trait550_G501.sites.pi")
Trait550_501<- as.data.frame(Trait550_501)
Trait550_501$dominance<- c(0.5)
Trait550_501$founders<- c(50)
Trait550_501$generation<- c(501)


#Generation 550
Trait550_550<- read.delim("output_pi_Trait550_G550.sites.pi")
Trait550_550<- as.data.frame(Trait550_550)
Trait550_550$dominance<- c(0.5)
Trait550_550$founders<- c(50)
Trait550_550$generation<- c(550)

#Generation 600
Trait550_600<- read.delim("output_pi_Trait550_G600.sites.pi")
Trait550_600<- as.data.frame(Trait550_600)
Trait550_600$dominance<- c(0.5)
Trait550_600$founders<- c(50)
Trait550_600$generation<- c(600)

#Generation 650
Trait550_650<- read.delim("output_pi_Trait550_G650.sites.pi")
Trait550_650<- as.data.frame(Trait550_650)
Trait550_650$dominance<- c(0.5)
Trait550_650$founders<- c(50)
Trait550_650$generation<- c(650)

#Generation 700
Trait550_700<- read.delim("output_pi_Trait550_G700.sites.pi")
Trait550_700<- as.data.frame(Trait550_700)
Trait550_700$dominance<- c(0.5)
Trait550_700$founders<- c(50)
Trait550_700$generation<- c(700)


#Generation 750
Trait550_750<- read.delim("output_pi_Trait550_G750.sites.pi")
Trait550_750<- as.data.frame(Trait550_750)
Trait550_750$dominance<- c(0.5)
Trait550_750$founders<- c(50)
Trait550_750$generation<- c(750)

#Generation 800
Trait550_800<- read.delim("output_pi_Trait550_G800.sites.pi")
Trait550_800<- as.data.frame(Trait550_800)
Trait550_800$dominance<- c(0.5)
Trait550_800$founders<- c(50)
Trait550_800$generation<- c(800)


#Generation 850
Trait550_850<- read.delim("output_pi_Trait550_G850.sites.pi")
Trait550_850<- as.data.frame(Trait550_850)
Trait550_850$dominance<- c(0.5)
Trait550_850$founders<- c(50)
Trait550_850$generation<- c(850)


#Generation 900
Trait550_900<- read.delim("output_pi_Trait550_G900.sites.pi")
Trait550_900<- as.data.frame(Trait550_900)
Trait550_900$dominance<- c(0.5)
Trait550_900$founders<- c(50)
Trait550_900$generation<- c(900)


#Generation 950
Trait550_950<- read.delim("output_pi_Trait550_G950.sites.pi")
Trait550_950<- as.data.frame(Trait550_950)
Trait550_950$dominance<- c(0.5)
Trait550_950$founders<- c(50)
Trait550_950$generation<- c(950)


#Generation 1000
Trait550_1000<- read.delim("output_pi_Trait550_G1000.sites.pi")
Trait550_1000<- as.data.frame(Trait550_1000)
Trait550_1000$dominance<- c(0.5)
Trait550_1000$founders<- c(50)
Trait550_1000$generation<- c(1000)


## Combine all generations 
## h = 0.5, founders = 50 

h05f50<- rbind(Trait550_2, Trait550_50, Trait550_100, Trait550_150, Trait550_200, Trait550_250,
               Trait550_300, Trait550_350, Trait550_400, Trait550_450, Trait550_501,
               Trait550_550, Trait550_600, Trait550_650, Trait550_700, Trait550_750,
               Trait550_800, Trait550_850, Trait550_900, Trait550_950, Trait550_1000)


#Trait 5 - h=0.5
## 100 founders

## Generation 2
Trait5100_2<- read.delim("output_pi_Trait5100_G2.sites.pi")
Trait5100_2<- as.data.frame(Trait5100_2)
Trait5100_2$dominance<- c(0.5)
Trait5100_2$founders<- c(100)
Trait5100_2$generation<- c(2)

#Generation 50
Trait5100_50<- read.delim("output_pi_Trait5100_G50.sites.pi")
Trait5100_50<- as.data.frame(Trait5100_50)
Trait5100_50$dominance<- c(0.5)
Trait5100_50$founders<- c(100)
Trait5100_50$generation<- c(50)

#Generation 100 
Trait5100_100<- read.delim("output_pi_Trait5100_G100.sites.pi")
Trait5100_100<- as.data.frame(Trait5100_100)
Trait5100_100$dominance<- c(0.5)
Trait5100_100$founders<- c(100)
Trait5100_100$generation<- c(100)

#Generation 150 
Trait5100_150<- read.delim("output_pi_Trait5100_G150.sites.pi")
Trait5100_150<- as.data.frame(Trait5100_150)
Trait5100_150$dominance<- c(0.5)
Trait5100_150$founders<- c(100)
Trait5100_150$generation<- c(150)

#Generation 200
Trait5100_200<- read.delim("output_pi_Trait5100_G200.sites.pi")
Trait5100_200<- as.data.frame(Trait5100_200)
Trait5100_200$dominance<- c(0.5)
Trait5100_200$founders<- c(100)
Trait5100_200$generation<- c(200)

#Generation 250
Trait5100_250<- read.delim("output_pi_Trait5100_G250.sites.pi")
Trait5100_250<- as.data.frame(Trait5100_250)
Trait5100_250$dominance<- c(0.5)
Trait5100_250$founders<- c(100)
Trait5100_250$generation<- c(250)

#Generation 300
Trait5100_300<- read.delim("output_pi_Trait5100_G300.sites.pi")
Trait5100_300<- as.data.frame(Trait5100_300)
Trait5100_300$dominance<- c(0.5)
Trait5100_300$founders<- c(100)
Trait5100_300$generation<- c(300)


#Generation 350
Trait5100_350<- read.delim("output_pi_Trait5100_G350.sites.pi")
Trait5100_350<- as.data.frame(Trait5100_350)
Trait5100_350$dominance<- c(0.5)
Trait5100_350$founders<- c(100)
Trait5100_350$generation<- c(350)


#Generation 400
Trait5100_400<- read.delim("output_pi_Trait5100_G400.sites.pi")
Trait5100_400<- as.data.frame(Trait5100_400)
Trait5100_400$dominance<- c(0.5)
Trait5100_400$founders<- c(100)
Trait5100_400$generation<- c(400)

#Generation 450
Trait5100_450<- read.delim("output_pi_Trait5100_G450.sites.pi")
Trait5100_450<- as.data.frame(Trait5100_450)
Trait5100_450$dominance<- c(0.5)
Trait5100_450$founders<- c(100)
Trait5100_450$generation<- c(450)

#Generation 501
Trait5100_501<- read.delim("output_pi_Trait5100_G501.sites.pi")
Trait5100_501<- as.data.frame(Trait5100_501)
Trait5100_501$dominance<- c(0.5)
Trait5100_501$founders<- c(100)
Trait5100_501$generation<- c(501)


#Generation 550
Trait5100_550<- read.delim("output_pi_Trait5100_G550.sites.pi")
Trait5100_550<- as.data.frame(Trait5100_550)
Trait5100_550$dominance<- c(0.5)
Trait5100_550$founders<- c(100)
Trait5100_550$generation<- c(550)

#Generation 600
Trait5100_600<- read.delim("output_pi_Trait5100_G600.sites.pi")
Trait5100_600<- as.data.frame(Trait5100_600)
Trait5100_600$dominance<- c(0.5)
Trait5100_600$founders<- c(100)
Trait5100_600$generation<- c(600)

#Generation 650
Trait5100_650<- read.delim("output_pi_Trait5100_G650.sites.pi")
Trait5100_650<- as.data.frame(Trait5100_650)
Trait5100_650$dominance<- c(0.5)
Trait5100_650$founders<- c(100)
Trait5100_650$generation<- c(650)

#Generation 700
Trait5100_700<- read.delim("output_pi_Trait5100_G700.sites.pi")
Trait5100_700<- as.data.frame(Trait5100_700)
Trait5100_700$dominance<- c(0.5)
Trait5100_700$founders<- c(100)
Trait5100_700$generation<- c(700)


#Generation 750
Trait5100_750<- read.delim("output_pi_Trait5100_G750.sites.pi")
Trait5100_750<- as.data.frame(Trait5100_750)
Trait5100_750$dominance<- c(0.5)
Trait5100_750$founders<- c(100)
Trait5100_750$generation<- c(750)

#Generation 800
Trait5100_800<- read.delim("output_pi_Trait5100_G800.sites.pi")
Trait5100_800<- as.data.frame(Trait5100_800)
Trait5100_800$dominance<- c(0.5)
Trait5100_800$founders<- c(100)
Trait5100_800$generation<- c(800)


#Generation 850
Trait5100_850<- read.delim("output_pi_Trait5100_G850.sites.pi")
Trait5100_850<- as.data.frame(Trait5100_850)
Trait5100_850$dominance<- c(0.5)
Trait5100_850$founders<- c(100)
Trait5100_850$generation<- c(850)


#Generation 900
Trait5100_900<- read.delim("output_pi_Trait5100_G900.sites.pi")
Trait5100_900<- as.data.frame(Trait5100_900)
Trait5100_900$dominance<- c(0.5)
Trait5100_900$founders<- c(100)
Trait5100_900$generation<- c(900)


#Generation 950
Trait5100_950<- read.delim("output_pi_Trait5100_G950.sites.pi")
Trait5100_950<- as.data.frame(Trait5100_950)
Trait5100_950$dominance<- c(0.5)
Trait5100_950$founders<- c(100)
Trait5100_950$generation<- c(950)


#Generation 1000
Trait5100_1000<- read.delim("output_pi_Trait5100_G1000.sites.pi")
Trait5100_1000<- as.data.frame(Trait5100_1000)
Trait5100_1000$dominance<- c(0.5)
Trait5100_1000$founders<- c(100)
Trait5100_1000$generation<- c(1000)


## Combine all generations 
## h = 0.5, founders = 100 

h05f100<- rbind(Trait5100_2, Trait5100_50, Trait5100_100, Trait5100_150, Trait5100_200, Trait5100_250,
                Trait5100_300, Trait5100_350, Trait5100_400, Trait5100_450, Trait5100_501,
                Trait5100_550, Trait5100_600, Trait5100_650, Trait5100_700, Trait5100_750,
                Trait5100_800, Trait5100_850, Trait5100_900, Trait5100_950, Trait5100_1000)



#Trait 5 - h=0.5
## 150 founders

## Generation 2
Trait5150_2<- read.delim("output_pi_Trait5150_G2.sites.pi")
Trait5150_2<- as.data.frame(Trait5150_2)
Trait5150_2$dominance<- c(0.5)
Trait5150_2$founders<- c(150)
Trait5150_2$generation<- c(2)

#Generation 50
Trait5150_50<- read.delim("output_pi_Trait5150_G50.sites.pi")
Trait5150_50<- as.data.frame(Trait5150_50)
Trait5150_50$dominance<- c(0.5)
Trait5150_50$founders<- c(150)
Trait5150_50$generation<- c(50)

#Generation 100 
Trait5150_100<- read.delim("output_pi_Trait5150_G100.sites.pi")
Trait5150_100<- as.data.frame(Trait5150_100)
Trait5150_100$dominance<- c(0.5)
Trait5150_100$founders<- c(150)
Trait5150_100$generation<- c(100)

#Generation 150 
Trait5150_150<- read.delim("output_pi_Trait5150_G150.sites.pi")
Trait5150_150<- as.data.frame(Trait5150_150)
Trait5150_150$dominance<- c(0.5)
Trait5150_150$founders<- c(150)
Trait5150_150$generation<- c(150)

#Generation 200
Trait5150_200<- read.delim("output_pi_Trait5150_G200.sites.pi")
Trait5150_200<- as.data.frame(Trait5150_200)
Trait5150_200$dominance<- c(0.5)
Trait5150_200$founders<- c(150)
Trait5150_200$generation<- c(200)

#Generation 250
Trait5150_250<- read.delim("output_pi_Trait5150_G250.sites.pi")
Trait5150_250<- as.data.frame(Trait5150_250)
Trait5150_250$dominance<- c(0.5)
Trait5150_250$founders<- c(150)
Trait5150_250$generation<- c(250)

#Generation 300
Trait5150_300<- read.delim("output_pi_Trait5150_G300.sites.pi")
Trait5150_300<- as.data.frame(Trait5150_300)
Trait5150_300$dominance<- c(0.5)
Trait5150_300$founders<- c(150)
Trait5150_300$generation<- c(300)


#Generation 350
Trait5150_350<- read.delim("output_pi_Trait5150_G350.sites.pi")
Trait5150_350<- as.data.frame(Trait5150_350)
Trait5150_350$dominance<- c(0.5)
Trait5150_350$founders<- c(150)
Trait5150_350$generation<- c(350)


#Generation 400
Trait5150_400<- read.delim("output_pi_Trait5150_G400.sites.pi")
Trait5150_400<- as.data.frame(Trait5150_400)
Trait5150_400$dominance<- c(0.5)
Trait5150_400$founders<- c(150)
Trait5150_400$generation<- c(400)

#Generation 450
Trait5150_450<- read.delim("output_pi_Trait5150_G450.sites.pi")
Trait5150_450<- as.data.frame(Trait5150_450)
Trait5150_450$dominance<- c(0.5)
Trait5150_450$founders<- c(150)
Trait5150_450$generation<- c(450)

#Generation 501
Trait5150_501<- read.delim("output_pi_Trait5150_G501.sites.pi")
Trait5150_501<- as.data.frame(Trait5150_501)
Trait5150_501$dominance<- c(0.5)
Trait5150_501$founders<- c(150)
Trait5150_501$generation<- c(501)


#Generation 550
Trait5150_550<- read.delim("output_pi_Trait5150_G550.sites.pi")
Trait5150_550<- as.data.frame(Trait5150_550)
Trait5150_550$dominance<- c(0.5)
Trait5150_550$founders<- c(150)
Trait5150_550$generation<- c(550)

#Generation 600
Trait5150_600<- read.delim("output_pi_Trait5150_G600.sites.pi")
Trait5150_600<- as.data.frame(Trait5150_600)
Trait5150_600$dominance<- c(0.5)
Trait5150_600$founders<- c(150)
Trait5150_600$generation<- c(600)

#Generation 650
Trait5150_650<- read.delim("output_pi_Trait5150_G650.sites.pi")
Trait5150_650<- as.data.frame(Trait5150_650)
Trait5150_650$dominance<- c(0.5)
Trait5150_650$founders<- c(150)
Trait5150_650$generation<- c(650)

#Generation 700
Trait5150_700<- read.delim("output_pi_Trait5150_G700.sites.pi")
Trait5150_700<- as.data.frame(Trait5150_700)
Trait5150_700$dominance<- c(0.5)
Trait5150_700$founders<- c(150)
Trait5150_700$generation<- c(700)


#Generation 750
Trait5150_750<- read.delim("output_pi_Trait5150_G750.sites.pi")
Trait5150_750<- as.data.frame(Trait5150_750)
Trait5150_750$dominance<- c(0.5)
Trait5150_750$founders<- c(150)
Trait5150_750$generation<- c(750)

#Generation 800
Trait5150_800<- read.delim("output_pi_Trait5150_G800.sites.pi")
Trait5150_800<- as.data.frame(Trait5150_800)
Trait5150_800$dominance<- c(0.5)
Trait5150_800$founders<- c(150)
Trait5150_800$generation<- c(800)


#Generation 850
Trait5150_850<- read.delim("output_pi_Trait5150_G850.sites.pi")
Trait5150_850<- as.data.frame(Trait5150_850)
Trait5150_850$dominance<- c(0.5)
Trait5150_850$founders<- c(150)
Trait5150_850$generation<- c(850)


#Generation 900
Trait5150_900<- read.delim("output_pi_Trait5150_G900.sites.pi")
Trait5150_900<- as.data.frame(Trait5150_900)
Trait5150_900$dominance<- c(0.5)
Trait5150_900$founders<- c(150)
Trait5150_900$generation<- c(900)


#Generation 950
Trait5150_950<- read.delim("output_pi_Trait5150_G950.sites.pi")
Trait5150_950<- as.data.frame(Trait5150_950)
Trait5150_950$dominance<- c(0.5)
Trait5150_950$founders<- c(150)
Trait5150_950$generation<- c(950)


#Generation 1000
Trait5150_1000<- read.delim("output_pi_Trait5150_G1000.sites.pi")
Trait5150_1000<- as.data.frame(Trait5150_1000)
Trait5150_1000$dominance<- c(0.5)
Trait5150_1000$founders<- c(150)
Trait5150_1000$generation<- c(1000)


## Combine all generations 
## h = 0.5, founders = 150 

h05f150<- rbind(Trait5150_2, Trait5150_50, Trait5150_100, Trait5150_150, Trait5150_200, Trait5150_250,
                Trait5150_300, Trait5150_350, Trait5150_400, Trait5150_450, Trait5150_501,
                Trait5150_550, Trait5150_600, Trait5150_650, Trait5150_700, Trait5150_750,
                Trait5150_800, Trait5150_850, Trait5150_900, Trait5150_950, Trait5150_1000)



#Trait 5 - h=0.5
## 200 founders

## Generation 2
Trait5200_2<- read.delim("output_pi_Trait5200_G2.sites.pi")
Trait5200_2<- as.data.frame(Trait5200_2)
Trait5200_2$dominance<- c(0.5)
Trait5200_2$founders<- c(200)
Trait5200_2$generation<- c(2)

#Generation 50
Trait5200_50<- read.delim("output_pi_Trait5200_G50.sites.pi")
Trait5200_50<- as.data.frame(Trait5200_50)
Trait5200_50$dominance<- c(0.5)
Trait5200_50$founders<- c(200)
Trait5200_50$generation<- c(50)

#Generation 100 
Trait5200_100<- read.delim("output_pi_Trait5200_G100.sites.pi")
Trait5200_100<- as.data.frame(Trait5200_100)
Trait5200_100$dominance<- c(0.5)
Trait5200_100$founders<- c(200)
Trait5200_100$generation<- c(100)

#Generation 150 
Trait5200_150<- read.delim("output_pi_Trait5200_G150.sites.pi")
Trait5200_150<- as.data.frame(Trait5200_150)
Trait5200_150$dominance<- c(0.5)
Trait5200_150$founders<- c(200)
Trait5200_150$generation<- c(150)

#Generation 200
Trait5200_200<- read.delim("output_pi_Trait5200_G200.sites.pi")
Trait5200_200<- as.data.frame(Trait5200_200)
Trait5200_200$dominance<- c(0.5)
Trait5200_200$founders<- c(200)
Trait5200_200$generation<- c(200)

#Generation 250
Trait5200_250<- read.delim("output_pi_Trait5200_G250.sites.pi")
Trait5200_250<- as.data.frame(Trait5200_250)
Trait5200_250$dominance<- c(0.5)
Trait5200_250$founders<- c(200)
Trait5200_250$generation<- c(250)

#Generation 300
Trait5200_300<- read.delim("output_pi_Trait5200_G300.sites.pi")
Trait5200_300<- as.data.frame(Trait5200_300)
Trait5200_300$dominance<- c(0.5)
Trait5200_300$founders<- c(200)
Trait5200_300$generation<- c(300)


#Generation 350
Trait5200_350<- read.delim("output_pi_Trait5200_G350.sites.pi")
Trait5200_350<- as.data.frame(Trait5200_350)
Trait5200_350$dominance<- c(0.5)
Trait5200_350$founders<- c(200)
Trait5200_350$generation<- c(350)


#Generation 400
Trait5200_400<- read.delim("output_pi_Trait5200_G400.sites.pi")
Trait5200_400<- as.data.frame(Trait5200_400)
Trait5200_400$dominance<- c(0.5)
Trait5200_400$founders<- c(200)
Trait5200_400$generation<- c(400)

#Generation 450
Trait5200_450<- read.delim("output_pi_Trait5200_G450.sites.pi")
Trait5200_450<- as.data.frame(Trait5200_450)
Trait5200_450$dominance<- c(0.5)
Trait5200_450$founders<- c(200)
Trait5200_450$generation<- c(450)

#Generation 501
Trait5200_501<- read.delim("output_pi_Trait5200_G501.sites.pi")
Trait5200_501<- as.data.frame(Trait5200_501)
Trait5200_501$dominance<- c(0.5)
Trait5200_501$founders<- c(200)
Trait5200_501$generation<- c(501)


#Generation 550
Trait5200_550<- read.delim("output_pi_Trait5200_G550.sites.pi")
Trait5200_550<- as.data.frame(Trait5200_550)
Trait5200_550$dominance<- c(0.5)
Trait5200_550$founders<- c(200)
Trait5200_550$generation<- c(550)

#Generation 600
Trait5200_600<- read.delim("output_pi_Trait5200_G600.sites.pi")
Trait5200_600<- as.data.frame(Trait5200_600)
Trait5200_600$dominance<- c(0.5)
Trait5200_600$founders<- c(200)
Trait5200_600$generation<- c(600)

#Generation 650
Trait5200_650<- read.delim("output_pi_Trait5200_G650.sites.pi")
Trait5200_650<- as.data.frame(Trait5200_650)
Trait5200_650$dominance<- c(0.5)
Trait5200_650$founders<- c(200)
Trait5200_650$generation<- c(650)

#Generation 700
Trait5200_700<- read.delim("output_pi_Trait5200_G700.sites.pi")
Trait5200_700<- as.data.frame(Trait5200_700)
Trait5200_700$dominance<- c(0.5)
Trait5200_700$founders<- c(200)
Trait5200_700$generation<- c(700)


#Generation 750
Trait5200_750<- read.delim("output_pi_Trait5200_G750.sites.pi")
Trait5200_750<- as.data.frame(Trait5200_750)
Trait5200_750$dominance<- c(0.5)
Trait5200_750$founders<- c(200)
Trait5200_750$generation<- c(750)

#Generation 800
Trait5200_800<- read.delim("output_pi_Trait5200_G800.sites.pi")
Trait5200_800<- as.data.frame(Trait5200_800)
Trait5200_800$dominance<- c(0.5)
Trait5200_800$founders<- c(200)
Trait5200_800$generation<- c(800)


#Generation 850
Trait5200_850<- read.delim("output_pi_Trait5200_G850.sites.pi")
Trait5200_850<- as.data.frame(Trait5200_850)
Trait5200_850$dominance<- c(0.5)
Trait5200_850$founders<- c(200)
Trait5200_850$generation<- c(850)


#Generation 900
Trait5200_900<- read.delim("output_pi_Trait5200_G900.sites.pi")
Trait5200_900<- as.data.frame(Trait5200_900)
Trait5200_900$dominance<- c(0.5)
Trait5200_900$founders<- c(200)
Trait5200_900$generation<- c(900)


#Generation 950
Trait5200_950<- read.delim("output_pi_Trait5200_G950.sites.pi")
Trait5200_950<- as.data.frame(Trait5200_950)
Trait5200_950$dominance<- c(0.5)
Trait5200_950$founders<- c(200)
Trait5200_950$generation<- c(950)


#Generation 1000
Trait5200_1000<- read.delim("output_pi_Trait5200_G1000.sites.pi")
Trait5200_1000<- as.data.frame(Trait5200_1000)
Trait5200_1000$dominance<- c(0.5)
Trait5200_1000$founders<- c(200)
Trait5200_1000$generation<- c(1000)


## Combine all generations 
## h = 0.5, founders = 200 

h05f200<- rbind(Trait5200_2, Trait5200_50, Trait5200_100, Trait5200_150, Trait5200_200, Trait5200_250,
                Trait5200_300, Trait5200_350, Trait5200_400, Trait5200_450, Trait5200_501,
                Trait5200_550, Trait5200_600, Trait5200_650, Trait5200_700, Trait5200_750,
                Trait5200_800, Trait5200_850, Trait5200_900, Trait5200_950, Trait5200_1000)




#Trait 5 - h=0.5
## 250 founders

## Generation 2
Trait5250_2<- read.delim("output_pi_Trait5250_G2.sites.pi")
Trait5250_2<- as.data.frame(Trait5250_2)
Trait5250_2$dominance<- c(0.5)
Trait5250_2$founders<- c(250)
Trait5250_2$generation<- c(2)

#Generation 50
Trait5250_50<- read.delim("output_pi_Trait5250_G50.sites.pi")
Trait5250_50<- as.data.frame(Trait5250_50)
Trait5250_50$dominance<- c(0.5)
Trait5250_50$founders<- c(250)
Trait5250_50$generation<- c(50)

#Generation 100 
Trait5250_100<- read.delim("output_pi_Trait5250_G100.sites.pi")
Trait5250_100<- as.data.frame(Trait5250_100)
Trait5250_100$dominance<- c(0.5)
Trait5250_100$founders<- c(250)
Trait5250_100$generation<- c(100)

#Generation 150 
Trait5250_150<- read.delim("output_pi_Trait5250_G150.sites.pi")
Trait5250_150<- as.data.frame(Trait5250_150)
Trait5250_150$dominance<- c(0.5)
Trait5250_150$founders<- c(250)
Trait5250_150$generation<- c(150)

#Generation 200
Trait5250_200<- read.delim("output_pi_Trait5250_G200.sites.pi")
Trait5250_200<- as.data.frame(Trait5250_200)
Trait5250_200$dominance<- c(0.5)
Trait5250_200$founders<- c(250)
Trait5250_200$generation<- c(200)

#Generation 250
Trait5250_250<- read.delim("output_pi_Trait5250_G250.sites.pi")
Trait5250_250<- as.data.frame(Trait5250_250)
Trait5250_250$dominance<- c(0.5)
Trait5250_250$founders<- c(250)
Trait5250_250$generation<- c(250)

#Generation 300
Trait5250_300<- read.delim("output_pi_Trait5250_G300.sites.pi")
Trait5250_300<- as.data.frame(Trait5250_300)
Trait5250_300$dominance<- c(0.5)
Trait5250_300$founders<- c(250)
Trait5250_300$generation<- c(300)


#Generation 350
Trait5250_350<- read.delim("output_pi_Trait5250_G350.sites.pi")
Trait5250_350<- as.data.frame(Trait5250_350)
Trait5250_350$dominance<- c(0.5)
Trait5250_350$founders<- c(250)
Trait5250_350$generation<- c(350)


#Generation 400
Trait5250_400<- read.delim("output_pi_Trait5250_G400.sites.pi")
Trait5250_400<- as.data.frame(Trait5250_400)
Trait5250_400$dominance<- c(0.5)
Trait5250_400$founders<- c(250)
Trait5250_400$generation<- c(400)

#Generation 450
Trait5250_450<- read.delim("output_pi_Trait5250_G450.sites.pi")
Trait5250_450<- as.data.frame(Trait5250_450)
Trait5250_450$dominance<- c(0.5)
Trait5250_450$founders<- c(250)
Trait5250_450$generation<- c(450)

#Generation 501
Trait5250_501<- read.delim("output_pi_Trait5250_G501.sites.pi")
Trait5250_501<- as.data.frame(Trait5250_501)
Trait5250_501$dominance<- c(0.5)
Trait5250_501$founders<- c(250)
Trait5250_501$generation<- c(501)


#Generation 550
Trait5250_550<- read.delim("output_pi_Trait5250_G550.sites.pi")
Trait5250_550<- as.data.frame(Trait5250_550)
Trait5250_550$dominance<- c(0.5)
Trait5250_550$founders<- c(250)
Trait5250_550$generation<- c(550)

#Generation 600
Trait5250_600<- read.delim("output_pi_Trait5250_G600.sites.pi")
Trait5250_600<- as.data.frame(Trait5250_600)
Trait5250_600$dominance<- c(0.5)
Trait5250_600$founders<- c(250)
Trait5250_600$generation<- c(600)

#Generation 650
Trait5250_650<- read.delim("output_pi_Trait5250_G650.sites.pi")
Trait5250_650<- as.data.frame(Trait5250_650)
Trait5250_650$dominance<- c(0.5)
Trait5250_650$founders<- c(250)
Trait5250_650$generation<- c(650)

#Generation 700
Trait5250_700<- read.delim("output_pi_Trait5250_G700.sites.pi")
Trait5250_700<- as.data.frame(Trait5250_700)
Trait5250_700$dominance<- c(0.5)
Trait5250_700$founders<- c(250)
Trait5250_700$generation<- c(700)


#Generation 750
Trait5250_750<- read.delim("output_pi_Trait5250_G750.sites.pi")
Trait5250_750<- as.data.frame(Trait5250_750)
Trait5250_750$dominance<- c(0.5)
Trait5250_750$founders<- c(250)
Trait5250_750$generation<- c(750)

#Generation 800
Trait5250_800<- read.delim("output_pi_Trait5250_G800.sites.pi")
Trait5250_800<- as.data.frame(Trait5250_800)
Trait5250_800$dominance<- c(0.5)
Trait5250_800$founders<- c(250)
Trait5250_800$generation<- c(800)


#Generation 850
Trait5250_850<- read.delim("output_pi_Trait5250_G850.sites.pi")
Trait5250_850<- as.data.frame(Trait5250_850)
Trait5250_850$dominance<- c(0.5)
Trait5250_850$founders<- c(250)
Trait5250_850$generation<- c(850)


#Generation 900
Trait5250_900<- read.delim("output_pi_Trait5250_G900.sites.pi")
Trait5250_900<- as.data.frame(Trait5250_900)
Trait5250_900$dominance<- c(0.5)
Trait5250_900$founders<- c(250)
Trait5250_900$generation<- c(900)


#Generation 950
Trait5250_950<- read.delim("output_pi_Trait5250_G950.sites.pi")
Trait5250_950<- as.data.frame(Trait5250_950)
Trait5250_950$dominance<- c(0.5)
Trait5250_950$founders<- c(250)
Trait5250_950$generation<- c(950)


#Generation 1000
Trait5250_1000<- read.delim("output_pi_Trait5250_G1000.sites.pi")
Trait5250_1000<- as.data.frame(Trait5250_1000)
Trait5250_1000$dominance<- c(0.5)
Trait5250_1000$founders<- c(250)
Trait5250_1000$generation<- c(1000)


## Combine all generations 
## h = 0.5, founders = 250 

h05f250<- rbind(Trait5250_2, Trait5250_50, Trait5250_100, Trait5250_150, Trait5250_200, Trait5250_250,
                Trait5250_300, Trait5250_350, Trait5250_400, Trait5250_450, Trait5250_501,
                Trait5250_550, Trait5250_600, Trait5250_650, Trait5250_700, Trait5250_750,
                Trait5250_800, Trait5250_850, Trait5250_900, Trait5250_950, Trait5250_1000)



#Trait 5 - h=0.5
## 300 founders

## Generation 2
Trait5300_2<- read.delim("output_pi_Trait5300_G2.sites.pi")
Trait5300_2<- as.data.frame(Trait5300_2)
Trait5300_2$dominance<- c(0.5)
Trait5300_2$founders<- c(300)
Trait5300_2$generation<- c(2)

#Generation 50
Trait5300_50<- read.delim("output_pi_Trait5300_G50.sites.pi")
Trait5300_50<- as.data.frame(Trait5300_50)
Trait5300_50$dominance<- c(0.5)
Trait5300_50$founders<- c(300)
Trait5300_50$generation<- c(50)

#Generation 100 
Trait5300_100<- read.delim("output_pi_Trait5300_G100.sites.pi")
Trait5300_100<- as.data.frame(Trait5300_100)
Trait5300_100$dominance<- c(0.5)
Trait5300_100$founders<- c(300)
Trait5300_100$generation<- c(100)

#Generation 150 
Trait5300_150<- read.delim("output_pi_Trait5300_G150.sites.pi")
Trait5300_150<- as.data.frame(Trait5300_150)
Trait5300_150$dominance<- c(0.5)
Trait5300_150$founders<- c(300)
Trait5300_150$generation<- c(150)

#Generation 200
Trait5300_200<- read.delim("output_pi_Trait5300_G200.sites.pi")
Trait5300_200<- as.data.frame(Trait5300_200)
Trait5300_200$dominance<- c(0.5)
Trait5300_200$founders<- c(300)
Trait5300_200$generation<- c(200)

#Generation 250
Trait5300_250<- read.delim("output_pi_Trait5300_G250.sites.pi")
Trait5300_250<- as.data.frame(Trait5300_250)
Trait5300_250$dominance<- c(0.5)
Trait5300_250$founders<- c(300)
Trait5300_250$generation<- c(250)

#Generation 300
Trait5300_300<- read.delim("output_pi_Trait5300_G300.sites.pi")
Trait5300_300<- as.data.frame(Trait5300_300)
Trait5300_300$dominance<- c(0.5)
Trait5300_300$founders<- c(300)
Trait5300_300$generation<- c(300)


#Generation 350
Trait5300_350<- read.delim("output_pi_Trait5300_G350.sites.pi")
Trait5300_350<- as.data.frame(Trait5300_350)
Trait5300_350$dominance<- c(0.5)
Trait5300_350$founders<- c(300)
Trait5300_350$generation<- c(350)


#Generation 400
Trait5300_400<- read.delim("output_pi_Trait5300_G400.sites.pi")
Trait5300_400<- as.data.frame(Trait5300_400)
Trait5300_400$dominance<- c(0.5)
Trait5300_400$founders<- c(300)
Trait5300_400$generation<- c(400)

#Generation 450
Trait5300_450<- read.delim("output_pi_Trait5300_G450.sites.pi")
Trait5300_450<- as.data.frame(Trait5300_450)
Trait5300_450$dominance<- c(0.5)
Trait5300_450$founders<- c(300)
Trait5300_450$generation<- c(450)

#Generation 501
Trait5300_501<- read.delim("output_pi_Trait5300_G501.sites.pi")
Trait5300_501<- as.data.frame(Trait5300_501)
Trait5300_501$dominance<- c(0.5)
Trait5300_501$founders<- c(300)
Trait5300_501$generation<- c(501)


#Generation 550
Trait5300_550<- read.delim("output_pi_Trait5300_G550.sites.pi")
Trait5300_550<- as.data.frame(Trait5300_550)
Trait5300_550$dominance<- c(0.5)
Trait5300_550$founders<- c(300)
Trait5300_550$generation<- c(550)

#Generation 600
Trait5300_600<- read.delim("output_pi_Trait5300_G600.sites.pi")
Trait5300_600<- as.data.frame(Trait5300_600)
Trait5300_600$dominance<- c(0.5)
Trait5300_600$founders<- c(300)
Trait5300_600$generation<- c(600)

#Generation 650
Trait5300_650<- read.delim("output_pi_Trait5300_G650.sites.pi")
Trait5300_650<- as.data.frame(Trait5300_650)
Trait5300_650$dominance<- c(0.5)
Trait5300_650$founders<- c(300)
Trait5300_650$generation<- c(650)

#Generation 700
Trait5300_700<- read.delim("output_pi_Trait5300_G700.sites.pi")
Trait5300_700<- as.data.frame(Trait5300_700)
Trait5300_700$dominance<- c(0.5)
Trait5300_700$founders<- c(300)
Trait5300_700$generation<- c(700)


#Generation 750
Trait5300_750<- read.delim("output_pi_Trait5300_G750.sites.pi")
Trait5300_750<- as.data.frame(Trait5300_750)
Trait5300_750$dominance<- c(0.5)
Trait5300_750$founders<- c(300)
Trait5300_750$generation<- c(750)

#Generation 800
Trait5300_800<- read.delim("output_pi_Trait5300_G800.sites.pi")
Trait5300_800<- as.data.frame(Trait5300_800)
Trait5300_800$dominance<- c(0.5)
Trait5300_800$founders<- c(300)
Trait5300_800$generation<- c(800)


#Generation 850
Trait5300_850<- read.delim("output_pi_Trait5300_G850.sites.pi")
Trait5300_850<- as.data.frame(Trait5300_850)
Trait5300_850$dominance<- c(0.5)
Trait5300_850$founders<- c(300)
Trait5300_850$generation<- c(850)


#Generation 900
Trait5300_900<- read.delim("output_pi_Trait5300_G900.sites.pi")
Trait5300_900<- as.data.frame(Trait5300_900)
Trait5300_900$dominance<- c(0.5)
Trait5300_900$founders<- c(300)
Trait5300_900$generation<- c(900)


#Generation 950
Trait5300_950<- read.delim("output_pi_Trait5300_G950.sites.pi")
Trait5300_950<- as.data.frame(Trait5300_950)
Trait5300_950$dominance<- c(0.5)
Trait5300_950$founders<- c(300)
Trait5300_950$generation<- c(950)


#Generation 1000
Trait5300_1000<- read.delim("output_pi_Trait5300_G1000.sites.pi")
Trait5300_1000<- as.data.frame(Trait5300_1000)
Trait5300_1000$dominance<- c(0.5)
Trait5300_1000$founders<- c(300)
Trait5300_1000$generation<- c(1000)


## Combine all generations 
## h = 0.5, founders = 300 

h05f300<- rbind(Trait5300_2, Trait5300_50, Trait5300_100, Trait5300_150, Trait5300_200, Trait5300_250,
                Trait5300_300, Trait5300_350, Trait5300_400, Trait5300_450, Trait5300_501,
                Trait5300_550, Trait5300_600, Trait5300_650, Trait5300_700, Trait5300_750,
                Trait5300_800, Trait5300_850, Trait5300_900, Trait5300_950, Trait5300_1000)



#Combine by dominance coefficient
h05<- rbind(h05f2, h05f20, h05f50, h05f100, h05f150, h05f200, h05f250, 
            h05f300)
h05$founders<- as.factor(h05$founders)
h05$dominance<- as.factor(h05$dominance)

h0375<- rbind(h0375f2, h0375f20, h0375f50, h0375f100, h0375f150, h0375f200, h0375f250, 
              h0375f300)
h0375$founders<- as.factor(h0375$founders)
h0375$dominance<- as.factor(h0375$dominance)

h025<- rbind(h025f2, h025f20, h025f50, h025f100, h025f150, h025f200, h025f250, 
             h025f300)
h025$founders<- as.factor(h025$founders)
h025$dominance<- as.factor(h025$dominance)

h0125<- rbind(h0125f2, h0125f20, h0125f50, h0125f100, h0125f150, h0125f200, h0125f250, 
              h0125f300)

h0125$founders<- as.factor(h0125$founders)
h0125$dominance<- as.factor(h0125$dominance)

h0<- rbind(h0f2, h0f20, h0f50, h0f100, h0f150, h0f200, h0f250, 
           h0f300)
h0$founders<- as.factor(h0$founders)
h0$dominance<- as.factor(h0$dominance)



##Combine by number of founders
f2<- rbind(h0f2, h0125f2, h025f2, h0375f2, h05f2)
f2$dominance<- as.factor(f2$dominance)
f2$founders<- as.factor(f2$dominance)


f20<- rbind(h0f20, h0125f20, h025f20, h0375f20, h05f20)
f20$dominance<- as.factor(f20$dominance)
f20$founders<- as.factor(f20$dominance)

f50<- rbind(h0f50, h0125f50, h025f50, h0375f50, h05f50)
f50$dominance<- as.factor(f50$dominance)
f50$founders<- as.factor(f50$dominance)

f100<- rbind(h0f100, h0125f100, h025f100, h0375f100, h05f100)
f100$dominance<- as.factor(f100$dominance)
f100$founders<- as.factor(f100$dominance)

f150<- rbind(h0f150, h0125f150, h025f150, h0375f150, h05f150)
f150$dominance<- as.factor(f150$dominance)
f150$founders<- as.factor(f150$dominance)

f200<- rbind(h0f200, h0125f200, h025f200, h0375f200, h05f200)
f200$dominance<- as.factor(f200$dominance)
f200$founders<- as.factor(f200$dominance)

f250<- rbind(h0f250, h0125f250, h025f250, h0375f250, h05f250)
f250$dominance<- as.factor(f250$dominance)
f250$founders<- as.factor(f250$dominance)

f300<- rbind(h0f300, h0125f300, h025f300, h0375f300, h05f300)
f300$dominance<- as.factor(f300$dominance)
f300$founders<- as.factor(f300$dominance)

## Plot for different dominance coefficients 

h0plot<- ggplot(h0, aes(x=generation, y=PI, group = founders)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "NF", group="NF", title = "h=0")+
  geom_point(aes(color=founders))+
  theme_classic()

h0125plot<- ggplot(h0125, aes(x=generation, y=PI, group = founders)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "NF", group="NF", title = "h=0.125")+
  geom_point(aes(color=founders))+
  theme_classic()

h025plot<- ggplot(h025, aes(x=generation, y=PI, group = founders)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "NF", group="NF", title = "h=0.25")+
  geom_point(aes(color=founders))+
  theme_classic()

h0375plot<- ggplot(h0375, aes(x=generation, y=PI, group = founders)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "NF", group="NF", title = "h=0.375")+
  geom_point(aes(color=founders))+
  theme_classic()

h05plot<- ggplot(h05, aes(x=generation, y=PI, group = founders)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "NF", group="NF", title = "h=0.5")+
  geom_point(aes(color=founders))+
  theme_classic()



f2plot<- ggplot(f2, aes(x=generation, y=PI, group = dominance)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "h", group="h", title = "NF=2")+
  geom_point(aes(color=dominance))+
  theme_classic()+
  coord_cartesian(ylim = c(0.0,0.51))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

f20plot<- ggplot(f20, aes(x=generation, y=PI, group = dominance)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "h", group="h", title = "NF=20")+
  geom_point(aes(color=dominance))+
  theme_classic()+
  coord_cartesian(ylim = c(0.0,0.51))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

f50plot<- ggplot(f50, aes(x=generation, y=PI, group = dominance)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "h", group="h", title = "NF=50")+
  geom_point(aes(color=dominance))+
  theme_classic()+
  coord_cartesian(ylim = c(0.0,0.25))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

f100plot<- ggplot(f100, aes(x=generation, y=PI, group = dominance)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "h", group="h", title = "NF=100")+
  geom_point(aes(color=dominance))+
  theme_classic()+
  coord_cartesian(ylim = c(0.0,0.25))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

f150plot<- ggplot(f150, aes(x=generation, y=PI, group = dominance)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "h", group="h", title = "NF=150")+
  geom_point(aes(color=dominance))+
  theme_classic()+
  coord_cartesian(ylim = c(0.0,0.25))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

f200plot<- ggplot(f200, aes(x=generation, y=PI, group = dominance)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "h", group="h", title = "NF=200")+
  geom_point(aes(color=dominance))+
  theme_classic()+
  coord_cartesian(ylim = c(0.0,0.25))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

f250plot<- ggplot(f250, aes(x=generation, y=PI, group = dominance)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "h", group="h", title = "NF=250")+
  geom_point(aes(color=dominance))+
  theme_classic()+
  coord_cartesian(ylim = c(0.0,0.25))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))

f300plot<- ggplot(f300, aes(x=generation, y=PI, group = dominance)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "h", group="h", title = "NF=300")+
  geom_point(aes(color=dominance))+
  theme_classic()+
  coord_cartesian(ylim = c(0.0,0.25))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 13))


dominanceplot<- ggarrange(h0plot, h0125plot, h025plot, h0375plot, h05plot, nrow = 2, ncol = 3)

foundersplot<- ggarrange(f2plot, f20plot, f50plot, f100plot, f150plot,
                         f200plot, f250plot, f300plot, ncol = 2, nrow=4)
### Use for publication
foundersplot1<- ggarrange(f2plot, f20plot, f50plot, f100plot, nrow = 2, ncol = 2)

## Use for publication
foundersplot2<- ggarrange(f150plot, f200plot, f250plot, f300plot, nrow = 2, ncol = 2)



## =======================================================================

## Supplementary Figures ===============================================

## ===============================================================================

## ===========================================================================

## =========================================================================
### Figure S3 =================================================================
## ===============================================================================
## h=0.0
set.seed(1)
h1<- 0.0
p1<- rbinom(10000, 100, 0.5)
p1<- p1*0.01
N1<- c(1:10000)
N1

y1<- ((p1*(1-p1)*(2*N1-1)/N1^3)*(((-2*h1+1)*N1+N1-(-2*h1+1))^2-2*(-2*h1+1)*p1*(N1-1)*(2*N1*((-2*h1+1)+1)-3*(-2*h1+1)-(-2*h1+1)*(2*N1-3)*p1)))

plot1<- qplot(N1,y1)+labs(y="Post-bottleneck VA", x="No. Founders", title = "h=0.0")+theme_classic()+coord_cartesian(ylim = c(0,1))


## h=0.15
set.seed(2)
h2<- 0.15
p2<- rbinom(10000, 100, 0.5)
p2<- p2*0.01
N2<- c(1:10000)
N2

y2<- ((p2*(1-p2)*(2*N2-1)/N2^3)*(((-2*h2+1)*N2+N2-(-2*h2+1))^2-2*(-2*h2+1)*p2*(N2-1)*(2*N2*((-2*h2+1)+1)-3*(-2*h2+1)-(-2*h2+1)*(2*N2-3)*p2)))

plot2<- qplot(N2,y2)+labs(y="Post-bottleneck VA", x="No. Founders", title = "h=0.15")+theme_classic()+coord_cartesian(ylim = c(0,1))


## h=0.3
set.seed(3)
h3<- 0.25
p3<- rbinom(10000, 100, 0.5)
p3<- p3*0.01
N3<- c(1:10000)
N3

y3<- ((p3*(1-p3)*(2*N3-1)/N3^3)*(((-2*h3+1)*N3+N3-(-2*h3+1))^2-2*(-2*h3+1)*p3*(N3-1)*(2*N3*((-2*h3+1)+1)-3*(-2*h3+1)-(-2*h3+1)*(2*N3-3)*p3)))

plot3<- qplot(N3,y3)+labs(y="Post-bottleneck VA", x="No. Founders", title = "h=0.25")+theme_classic()+coord_cartesian(ylim = c(0,1))


## h=0.35
set.seed(4)
h4<- 0.35
p4<- rbinom(10000, 100, 0.5)
p4<- p4*0.01
N4<- c(1:10000)
N4

y4<- ((p4*(1-p4)*(2*N4-1)/N4^3)*(((-2*h4+1)*N4+N4-(-2*h4+1))^2-2*(-2*h4+1)*p4*(N4-1)*(2*N4*((-2*h4+1)+1)-3*(-2*h4+1)-(-2*h4+1)*(2*N4-3)*p4)))

plot4<- qplot(N4,y4)+labs(y="Post-bottleneck VA", x="No. Founders", title = "h=0.35")+theme_classic()+coord_cartesian(ylim = c(0,1))


## h=0.5
set.seed(5)
h5<- 0.5
p5<- rbinom(10000, 100, 0.5)
p5<- p5*0.01
N5<- c(1:10000)
N5

y5<- ((p5*(1-p5)*(2*N5-1)/N5^3)*(((-2*h5+1)*N5+N5-(-2*h5+1))^2-2*(-2*h5+1)*p5*(N5-1)*(2*N5*((-2*h5+1)+1)-3*(-2*h5+1)-(-2*h5+1)*(2*N5-3)*p5)))

plot5<- qplot(N5,y5)+labs(y="Post-bottleneck VA", x="No. Founders", title = "h=0.5")+theme_classic()+coord_cartesian(ylim = c(0,1))



ggarrange(plot1,plot2,plot3,plot4,plot5)






## =====================================================================================
## Figure S4 ===========================================================================
## ======================================================================================

h1<- 0.0
h2<- 0.25
h3<- 0.5

q1<- 0.3
q2<- 0.5 
q3<- 0.7

x<- c(0:250)


## h=0, q=0.3 
plot1<- -(((1-q1)-1)*(1-q1)*((-2*h1+1)^2*(2*(1-q1)^2*(12*x^2-22*x+9)-2*(1-q1)*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(-2*h1+1)*x*((1-q1)*(4-6*x)+3*x-2)+x^2))/x^4
## h=0, q=0.5
plot2<- -(((1-q2)-1)*(1-q2)*((-2*h1+1)^2*(2*(1-q2)^2*(12*x^2-22*x+9)-2*(1-q2)*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(-2*h1+1)*x*((1-q2)*(4-6*x)+3*x-2)+x^2))/x^4
## h=0, q=0.7
plot3<- -(((1-q3)-1)*(1-q3)*((-2*h1+1)^2*(2*(1-q3)^2*(12*x^2-22*x+9)-2*(1-q3)*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(-2*h1+1)*x*((1-q3)*(4-6*x)+3*x-2)+x^2))/x^4
## h=0.25, q=0.3 
plot4<- -(((1-q1)-1)*(1-q1)*((-2*h2+1)^2*(2*(1-q1)^2*(12*x^2-22*x+9)-2*(1-q1)*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(-2*h2+1)*x*((1-q1)*(4-6*x)+3*x-2)+x^2))/x^4
## h=0.25, q=0.5
plot5<- -(((1-q2)-1)*(1-q2)*((-2*h2+1)^2*(2*(1-q2)^2*(12*x^2-22*x+9)-2*(1-q2)*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(-2*h2+1)*x*((1-q2)*(4-6*x)+3*x-2)+x^2))/x^4
## h=0.25, q=0.7
plot6<- -(((1-q3)-1)*(1-q3)*((-2*h2+1)^2*(2*(1-q3)^2*(12*x^2-22*x+9)-2*(1-q3)*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(-2*h2+1)*x*((1-q3)*(4-6*x)+3*x-2)+x^2))/x^4
## h=0.5, q=0.3
plot7<- -(((1-q1)-1)*(1-q1)*((-2*h3+1)^2*(2*(1-q1)^2*(12*x^2-22*x+9)-2*(1-q1)*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(-2*h3+1)*x*((1-q1)*(4-6*x)+3*x-2)+x^2))/x^4
## h=0.5, q=0.5
plot8<- -(((1-q2)-1)*(1-q2)*((-2*h3+1)^2*(2*(1-q2)^2*(12*x^2-22*x+9)-2*(1-q2)*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(-2*h3+1)*x*((1-q2)*(4-6*x)+3*x-2)+x^2))/x^4
## h=0.5, q=0.7
plot9<- -(((1-q3)-1)*(1-q3)*((-2*h3+1)^2*(2*(1-q3)^2*(12*x^2-22*x+9)-2*(1-q3)*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(-2*h3+1)*x*((1-q3)*(4-6*x)+3*x-2)+x^2))/x^4

neutral1<- cbind(x,plot1)
neutral2<- cbind(x,plot2)
neutral3<- cbind(x,plot3)
neutral4<- cbind(x,plot4)
neutral5<- cbind(x,plot5)
neutral6<- cbind(x,plot6)
neutral7<- cbind(x,plot7)
neutral8<- cbind(x,plot8)
neutral9<- cbind(x,plot9)

neutral1<- as.data.frame(neutral1)
neutral2<- as.data.frame(neutral2)
neutral3<- as.data.frame(neutral3)
neutral4<- as.data.frame(neutral4)
neutral5<- as.data.frame(neutral5)
neutral6<- as.data.frame(neutral6)
neutral7<- as.data.frame(neutral7)
neutral8<- as.data.frame(neutral8)
neutral9<- as.data.frame(neutral9)





neutralplot1<- ggplot(neutral1, aes(x = x, y = plot1))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "h=0, q=0.3")+
  geom_line()

neutralplot2<- ggplot(neutral2, aes(x = x, y = plot2))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "h=0, q=0.5")+
  geom_line()

neutralplot3<- ggplot(neutral3, aes(x = x, y = plot3))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "h=0, q=0.7")+
  geom_line()

neutralplot4<- ggplot(neutral2, aes(x = x, y = plot4))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "h=0.25, q=0.3")+
  geom_line()

neutralplot5<- ggplot(neutral2, aes(x = x, y = plot5))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "h=0.25, q=0.5")+
  geom_line()

neutralplot6<- ggplot(neutral2, aes(x = x, y = plot6))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "h=0.25, q=0.7")+
  geom_line()

neutralplot7<- ggplot(neutral2, aes(x = x, y = plot7))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "h=0.5, q=0.3")+
  geom_line()

neutralplot8<- ggplot(neutral2, aes(x = x, y = plot8))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "h=0.5, q=0.5")+
  geom_line()

neutralplot9<- ggplot(neutral2, aes(x = x, y = plot9))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "h=0.5, q=0.7")+
  geom_line()

figureS4<- ggarrange(neutralplot1, neutralplot2, neutralplot3, neutralplot4, 
                             neutralplot5, neutralplot6, neutralplot7, neutralplot8,
                             neutralplot9)


## =========================================================================
## Figure S5 ======================================================================
## ==========================================================================

########### a=0.001 ############################################

#h=0.5
set.seed(6)
a1<- 0.001
h1<- 0.5
p1<- rbinom(10000, 100, 0.5)
p1<- p1*0.01
N<- c(1:10000)
N



y1<-((a1^2/4)*(1-(1/(2*N)))*((1+(2*(h1)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p1)*(1-(p1)))+2*(1-(2/(2*N)))*((2*(h1)-1)*(2*(p1)*(1-(p1))*(1-2*(p1)))-(1-(3/(2*N)))*(2*(h1)-1)^2*((2*(p1)*(1-(p1)))^2))))


plot1<- qplot(N,y1)+ labs(y="post-bottleneck VA", x="No. Founders", title = "h=0.5")+theme_classic()+coord_cartesian(ylim = c(0,0.0000005))

#h=0.25
set.seed(7)
a1<- 0.001
h2<- 0.25
p2<- rbinom(10000, 100, 0.5)
p2<- p2*0.01
N<- c(1:10000)
N



y2<- ((a1^2/4)*(1-(1/(2*N)))*((1+(2*(h2)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p2)*(1-(p2)))+2*(1-(2/(2*N)))*((2*(h2)-1)*(2*(p2)*(1-(p2))*(1-2*(p2)))-(1-(3/(2*N)))*(2*(h2)-1)^2*((2*(p2)*(1-(p2)))^2))))


plot2<- qplot(N,y2)+ labs(y="post-bottleneck VA", x="No. Founders", title = "h=0.25")+theme_classic()+coord_cartesian(ylim = c(0,0.0000005))

#h=0.0
set.seed(8)
a1<- 0.001
h3<- 0.0
p3<- rbinom(10000, 100, 0.5)
p3<- p3*0.01
N<- c(1:10000)
N



y3<- ((a1^2/4)*(1-(1/(2*N)))*((1+(2*(h3)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p3)*(1-(p3)))+2*(1-(2/(2*N)))*((2*(h3)-1)*(2*(p3)*(1-(p3))*(1-2*(p3)))-(1-(3/(2*N)))*(2*(h3)-1)^2*((2*(p3)*(1-(p3)))^2))))


plot3<- qplot(N,y3)+ labs(y="post-bottleneck VA", x="No. Founders", title = "h=0.0")+theme_classic()+coord_cartesian(ylim = c(0,0.0000005))

plotS1<- ggarrange(plot1, plot2, plot3, ncol = 1, nrow = 3)



################# s = 0.01 ###########################################

#h=0.5
set.seed(9)
a2<- 0.01
h4<- 0.5
p4<- rbinom(10000, 100, 0.5)
p4<- p4*0.01
N<- c(1:10000)
N



y4<-((a2^2/4)*(1-(1/(2*N)))*((1+(2*(h4)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p4)*(1-(p4)))+2*(1-(2/(2*N)))*((2*(h4)-1)*(2*(p4)*(1-(p4))*(1-2*(p4)))-(1-(3/(2*N)))*(2*(h4)-1)^2*((2*(p4)*(1-(p4)))^2))))


plot4<- qplot(N,y4)+ labs(y="post-bottleneck VA", x="No. Founders", title = "h=0.5")+theme_classic()+coord_cartesian(ylim = c(0,0.00005))

#h=0.25
set.seed(10)
a2<- 0.01
h5<- 0.25
p5<- rbinom(10000, 100, 0.5)
p5<- p5*0.01
N<- c(1:10000)
N



y5<- ((a2^2/4)*(1-(1/(2*N)))*((1+(2*(h5)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p5)*(1-(p5)))+2*(1-(2/(2*N)))*((2*(h5)-1)*(2*(p5)*(1-(p5))*(1-2*(p5)))-(1-(3/(2*N)))*(2*(h5)-1)^2*((2*(p5)*(1-(p5)))^2))))


plot5<- qplot(N,y5)+ labs(y="post-bottleneck VA", x="No. Founders", title = "h=0.25")+theme_classic()+coord_cartesian(ylim = c(0,0.00005))

#h=0.0
set.seed(11)
a2<- 0.01
h6<- 0.0
p6<- rbinom(10000, 100, 0.5)
p6<- p6*0.01
N<- c(1:10000)
N



y6<- ((a2^2/4)*(1-(1/(2*N)))*((1+(2*(h6)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p6)*(1-(p6)))+2*(1-(2/(2*N)))*((2*(h6)-1)*(2*(p6)*(1-(p6))*(1-2*(p6)))-(1-(3/(2*N)))*(2*(h6)-1)^2*((2*(p6)*(1-(p6)))^2))))


plot6<- qplot(N,y6)+ labs(y="post-bottleneck VA", x="No. Founders", title = "h=0.0")+theme_classic()+coord_cartesian(ylim = c(0,0.00005))

plotS2<- ggarrange(plot4, plot5, plot6, ncol = 1, nrow = 3)

#### S = 0.1 ################################################

#h=0.5
set.seed(11)
a3<- 0.1
h7<- 0.5
p7<- rbinom(10000, 100, 0.5)
p7<- p7*0.01
N<- c(1:10000)
N



y7<-((a3^2/4)*(1-(1/(2*N)))*((1+(2*(h7)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p7)*(1-(p7)))+2*(1-(2/(2*N)))*((2*(h7)-1)*(2*(p7)*(1-(p7))*(1-2*(p7)))-(1-(3/(2*N)))*(2*(h7)-1)^2*((2*(p7)*(1-(p7)))^2))))


plot7<- qplot(N,y7)+ labs(y="post-bottleneck VA", x="No. Founders", title = "h=0.5")+theme_classic()+coord_cartesian(ylim = c(0,0.005))

#h=0.25
set.seed(12)
a3<- 0.1
h8<- 0.25
p8<- rbinom(10000, 100, 0.5)
p8<- p8*0.01
N<- c(1:10000)
N



y8<- ((a3^2/4)*(1-(1/(2*N)))*((1+(2*(h8)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p8)*(1-(p8)))+2*(1-(2/(2*N)))*((2*(h8)-1)*(2*(p8)*(1-(p8))*(1-2*(p8)))-(1-(3/(2*N)))*(2*(h8)-1)^2*((2*(p8)*(1-(p8)))^2))))


plot8<- qplot(N,y8)+ labs(y="post-bottleneck VA", x="No. Founders", title = "h=0.25")+theme_classic()+coord_cartesian(ylim = c(0,0.005))

#h=0.0
set.seed(13)
a3<- 0.1
h9<- 0.0
p9<- rbinom(10000, 100, 0.5)
p9<- p9*0.01
N<- c(1:10000)
N



y9<- ((a3^2/4)*(1-(1/(2*N)))*((1+(2*(h9)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p9)*(1-(p9)))+2*(1-(2/(2*N)))*((2*(h9)-1)*(2*(p9)*(1-(p9))*(1-2*(p9)))-(1-(3/(2*N)))*(2*(h9)-1)^2*((2*(p9)*(1-(p9)))^2))))


plot9<- qplot(N,y9)+ labs(y="post-bottleneck VA", x="No. Founders", title = "h=0.0")+theme_classic()+coord_cartesian(ylim = c(0,0.005))

plotS3<- ggarrange(plot7, plot8, plot9, ncol = 1, nrow = 3)

####### S=0.5 ###########################################################

#h=0.5
set.seed(14)
a4<- 0.15
h10<- 0.5
p10<- rbinom(10000, 100, 0.5)
p10<- p10*0.01
N<- c(1:10000)
N



y10<-((a4^2/4)*(1-(1/(2*N)))*((1+(2*(h10)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p10)*(1-(p10)))+2*(1-(2/(2*N)))*((2*(h10)-1)*(2*(p10)*(1-(p10))*(1-2*(p10)))-(1-(3/(2*N)))*(2*(h10)-1)^2*((2*(p10)*(1-(p10)))^2))))


plot10<- qplot(N,y10)+ labs(y="post-bottleneck VA", x="No. Founders", title = "h=0.5")+theme_classic()+coord_cartesian(ylim = c(0,0.005))

#h=0.25
set.seed(15)
a4<- 0.15
h11<- 0.25
p11<- rbinom(10000, 100, 0.5)
p11<- p11*0.01
N<- c(1:10000)
N



y11<- ((a4^2/4)*(1-(1/(2*N)))*((1+(2*(h11)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p11)*(1-(p11)))+2*(1-(2/(2*N)))*((2*(h11)-1)*(2*(p11)*(1-(p11))*(1-2*(p11)))-(1-(3/(2*N)))*(2*(h11)-1)^2*((2*(p11)*(1-(p11)))^2))))


plot11<- qplot(N,y11)+ labs(y="post-bottleneck VA", x="No. Founders", title = "h=0.25")+theme_classic()+coord_cartesian(ylim = c(0,0.005))

#h=0.0
set.seed(15)
a4<- 0.15
h12<- 0.0
p12<- rbinom(10000, 100, 0.5)
p12<- p12*0.01
N<- c(1:10000)
N



y12<- ((a4^2/4)*(1-(1/(2*N)))*((1+(2*(h12)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p12)*(1-(p12)))+2*(1-(2/(2*N)))*((2*(h12)-1)*(2*(p12)*(1-(p12))*(1-2*(p12)))-(1-(3/(2*N)))*(2*(h12)-1)^2*((2*(p12)*(1-(p12)))^2))))


plot12<- qplot(N,y12)+ labs(y="post-bottleneck VA", x="No. Founders", title = "h=0.0")+theme_classic()+coord_cartesian(ylim = c(0,0.005))

plotS4<- ggarrange(plot10, plot11, plot12, ncol = 1, nrow = 3)

FigureS5<- ggarrange(plotS1, plotS2, plotS3, plotS4, ncol = 4, nrow = 1)







## ==========================================================================
### Figure S6 ===============================================================
## ==========================================================================

h1<- 0.0
h2<- 0.25
h3<- 0.5

q1<- 0.3
q2<- 0.5 
q3<- 0.7

x<- c(0:250)

a1<- 0.01
a2<- 0.1 


#a=0.01, h=0, p=0.3
plot1<- -(a1^2*(-2*(2*h1-1)^2*q1*(1-q1)*(2*q1^2*(12*x^2-22*x+9)-2*q1*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*q1*(2*q1^2-3*q1+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.01, h=0, p=0.5
plot2<- -(a1^2*(-2*(2*h1-1)^2*q2*(1-q2)*(2*q2^2*(12*x^2-22*x+9)-2*q2*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*q2*(2*q2^2-3*q2+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.01, h=0, p=0.7
plot3<- -(a1^2*(-2*(2*h1-1)^2*q3*(1-q3)*(2*q3^2*(12*x^2-22*x+9)-2*q3*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*q3*(2*q3^2-3*q3+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.01, h=0.25, p=0.3
plot4<- -(a1^2*(-2*(2*h2-1)^2*q1*(1-q1)*(2*q1^2*(12*x^2-22*x+9)-2*q1*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h2-1)*q1*(2*q1^2-3*q1+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.01, h=0.25, p=0.5
plot5<- -(a1^2*(-2*(2*h2-1)^2*q2*(1-q2)*(2*q2^2*(12*x^2-22*x+9)-2*q2*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h2-1)*q2*(2*q2^2-3*q2+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.01, h=0.25, p=0.7
plot6<- -(a1^2*(-2*(2*h2-1)^2*q3*(1-q3)*(2*q3^2*(12*x^2-22*x+9)-2*q3*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h2-1)*q3*(2*q3^2-3*q3+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.01, h=0.5, p=0.3
plot7<- -(a1^2*(-2*(2*h3-1)^2*q1*(1-q1)*(2*q1^2*(12*x^2-22*x+9)-2*q1*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h3-1)*q1*(2*q1^2-3*q1+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.01, h=0.5, p=0.5
plot8<- -(a1^2*(-2*(2*h3-1)^2*q2*(1-q2)*(2*q2^2*(12*x^2-22*x+9)-2*q2*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h3-1)*q2*(2*q2^2-3*q2+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.01, h=0.5, p=0.7
plot9<- -(a1^2*(-2*(2*h3-1)^2*q3*(1-q3)*(2*q3^2*(12*x^2-22*x+9)-2*q3*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h3-1)*q3*(2*q3^2-3*q3+1)*x*(3*x-2)-x^2))/(8*x^4)




#a=0.1, h=0, p=0.3
plot10<- -(a2^2*(-2*(2*h1-1)^2*q1*(1-q1)*(2*q1^2*(12*x^2-22*x+9)-2*q1*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*q1*(2*q1^2-3*q1+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.1, h=0, p=0.5
plot11<- -(a2^2*(-2*(2*h1-1)^2*q2*(1-q2)*(2*q2^2*(12*x^2-22*x+9)-2*q2*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*q2*(2*q2^2-3*q2+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.1, h=0, p=0.7
plot12<- -(a2^2*(-2*(2*h1-1)^2*q3*(1-q3)*(2*q3^2*(12*x^2-22*x+9)-2*q3*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*q3*(2*q3^2-3*q3+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.1, h=0.25, p=0.3
plot13<- -(a2^2*(-2*(2*h2-1)^2*q1*(1-q1)*(2*q1^2*(12*x^2-22*x+9)-2*q1*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h2-1)*q1*(2*q1^2-3*q1+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.1, h=0.25, p=0.5
plot14<- -(a2^2*(-2*(2*h2-1)^2*q2*(1-q2)*(2*q2^2*(12*x^2-22*x+9)-2*q2*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h2-1)*q2*(2*q2^2-3*q2+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.1, h=0.25, p=0.7
plot15<- -(a2^2*(-2*(2*h2-1)^2*q3*(1-q3)*(2*q3^2*(12*x^2-22*x+9)-2*q3*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h2-1)*q3*(2*q3^2-3*q3+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.1, h=0.5, p=0.3
plot16<- -(a2^2*(-2*(2*h3-1)^2*q1*(1-q1)*(2*q1^2*(12*x^2-22*x+9)-2*q1*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h3-1)*q1*(2*q1^2-3*q1+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.1, h=0.5, p=0.5
plot17<- -(a2^2*(-2*(2*h3-1)^2*q2*(1-q2)*(2*q2^2*(12*x^2-22*x+9)-2*q2*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h3-1)*q2*(2*q2^2-3*q2+1)*x*(3*x-2)-x^2))/(8*x^4)
#a=0.1, h=0.5, p=0.7
plot18<- -(a2^2*(-2*(2*h3-1)^2*q3*(1-q3)*(2*q3^2*(12*x^2-22*x+9)-2*q3*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h3-1)*q3*(2*q3^2-3*q3+1)*x*(3*x-2)-x^2))/(8*x^4)



purifying1<- cbind(x,plot1)
purifying2<- cbind(x,plot2)
purifying3<- cbind(x,plot3)
purifying4<- cbind(x,plot4)
purifying5<- cbind(x,plot5)
purifying6<- cbind(x,plot6)
purifying7<- cbind(x,plot7)
purifying8<- cbind(x,plot8)
purifying9<- cbind(x,plot9)
purifying10<- cbind(x,plot1)
purifying11<- cbind(x,plot2)
purifying12<- cbind(x,plot3)
purifying13<- cbind(x,plot4)
purifying14<- cbind(x,plot5)
purifying15<- cbind(x,plot6)
purifying16<- cbind(x,plot7)
purifying17<- cbind(x,plot8)
purifying18<- cbind(x,plot9)

purifying1<- as.data.frame(purifying1)
purifying2<- as.data.frame(purifying2)
purifying3<- as.data.frame(purifying3)
purifying4<- as.data.frame(purifying4)
purifying5<- as.data.frame(purifying5)
purifying6<- as.data.frame(purifying6)
purifying7<- as.data.frame(purifying7)
purifying8<- as.data.frame(purifying8)
purifying9<- as.data.frame(purifying9)
purifying10<- as.data.frame(purifying10)
purifying11<- as.data.frame(purifying11)
purifying12<- as.data.frame(purifying12)
purifying13<- as.data.frame(purifying13)
purifying14<- as.data.frame(purifying14)
purifying15<- as.data.frame(purifying15)
purifying16<- as.data.frame(purifying16)
purifying17<- as.data.frame(purifying17)
purifying18<- as.data.frame(purifying18)

purifyingplot1<- ggplot(purifying1, aes(x = x, y = plot1))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.01 h=0.0, q=0.3")+
  geom_line()

purifyingplot2<- ggplot(purifying2, aes(x = x, y = plot2))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.01 h=0.0, q=0.5")+
  geom_line()

purifyingplot3<- ggplot(purifying3, aes(x = x, y = plot3))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.01 h=0.0, q=0.7")+
  geom_line()

purifyingplot4<- ggplot(purifying4, aes(x = x, y = plot4))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.01 h=0.25, q=0.3")+
  geom_line()


purifyingplot5<- ggplot(purifying5, aes(x = x, y = plot5))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.01 h=0.25, q=0.5")+
  geom_line()


purifyingplot6<- ggplot(purifying6, aes(x = x, y = plot6))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.01 h=0.25, q=0.7")+
  geom_line()

purifyingplot7<- ggplot(purifying7, aes(x = x, y = plot7))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.01 h=0.5, q=0.3")+
  geom_line()


purifyingplot8<- ggplot(purifying8, aes(x = x, y = plot8))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.01 h=0.5, q=0.5")+
  geom_line()

purifyingplot9<- ggplot(purifying9, aes(x = x, y = plot9))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.01 h=0.5, q=0.7")+
  geom_line()

purifyingplot10<- ggplot(purifying10, aes(x = x, y = plot10))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.1 h=0.0, q=0.3")+
  geom_line()

purifyingplot11<- ggplot(purifying11, aes(x = x, y = plot11))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.1 h=0.0, q=0.5")+
  geom_line()

purifyingplot12<- ggplot(purifying12, aes(x = x, y = plot12))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.1 h=0.0, q=0.7")+
  geom_line()

purifyingplot13<- ggplot(purifying13, aes(x = x, y = plot13))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.1 h=0.25, q=0.3")+
  geom_line()


purifyingplot14<- ggplot(purifying14, aes(x = x, y = plot14))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.1 h=0.25, q=0.5")+
  geom_line()


purifyingplot15<- ggplot(purifying15, aes(x = x, y = plot15))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.1 h=0.25, q=0.7")+
  geom_line()

purifyingplot16<- ggplot(purifying16, aes(x = x, y = plot16))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.1 h=0.5, q=0.3")+
  geom_line()


purifyingplot17<- ggplot(purifying17, aes(x = x, y = plot17))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.1 h=0.5, q=0.5")+
  geom_line()

purifyingplot18<- ggplot(purifying18, aes(x = x, y = plot18))+
  labs(x = "No. Founders", y = "dEVA/dNF", title = "s= 0.1 h=0.5, q=0.7")+
  geom_line()


figureS6_1<- ggarrange(purifyingplot1, purifyingplot2, purifyingplot3,
                                purifyingplot4, purifyingplot5, purifyingplot6, 
                                purifyingplot7, purifyingplot8, purifyingplot9)

figureS6_2<- ggarrange(purifyingplot10, purifyingplot11, purifyingplot12, 
                                purifyingplot13, purifyingplot14, purifyingplot15, 
                                purifyingplot16, purifyingplot17, purifyingplot18)



## =======================================================================================
## Figure S7 - The number of founders required to maintain the maximum amount of additive variance 
##  under various combinations of dominance coefficents and selection coefficients under different allele frequencies for a model of purifying selection

### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,100)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 






for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- -(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.1, a= (log(d*0.01)))
    max3<-multiroot(f=fun3,start=c(1), maxiter=100000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}




w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=-(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=0.1, a=(log(w*0.01)))
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


w.vec


z<- rbind(w.vec,z)

rownames(z)<- seq(0.0, 0.5,by=0.005)
colnames(z)<- seq(0.01, 1.0,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "Nf"


plot1<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = Nf))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.1")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 30, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))




## p=0.2 ################################################################################## 

### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,100)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 



## Nested loop  

maxiter=1000

for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- -(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.2, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=100000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z


w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=-(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=0.2, a=(w*0.01))
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


z<- rbind(w.vec,z)

rownames(z)<- seq(0.00, 0.5,by=0.005)
colnames(z)<- seq(0.01, 1.0,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "Nf"


plot2<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = Nf))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.2")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 30, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))



## p=0.3 ################################################################################## 

### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,100)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 



## Nested loop for low selection coefficient, a= 0.01 

maxiter=1000

for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- -(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.3, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=100000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=-(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=0.3, a=(w*0.01))
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


z<- rbind(w.vec,z)

z




rownames(z)<- seq(0.00, 0.5,by=0.005)
colnames(z)<- seq(0.01, 1.0,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "Nf"


plot3<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = Nf))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.3")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 30, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))



## p=0.4 ################################################################################## 

### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,100)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 



## Nested loop for low selection coefficient, a= 0.01 

maxiter=1000

for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- -(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.4, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=100000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z


w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=-(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=0.4, a=(w*0.01))
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


z<- rbind(w.vec,z)




rownames(z)<- seq(0.00, 0.5,by=0.005)
colnames(z)<- seq(0.01, 1.0,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "Nf"


plot4<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = Nf))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.4")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 30, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))



## p=0.5 ################################################################################## 

### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,100)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 



## Nested loop for low selection coefficient, a= 0.01 

maxiter=1000

for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- -(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.5, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=100000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z

w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=-(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=0.5, a=(w*0.01))
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


z<- rbind(w.vec,z)




rownames(z)<- seq(0.00, 0.5,by=0.005)
colnames(z)<- seq(0.01, 1.0,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "Nf"


plot5<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = Nf))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.5")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 30, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))


## p=0.6 ################################################################################## 

### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,100)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 



## Nested loop for low selection coefficient, a= 0.01 

maxiter=1000

for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- -(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.6, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=100000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z


w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=-(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=0.6, a=(w*0.01))
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


z<- rbind(w.vec,z)




rownames(z)<- seq(0.00, 0.5,by=0.005)
colnames(z)<- seq(0.01, 1.0,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "Nf"


plot6<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = Nf))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.6")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 30, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))






## p=0.7 ################################################################################## 

### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,100)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 



## Nested loop for low selection coefficient, a= 0.01 

maxiter=1000

for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- -(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.7, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=100000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z


w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=-(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=0.7, a=(w*0.01))
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


z<- rbind(w.vec,z)




rownames(z)<- seq(0.00, 0.5,by=0.005)
colnames(z)<- seq(0.01, 1.0,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "Nf"


plot7<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = Nf))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.7")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 30, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))



## p=0.8 ################################################################################## 

### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,100)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 



## Nested loop for low selection coefficient, a= 0.01 

maxiter=1000

for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- -(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.8, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=100000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z



w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=-(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=0.8, a=(w*0.01))
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


z<- rbind(w.vec,z)




rownames(z)<- seq(0.00, 0.5,by=0.005)
colnames(z)<- seq(0.01, 1.0,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "Nf"


plot8<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = Nf))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.8")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 30, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))




## p=0.9 ################################################################################## 

### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,100)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 



## Nested loop for low selection coefficient, a= 0.01 

maxiter=1000

for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- -(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.9, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=100000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z


w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=-(a^2*(-2*(2*h1-1)^2*p*(1-p)*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)-4*(2*h1-1)*p*(2*p^2-3*p+1)*x*(3*x-2)-x^2))/(8*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=0.9, a=(w*0.01))
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


z<- rbind(w.vec,z)






rownames(z)<- seq(0.00, 0.5,by=0.005)
colnames(z)<- seq(0.01, 1.0,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "Nf"


plot9<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = Nf))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.9")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 30, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))




figureS7<- ggarrange(plot1, plot2, plot3, plot4, plot5, plot6, plot7, plot8, plot9)



