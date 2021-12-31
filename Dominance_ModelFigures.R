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


# VA_2<- 2*p*(1+2*d+d^2)-2*p^2*(1+6*d+5*d1^2)+8*p^3*(d+2*d^2)-8*p^4*d^2 # Expanded out 


## Post-bottleneck additive genetic variance equation (i.e. estimated additive variance)



# EVA<- ((p*(1-p)*(2*N-1)/N^3)*((d*N+N-d)^2-2*d*p*(N-1)*(2*N*(d+1)-3*d-d*(2*N-3)*p)))


## Derivative of EVA-post-bottleneck additive genetic variance 

# dEVA<- -(((1-q)-1)*(1-q)*(d^2*(2*(1-q)^2*(12*x^2-22*x+9)-2*(1-q)*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*d*x*((1-q)*(4-6*x)+3*x-2)+x^2))/x^4


## d= (-2*h+1)



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
  labs(x="Recessive Allele Frequency (q)", y="VA ratio", title = "2 founders", color = "h", group="h")+
  geom_line(aes(color=Var1))+
  geom_point(aes(color=Var1))+
  theme_classic()+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
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
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
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



a.vec<- rep(0,50)
for (q in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    a.vec[N]<- figure_2_func(1,0,N,(h1*0.05))
  }
}



b.vec<- rep(0,50)
for (q in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    b.vec[N]<- figure_2_func(1,0,N,(h2*0.05))
  }
}

c.vec<- rep(0,50)
for (q in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    c.vec[N]<- figure_2_func(1,0,N,(h3*0.05))
  }
}


d.vec<- rep(0,50)
for (q in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    d.vec[N]<- figure_2_func(1,0,N,(h4*0.05))
  }
}

e.vec<- rep(0,50)
for (q in 1:length(x.vec)){
  for (N in 1:length(N.vec)){
    e.vec[N]<- figure_2_func(1,0,N,(h5*0.05))
  }
}

a<- rbind(a.vec,a)
b<- rbind(b.vec,b)
c<- rbind(c.vec,c)
d<- rbind(d.vec,d)
e<- rbind(e.vec,e)



## Row and column names 
rownames(a)<- seq(0.0,1,by=0.1)
rownames(b)<- seq(0.0,1,by=0.1)
rownames(c)<- seq(0.0,1,by=0.1)
rownames(d)<- seq(0.0,1,by=0.1)
rownames(e)<- seq(0.0,1,by=0.1)

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
  labs(x="NF", y="E(VA)", title = "h=0.0", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,1.0))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")

### h=0.15 figure 
model1_figureb<- melt(b)
as.data.frame(model1_figureb)
model1_figureb
model1_figureb$Var2<- as.factor(model1_figureb$Var2)
model1_figureb$Var1<- as.factor(model1_figureb$Var1)
colnames(model1_figureb)

plotb<- ggplot(model1_figureb, aes(x=Var2, y=value, group = Var1)) +
  labs(x="NF", y="E(VA)", title = "h=0.15", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,1.0))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")

### h=0.25 figure 
model1_figurec<- melt(c)
as.data.frame(model1_figurec)
model1_figurec
model1_figurec$Var2<- as.factor(model1_figurec$Var2)
model1_figurec$Var1<- as.factor(model1_figurec$Var1)
colnames(model1_figurec)

plotc<- ggplot(model1_figurec, aes(x=Var2, y=value, group = Var1)) +
  labs(x="NF", y="E(VA)", title = "h=0.25", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,1.0))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
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
  labs(x="NF", y="E(VA)", title = "h=0.35", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,1.0))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")



### h=0.5 figure 
model1_figuree<- melt(e)
as.data.frame(model1_figuree)
model1_figuree
model1_figuree$Var2<- as.factor(model1_figuree$Var2)
model1_figuree$Var1<- as.factor(model1_figuree$Var1)
colnames(model1_figuree)

plote<- ggplot(model1_figuree, aes(x=Var2, y=value, group = Var1)) +
  labs(x="NF", y="E(VA)", title = "h=0.5", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,1.0))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")

figure2<- ggarrange(plota, plotb, plotc, plotd, plote)
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

names(model1_figured)[3]<- "NF"

figure3<- ggplot(model1_figured, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = NF))+
  scale_fill_gradient(low = "yellow", high = "Red")+
  labs(x="Recessive Allele frequency (q)", y="Dominance Coefficient (h)", title = "Number of Founders for Maximum VA")+ 
  theme_classic()+
  scale_x_discrete(breaks = c(0.01,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,0.99))+
  scale_y_discrete(breaks = c(0.05,0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18), 
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

# VAF<- (a^2/4)*(1-(1/(2*N)))*((1+d^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*p*(1-p))+2*(1-(2/(2*N)))*(d*(2*p*(1-p)*(1-2*p))-(1-(3/(2*N)))*d^2*((2*p*(1-p))^2)))




## Derivative of EVA-post-bottleneck additive genetic variance 

# dVAF<- (a^2*p*(1-p)*(d^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*d*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)



## In the code and the figures, we changed the variable p (in Zhang et al.) to q for consistency with the Willis and Orr neutral model




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


#### Number of founders

NF<- 2 
NF2<- 20
NF3<- 200

## Note that Zhang et al., 2004b denotes p as the mutant frequency, we have changed this to q for continuity with the neutral model
figure_4_func<- function(a,p,N,h){
  figure_4<- ((a1^2/4)*(1-(1/(2*N)))*((1+(2*h-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*p*(1-p))+2*(1-(2/(2*N)))*((2*h-1)*(2*p*(1-p)*(1-2*p))-(1-(3/(2*N)))*(2*h-1)^2*((2*p*(1-p))^2))))/((a1^2/4)*((1+(2*h-1)^2)*(2*p*(1-p))+2*(2*h-1)*(2*p*(1-p)*(1-2*p))-2*(2*h-1)^2*((2*p*(1-p))^2)))
  figure_4
}

## Low selection
for (h in 1:length(h.vec)) {
  for (p in 1:length(p.vec))  {
    e[h,p]<- figure_4_func(a1,(p*0.1),NF,(h*0.05))
    
    
  }
}

for (h in 1:length(h.vec)) {
  for (p in 1:length(p.vec))  {
    f[h,p]<- figure_4_func(a1,(p*0.1),NF2,(h*0.05))
    
    
  }
}

for (h in 1:length(h.vec)) {
  for (p in 1:length(p.vec))  {
    g[h,p]<- figure_4_func(a1,(p*0.1),NF3,(h*0.05))
    
    
  }
}




z.vec<- rep(0,9)
for (p in 1:length(z.vec)){
  z.vec[p]<- figure_4_func(a1,(p*0.1),NF,0)
}
z.vec

x.vec<- rep(0,9)
for (p in 1:length(x.vec)){
  x.vec[p]<- figure_4_func(a1,(p*0.1),NF2,0)
}
x.vec

y.vec<- rep(0,9)
for (p in 1:length(y.vec)){
  y.vec[p]<- figure_4_func(a1,(p*0.1),NF3,0)
}
y.vec


e<- rbind(z.vec,e)

f<- rbind(x.vec,f)

g<- rbind(y.vec,g)



## High selection
for (h in 1:length(h.vec)) {
  for (p in 1:length(p.vec))  {
    i[h,p]<- figure_4_func(a2,(p*0.1),NF,(h*0.05))
    
    
  }
}

for (h in 1:length(h.vec)) {
  for (p in 1:length(p.vec))  {
    j[h,p]<- figure_4_func(a2,(p*0.1),NF2,(h*0.05))
    
    
  }
}

for (h in 1:length(h.vec)) {
  for (p in 1:length(p.vec))  {
    k[h,p]<- figure_4_func(a2,(p*0.1),NF3,(h*0.05))
    
    
  }
}




w.vec<- rep(0,9)
for (p in 1:length(w.vec)){
  w.vec[p]<- figure_4_func(a2,(p*0.1),NF,0)
}
w.vec

v.vec<- rep(0,9)
for (p in 1:length(v.vec)){
  v.vec[p]<- figure_4_func(a2,(p*0.1),NF2,0)
}
v.vec

t.vec<- rep(0,9)
for (p in 1:length(t.vec)){
  t.vec[p]<- figure_4_func(a2,(p*0.1),NF3,0)
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
  labs(x="Mutant frequency (q)", y="VA ratio", title = "2 founders        Weak Selection", color = "h")+
  geom_line(aes(color=Var1))+
  geom_point(aes(color=Var1))+
  theme_classic()+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18), 
        title = element_text(size = 15, face = "bold"),
        legend.position = "none")



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
        legend.position = "none")



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
        legend.position = "none")



plotlowselection <- ggarrange(plote, plotf, plotg, ncol = 1, nrow = 3)




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
  labs(x="Mutant frequency (q)", y="VA ratio", title = "2 founders        Strong Selection", color = "h")+
  geom_line(aes(color=Var1))+
  geom_point(aes(color=Var1))+
  theme_classic()+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 15), 
        title = element_text(size = 15, face = "bold"),
        legend.position = "none")



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
        legend.position = "none")

plothighselection<- ggarrange(ploti, plotj, plotk, ncol = 1, nrow = 3, common.legend = TRUE, legend = "right")

figure4<- ggarrange(plotlowselection, plothighselection, common.legend = TRUE, legend = "right")

figure4

## =======================================================================================
## Figure 5 - Post-bottleneck VA under various selection coefficients as a response to NF (number of founders)
### Note, I did not use simplified functions for this model 



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

a.vec<- rep(0,50)
for (N in 1:length(N.vec)){
  a.vec[N]<- ((a1^2/4)*(1-(1/(2*N)))*((1+(2*(h1)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(0*0.1)*(1-(0*0.1)))+2*(1-(2/(2*N)))*((2*(h1)-1)*(2*(0*0.1)*(1-(0*0.1))*(1-2*(0*0.1)))-(1-(3/(2*N)))*(2*(h1)-1)^2*((2*(0*0.1)*(1-(0*0.1)))^2))))
}

b.vec<- rep(0,50)
for (N in 1:length(N.vec)){
  b.vec[N]<- ((a1^2/4)*(1-(1/(2*N)))*((1+(2*(h2)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(0*0.1)*(1-(0*0.1)))+2*(1-(2/(2*N)))*((2*(h2)-1)*(2*(0*0.1)*(1-(0*0.1))*(1-2*(0*0.1)))-(1-(3/(2*N)))*(2*(h2)-1)^2*((2*(0*0.1)*(1-(0*0.1)))^2))))
}

c.vec<- rep(0,50)
for (N in 1:length(N.vec)){
  c.vec[N]<- ((a1^2/4)*(1-(1/(2*N)))*((1+(2*(h3)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(0*0.1)*(1-(0*0.1)))+2*(1-(2/(2*N)))*((2*(h3)-1)*(2*(0*0.1)*(1-(0*0.1))*(1-2*(0*0.1)))-(1-(3/(2*N)))*(2*(h3)-1)^2*((2*(0*0.1)*(1-(0*0.1)))^2))))
}

a<- rbind(a.vec,a)
b<- rbind(b.vec,b)
c<- rbind(c.vec,c)

rownames(a)<- seq(0.0,1,by=0.1)
rownames(b)<- seq(0.0,1,by=0.1)
rownames(c)<- seq(0.0,1,by=0.1)

colnames(a)<- seq(1,50,by=1)
colnames(b)<- seq(1,50,by=1)
colnames(c)<- seq(1,50,by=1)



### h=0.0
model2_figureA<- melt(a)
as.data.frame(model2_figureA)
model2_figureA
model2_figureA$Var2<- as.factor(model2_figureA$Var2)
model2_figureA$Var1<- as.factor(model2_figureA$Var1)
colnames(model2_figureA)

plota<- ggplot(model2_figureA, aes(x=Var2, y=value, group = Var1)) +
  labs(x="NF", y="E[f(VA)]", title = "h=0.0", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,0.0000002))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x =element_text(face = "bold", color = "black", size = 18),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")


### h=0.25
model2_figureb<- melt(b)
as.data.frame(model2_figureb)
model2_figureb
model2_figureb$Var2<- as.factor(model2_figureb$Var2)
model2_figureb$Var1<- as.factor(model2_figureb$Var1)
colnames(model2_figureb)

plotb<- ggplot(model2_figureb, aes(x=Var2, y=value, group = Var1)) +
  labs(x="NF", y="E[f(VA)]", title = "h=0.25", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,0.0000002))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")
### h=0.5
model2_figurec<- melt(c)
as.data.frame(model2_figurec)
model2_figurec
model2_figurec$Var2<- as.factor(model2_figurec$Var2)
model2_figurec$Var1<- as.factor(model2_figurec$Var1)
colnames(model2_figurec)

plotc<- ggplot(model2_figurec, aes(x=Var2, y=value, group = Var1)) +
  labs(x="NF", y="E[f(VA)]", title = "h=0.5", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,0.0000002))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")






g1<- ggarrange(plotc, plotb, plota, ncol = 1, nrow = 3)





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

d.vec<- rep(0,50)
for (N in 1:length(N.vec)){
  d.vec[N]<- ((a2^2/4)*(1-(1/(2*N)))*((1+(2*(h1)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(0*0.1)*(1-(0*0.1)))+2*(1-(2/(2*N)))*((2*(h1)-1)*(2*(0*0.1)*(1-(0*0.1))*(1-2*(0*0.1)))-(1-(3/(2*N)))*(2*(h1)-1)^2*((2*(0*0.1)*(1-(0*0.1)))^2))))
}

e.vec<- rep(0,50)
for (N in 1:length(N.vec)){
  e.vec[N]<- ((a2^2/4)*(1-(1/(2*N)))*((1+(2*(h2)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(0*0.1)*(1-(0*0.1)))+2*(1-(2/(2*N)))*((2*(h2)-1)*(2*(0*0.1)*(1-(0*0.1))*(1-2*(0*0.1)))-(1-(3/(2*N)))*(2*(h2)-1)^2*((2*(0*0.1)*(1-(0*0.1)))^2))))
}

f.vec<- rep(0,50)
for (N in 1:length(N.vec)){
  f.vec[N]<- ((a2^2/4)*(1-(1/(2*N)))*((1+(2*(h3)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(0*0.1)*(1-(0*0.1)))+2*(1-(2/(2*N)))*((2*(h3)-1)*(2*(0*0.1)*(1-(0*0.1))*(1-2*(0*0.1)))-(1-(3/(2*N)))*(2*(h3)-1)^2*((2*(0*0.1)*(1-(0*0.1)))^2))))
}


d<- rbind(d.vec,d)
e<- rbind(e.vec,e)
f<- rbind(f.vec,f)


rownames(d)<- seq(0.0,1,by=0.1)
rownames(e)<- seq(0.0,1,by=0.1)
rownames(f)<- seq(0.0,1,by=0.1)

colnames(d)<- seq(1,50,by=1)
colnames(e)<- seq(1,50,by=1)
colnames(f)<- seq(1,50,by=1)

### h=0.0
model2_figureD<- melt(d)
as.data.frame(model2_figureD)
model2_figureD
model2_figureD$Var2<- as.factor(model2_figureD$Var2)
model2_figureD$Var1<- as.factor(model2_figureD$Var1)
colnames(model2_figureD)

plotd<- ggplot(model2_figureD, aes(x=Var2, y=value, group = Var1)) +
  labs(x="NF", y="E[f(VA)]", title = "h=0.0", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,0.00002))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")

### h=0.25
model2_figuree<- melt(e)
as.data.frame(model2_figuree)
model2_figuree
model2_figuree$Var2<- as.factor(model2_figuree$Var2)
model2_figuree$Var1<- as.factor(model2_figuree$Var1)
colnames(model2_figuree)

plote<- ggplot(model2_figuree, aes(x=Var2, y=value, group = Var1)) +
  labs(x="NF", y="E[f(VA)]", title = "h=0.25", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,0.00002))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")

### h=0.5
model2_figuref<- melt(f)
as.data.frame(model2_figuref)
model2_figuref
model2_figuref$Var2<- as.factor(model2_figuref$Var2)
model2_figuref$Var1<- as.factor(model2_figuref$Var1)
colnames(model2_figuref)

plotf<- ggplot(model2_figuref, aes(x=Var2, y=value, group = Var1)) +
  labs(x="NF", y="E[f(VA)]", title = "h=0.5", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0,0.00002))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")




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

g.vec<- rep(0,50)
for (N in 1:length(N.vec)){
  g.vec[N]<- ((a3^2/4)*(1-(1/(2*N)))*((1+(2*(h1)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(0*0.1)*(1-(0*0.1)))+2*(1-(2/(2*N)))*((2*(h1)-1)*(2*(0*0.1)*(1-(0*0.1))*(1-2*(0*0.1)))-(1-(3/(2*N)))*(2*(h1)-1)^2*((2*(0*0.1)*(1-(0*0.1)))^2))))
}

h.vec<- rep(0,50)
for (N in 1:length(N.vec)){
  h.vec[N]<- ((a3^2/4)*(1-(1/(2*N)))*((1+(2*(h2)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(0*0.1)*(1-(0*0.1)))+2*(1-(2/(2*N)))*((2*(h2)-1)*(2*(0*0.1)*(1-(0*0.1))*(1-2*(0*0.1)))-(1-(3/(2*N)))*(2*(h2)-1)^2*((2*(0*0.1)*(1-(0*0.1)))^2))))
}



i.vec<- rep(0,50)
for (N in 1:length(N.vec)){
  i.vec[N]<- ((a3^2/4)*(1-(1/(2*N)))*((1+(2*(h3)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(0*0.1)*(1-(0*0.1)))+2*(1-(2/(2*N)))*((2*(h3)-1)*(2*(0*0.1)*(1-(0*0.1))*(1-2*(0*0.1)))-(1-(3/(2*N)))*(2*(h3)-1)^2*((2*(0*0.1)*(1-(0*0.1)))^2))))
}

g<- rbind(g.vec,g)
h<- rbind(h.vec,h)
i<- rbind(i.vec,i)



rownames(g)<- seq(0.0,1,by=0.1)
rownames(h)<- seq(0.0,1,by=0.1)
rownames(i)<- seq(0.0,1,by=0.1)


colnames(g)<- seq(1,50,by=1)
colnames(h)<- seq(1,50,by=1)
colnames(i)<- seq(1,50,by=1)


### h=0.0
model2_figureg<- melt(g)
as.data.frame(model2_figureg)
model2_figureg
model2_figureg$Var2<- as.factor(model2_figureg$Var2)
model2_figureg$Var1<- as.factor(model2_figureg$Var1)
colnames(model2_figureg)

plotg<- ggplot(model2_figureg, aes(x=Var2, y=value, group = Var1)) +
  labs(x="NF", y="E[f(VA)]", title = "h=0.0", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0000,0.002))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")

### h=0.25
model2_figureh<- melt(h)
as.data.frame(model2_figureh)
model2_figureh
model2_figureh$Var2<- as.factor(model2_figureh$Var2)
model2_figureh$Var1<- as.factor(model2_figureh$Var1)
colnames(model2_figureh)

ploth<- ggplot(model2_figureh, aes(x=Var2, y=value, group = Var1)) +
  labs(x="NF", y="E[f(VA)]", title = "h=0.25", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0000,0.002))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")

### h=0.5
model2_figurei<- melt(i)
as.data.frame(model2_figurei)
model2_figurei
model2_figurei$Var2<- as.factor(model2_figurei$Var2)
model2_figurei$Var1<- as.factor(model2_figurei$Var1)
colnames(model2_figurei)

ploti<- ggplot(model2_figurei, aes(x=Var2, y=value, group = Var1)) +
  labs(x="NF", y="E[f(VA)]", title = "h=0.5", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0000,0.002))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")

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

j.vec<- rep(0,50)

for (N in 1:length(N.vec)){
  j.vec[N]<- ((a4^2/4)*(1-(1/(2*N)))*((1+(2*(h1)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(0*0.1)*(1-(0*0.1)))+2*(1-(2/(2*N)))*((2*(h1)-1)*(2*(0*0.1)*(1-(0*0.1))*(1-2*(0*0.1)))-(1-(3/(2*N)))*(2*(h1)-1)^2*((2*(0*0.1)*(1-(0*0.1)))^2))))
}



k.vec<- rep(0,50)
for (N in 1:length(N.vec)){
  k.vec[N]<- ((a4^2/4)*(1-(1/(2*N)))*((1+(2*(h2)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(0*0.1)*(1-(0*0.1)))+2*(1-(2/(2*N)))*((2*(h2)-1)*(2*(0*0.1)*(1-(0*0.1))*(1-2*(0*0.1)))-(1-(3/(2*N)))*(2*(h2)-1)^2*((2*(0*0.1)*(1-(0*0.1)))^2))))
}


l.vec<- rep(0,50)

for (N in 1:length(N.vec)){
  l.vec[N]<- ((a4^2/4)*(1-(1/(2*N)))*((1+(2*(h3)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(0*0.1)*(1-(0*0.1)))+2*(1-(2/(2*N)))*((2*(h3)-1)*(2*(0*0.1)*(1-(0*0.1))*(1-2*(0*0.1)))-(1-(3/(2*N)))*(2*(h3)-1)^2*((2*(0*0.1)*(1-(0*0.1)))^2))))
}


j<- rbind(j.vec,j)
k<- rbind(k.vec,k)
l<- rbind(l.vec,l)



rownames(j)<- seq(0.0,1,by=0.1)
rownames(k)<- seq(0.0,1,by=0.1)
rownames(l)<- seq(0.0,1,by=0.1)


colnames(j)<- seq(1,50,by=1)
colnames(k)<- seq(1,50,by=1)
colnames(l)<- seq(1,50,by=1)



### h=0.0
model2_figurej<- melt(j)
as.data.frame(model2_figurej)
model2_figurej
model2_figurej$Var2<- as.factor(model2_figurej$Var2)
model2_figurej$Var1<- as.factor(model2_figurej$Var1)
colnames(model2_figurej)

plotj<- ggplot(model2_figurej, aes(x=Var2, y=value, group = Var1)) +
  labs(x="NF", y="E[f(VA)]", title = "h=0.0", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0000,0.05))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 13),
        axis.title.x = element_text(face = "bold", color = "black", size = 15),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")

### h=0.25
model2_figurek<- melt(k)
as.data.frame(model2_figurek)
model2_figurek
model2_figurek$Var2<- as.factor(model2_figurek$Var2)
model2_figurek$Var1<- as.factor(model2_figurek$Var1)
colnames(model2_figurek)

plotk<- ggplot(model2_figurek, aes(x=Var2, y=value, group = Var1)) +
  labs(x="NF", y="E[f(VA)]", title = "h=0.25", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0000,0.05))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size =18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")

### h=0.5
model2_figurel<- melt(l)
as.data.frame(model2_figurel)
model2_figurel
model2_figurel$Var2<- as.factor(model2_figurel$Var2)
model2_figurel$Var1<- as.factor(model2_figurel$Var1)
colnames(model2_figurel)

plotl<- ggplot(model2_figurel, aes(x=Var2, y=value, group = Var1)) +
  labs(x="NF", y="E[f(VA)]", title = "h=0.5", color = "q")+
  geom_line(aes(color=Var1))+
  theme_classic()+
  coord_cartesian(xlim = c(0,50), ylim = c(0.0000,0.05))+
  scale_x_discrete(breaks = c(1,25,50))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 13),
        axis.title.y = element_text(face = "bold", color = "black", size = 18),
        title = element_text(size = 20, face = "bold"),
        legend.position = "none")




g4<- ggarrange(plotl, plotk, plotj, ncol = 1, nrow = 3, common.legend = TRUE, legend = "right")



figure5<- ggarrange(g1, g2, g3, g4, nrow = 1, ncol = 4, common.legend = TRUE, legend = "right") ## Will need to add selection coefficient labels in Adobe Illustrator
figure5


# =======================================================================================
## Figure 6 - The number of founders required to maintain the maximum amount of additive variance 
##  under various combinations of dominance coefficients and selection coefficients under different allele frequencies for a model of purifying selection


#### s = 0.001 ###########################################################
### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,99)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 






for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=(d*0.01), a=0.001)
    max3<-multiroot(f=fun3,start=c(1), maxiter=1000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}




w.vec<- rep(0,99)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA<- (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
    return(c(dEVA=dEVA))})}
  params=c(h1=0,p=(d*0.01), a=0.001)
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


w.vec


z<- rbind(w.vec,z)

rownames(z)<- seq(0.0, 0.5,by=0.005)
colnames(z)<- seq(0.01, 0.99,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "NF"


plot1<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = NF))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Mutant Frequency (q)", y="Dominance Coefficient (h)", title = "s=0.001")+
  scale_x_discrete(breaks = c(0.01,0.25,0.5,0.75,0.99))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 13), 
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))




## s=0.01 ################################################################################## 

### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,99)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 



## Nested loop  


for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=(d*0.01), a= 0.01)
    max3<-multiroot(f=fun3,start=c(1), maxiter=1000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z


w.vec<- rep(0,99)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=(a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=(w*0.01), a=0.01)
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


z<- rbind(w.vec,z)

rownames(z)<- seq(0.00, 0.5,by=0.005)
colnames(z)<- seq(0.01, 0.99,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "NF"


plot2<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = NF))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Mutant Frequency (q)", y="Dominance Coefficient (h)", title = "s=0.01")+
  scale_x_discrete(breaks = c(0.01,0.25,0.5,0.75,0.99))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 13), 
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))



## s = 0.1  ################################################################################## 

### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,99)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 



## Nested loop for low selection coefficient, a= 0.1 


for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=(d*0.01), a= 0.1)
    max3<-multiroot(f=fun3, start=c(1), maxiter=1000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


w.vec<- rep(0,99)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=(a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=(w*0.01), a=0.1)
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


z<- rbind(w.vec,z)

z




rownames(z)<- seq(0.00, 0.5,by=0.005)
colnames(z)<- seq(0.01, 0.99,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "NF"


plot3<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = NF))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Mutant Frequency (q)", y="Dominance Coefficient (h)", title = "s=0.1")+
  scale_x_discrete(breaks = c(0.01,0.25,0.5,0.75,0.99))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_text(face = "bold", color = "black", size = 13),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 13), 
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))



## s=0.5  ################################################################################## 

### Set up continuous scale of selection coefficients 
c.vec<- rep(0,100)
d.vec<- rep(0,99)


## Set up empty matrix 
z<- matrix(0,length(c.vec), length(d.vec))
z 



## Nested loop for low selection coefficient, a= 0.01 


for (c in 1:length(c.vec)){
  for (d in 1:length(d.vec)){
    fun3=function(x){with(as.list(params3),{
      #derivative of variance function with respect to number of founders 
      dVAFi2 <- (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=(d*0.01), a= 0.5)
    max3<-multiroot(f=fun3,start=c(1), maxiter=1000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z


w.vec<- rep(0,99)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA= (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=(w*0.01), a=0.5)
  max1<- multiroot(f=fun1, start = c(1), maxiter = 1000, positive = TRUE)
  w.vec[w]<- max1$root
}


z<- rbind(w.vec,z)




rownames(z)<- seq(0.00, 0.5,by=0.005)
colnames(z)<- seq(0.01, 0.99,by=0.01)


print(z)

model3<- melt(z)
model3 
model3$Var1<- as.factor(model3$Var1)
model3$Var2<- as.factor(model3$Var2)

names(model3)[3]<- "NF"


plot4<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = NF))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Mutant Frequency (q)", y="Dominance Coefficient (h)", title = "s=0.5")+
  scale_x_discrete(breaks = c(0.01,0.25,0.5,0.75,0.99))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_text(face = "bold", color = "black", size = 13),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_text(face = "bold", color = "black", size = 13), 
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 18), 
        legend.title = element_text(face = "bold", color = "black", size = 25))




figure6<- ggarrange(plot1, plot2, plot3, plot4, nrow = 2, ncol = 2)

figure6

## ====================================================================================
## Figure 7 - SimBit Forward Time genetic simulation 

### Contained within separate code, specific for simulations 

## ===========================================================================
## =======================================================================

## Supplementary Figures ===============================================

## ===============================================================================

## ===========================================================================
### Figure S1 ================================================================
## ============================================================================


h<- 0.0
p<- 0.2 ## This means that q=0.8

N<- c(1:500)
N

y5<- ((p*(1-p)*(2*N-1)/N^3)*(((-2*h+1)*N+N-(-2*h+1))^2-2*(-2*h+1)*p*(N-1)*(2*N*((-2*h+1)+1)-3*(-2*h+1)-(-2*h+1)*(2*N-3)*p)))

plots1<- qplot(N,y5)+labs(y="Post-bottleneck VA", x="No. Founders")+theme_classic()

figureS1<- plots1



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

plot1<- qplot(N1,y1)+labs(y="E(VA)", x="No. Founders", title = "h=0.0")+theme_classic()+coord_cartesian(ylim = c(0,1))


## h=0.15
set.seed(2)
h2<- 0.15
p2<- rbinom(10000, 100, 0.5)
p2<- p2*0.01
N2<- c(1:10000)
N2

y2<- ((p2*(1-p2)*(2*N2-1)/N2^3)*(((-2*h2+1)*N2+N2-(-2*h2+1))^2-2*(-2*h2+1)*p2*(N2-1)*(2*N2*((-2*h2+1)+1)-3*(-2*h2+1)-(-2*h2+1)*(2*N2-3)*p2)))

plot2<- qplot(N2,y2)+labs(y="E(VA)", x="No. Founders", title = "h=0.15")+theme_classic()+coord_cartesian(ylim = c(0,1))


## h=0.3
set.seed(3)
h3<- 0.25
p3<- rbinom(10000, 100, 0.5)
p3<- p3*0.01
N3<- c(1:10000)
N3

y3<- ((p3*(1-p3)*(2*N3-1)/N3^3)*(((-2*h3+1)*N3+N3-(-2*h3+1))^2-2*(-2*h3+1)*p3*(N3-1)*(2*N3*((-2*h3+1)+1)-3*(-2*h3+1)-(-2*h3+1)*(2*N3-3)*p3)))

plot3<- qplot(N3,y3)+labs(y="E(VA)", x="No. Founders", title = "h=0.25")+theme_classic()+coord_cartesian(ylim = c(0,1))


## h=0.35
set.seed(4)
h4<- 0.35
p4<- rbinom(10000, 100, 0.5)
p4<- p4*0.01
N4<- c(1:10000)
N4

y4<- ((p4*(1-p4)*(2*N4-1)/N4^3)*(((-2*h4+1)*N4+N4-(-2*h4+1))^2-2*(-2*h4+1)*p4*(N4-1)*(2*N4*((-2*h4+1)+1)-3*(-2*h4+1)-(-2*h4+1)*(2*N4-3)*p4)))

plot4<- qplot(N4,y4)+labs(y="E(VA)", x="No. Founders", title = "h=0.35")+theme_classic()+coord_cartesian(ylim = c(0,1))


## h=0.5
set.seed(5)
h5<- 0.5
p5<- rbinom(10000, 100, 0.5)
p5<- p5*0.01
N5<- c(1:10000)
N5

y5<- ((p5*(1-p5)*(2*N5-1)/N5^3)*(((-2*h5+1)*N5+N5-(-2*h5+1))^2-2*(-2*h5+1)*p5*(N5-1)*(2*N5*((-2*h5+1)+1)-3*(-2*h5+1)-(-2*h5+1)*(2*N5-3)*p5)))

plot5<- qplot(N5,y5)+labs(y="E(VA)", x="No. Founders", title = "h=0.5")+theme_classic()+coord_cartesian(ylim = c(0,1))



FigureS3<- ggarrange(plot1,plot2,plot3,plot4,plot5)  






## =====================================================================================
## Figure S4 ===========================================================================
## ======================================================================================

h1<- 0.0
h2<- 0.25
h3<- 0.5

q1<- 0.3
q2<- 0.5 
q3<- 0.7

x<- c(0:250) ## Taking the place of N in this derivative equation


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
                             neutralplot5, neutralplot6, neutralplot7, neutralplot8,neutralplot9)
figureS4

## Will add circles manually, based off of the matrix of root values computer in figure 3




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


plot1<- qplot(N,y1)+ labs(y="E[f(VA)]", x="No. Founders", title = "h=0.5")+theme_classic()+coord_cartesian(ylim = c(0,0.0000005))

#h=0.25
set.seed(7)
a1<- 0.001
h2<- 0.25
p2<- rbinom(10000, 100, 0.5)
p2<- p2*0.01
N<- c(1:10000)
N



y2<- ((a1^2/4)*(1-(1/(2*N)))*((1+(2*(h2)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p2)*(1-(p2)))+2*(1-(2/(2*N)))*((2*(h2)-1)*(2*(p2)*(1-(p2))*(1-2*(p2)))-(1-(3/(2*N)))*(2*(h2)-1)^2*((2*(p2)*(1-(p2)))^2))))


plot2<- qplot(N,y2)+ labs(y="E[f(VA)]", x="No. Founders", title = "h=0.25")+theme_classic()+coord_cartesian(ylim = c(0,0.0000005))

#h=0.0
set.seed(8)
a1<- 0.001
h3<- 0.0
p3<- rbinom(10000, 100, 0.5)
p3<- p3*0.01
N<- c(1:10000)
N



y3<- ((a1^2/4)*(1-(1/(2*N)))*((1+(2*(h3)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p3)*(1-(p3)))+2*(1-(2/(2*N)))*((2*(h3)-1)*(2*(p3)*(1-(p3))*(1-2*(p3)))-(1-(3/(2*N)))*(2*(h3)-1)^2*((2*(p3)*(1-(p3)))^2))))


plot3<- qplot(N,y3)+ labs(y="E[f(VA)]", x="No. Founders", title = "h=0.0")+theme_classic()+coord_cartesian(ylim = c(0,0.0000005))

plotS1<- ggarrange(plot1, plot2, plot3, ncol = 1, nrow = 3) ## Will need to add titles for selection coefficients
plotS1



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


plot4<- qplot(N,y4)+ labs(y="E[f(VA)]", x="No. Founders", title = "h=0.5")+theme_classic()+coord_cartesian(ylim = c(0,0.00005))

#h=0.25
set.seed(10)
a2<- 0.01
h5<- 0.25
p5<- rbinom(10000, 100, 0.5)
p5<- p5*0.01
N<- c(1:10000)
N



y5<- ((a2^2/4)*(1-(1/(2*N)))*((1+(2*(h5)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p5)*(1-(p5)))+2*(1-(2/(2*N)))*((2*(h5)-1)*(2*(p5)*(1-(p5))*(1-2*(p5)))-(1-(3/(2*N)))*(2*(h5)-1)^2*((2*(p5)*(1-(p5)))^2))))


plot5<- qplot(N,y5)+ labs(y="E[f(VA)]", x="No. Founders", title = "h=0.25")+theme_classic()+coord_cartesian(ylim = c(0,0.00005))

#h=0.0
set.seed(11)
a2<- 0.01
h6<- 0.0
p6<- rbinom(10000, 100, 0.5)
p6<- p6*0.01
N<- c(1:10000)
N



y6<- ((a2^2/4)*(1-(1/(2*N)))*((1+(2*(h6)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p6)*(1-(p6)))+2*(1-(2/(2*N)))*((2*(h6)-1)*(2*(p6)*(1-(p6))*(1-2*(p6)))-(1-(3/(2*N)))*(2*(h6)-1)^2*((2*(p6)*(1-(p6)))^2))))


plot6<- qplot(N,y6)+ labs(y="E[f(VA)]", x="No. Founders", title = "h=0.0")+theme_classic()+coord_cartesian(ylim = c(0,0.00005))

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


plot7<- qplot(N,y7)+ labs(y="E[f(VA)]", x="No. Founders", title = "h=0.5")+theme_classic()+coord_cartesian(ylim = c(0,0.005))

#h=0.25
set.seed(12)
a3<- 0.1
h8<- 0.25
p8<- rbinom(10000, 100, 0.5)
p8<- p8*0.01
N<- c(1:10000)
N



y8<- ((a3^2/4)*(1-(1/(2*N)))*((1+(2*(h8)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p8)*(1-(p8)))+2*(1-(2/(2*N)))*((2*(h8)-1)*(2*(p8)*(1-(p8))*(1-2*(p8)))-(1-(3/(2*N)))*(2*(h8)-1)^2*((2*(p8)*(1-(p8)))^2))))


plot8<- qplot(N,y8)+ labs(y="E[f(VA)]", x="No. Founders", title = "h=0.25")+theme_classic()+coord_cartesian(ylim = c(0,0.005))

#h=0.0
set.seed(13)
a3<- 0.1
h9<- 0.0
p9<- rbinom(10000, 100, 0.5)
p9<- p9*0.01
N<- c(1:10000)
N



y9<- ((a3^2/4)*(1-(1/(2*N)))*((1+(2*(h9)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p9)*(1-(p9)))+2*(1-(2/(2*N)))*((2*(h9)-1)*(2*(p9)*(1-(p9))*(1-2*(p9)))-(1-(3/(2*N)))*(2*(h9)-1)^2*((2*(p9)*(1-(p9)))^2))))


plot9<- qplot(N,y9)+ labs(y="E[f(VA)]", x="No. Founders", title = "h=0.0")+theme_classic()+coord_cartesian(ylim = c(0,0.005))

plotS3<- ggarrange(plot7, plot8, plot9, ncol = 1, nrow = 3)

####### S=0.5 ###########################################################

#h=0.5
set.seed(14)
a4<- 0.5
h10<- 0.5
p10<- rbinom(10000, 100, 0.5)
p10<- p10*0.01
N<- c(1:10000)
N



y10<-((a4^2/4)*(1-(1/(2*N)))*((1+(2*(h10)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p10)*(1-(p10)))+2*(1-(2/(2*N)))*((2*(h10)-1)*(2*(p10)*(1-(p10))*(1-2*(p10)))-(1-(3/(2*N)))*(2*(h10)-1)^2*((2*(p10)*(1-(p10)))^2))))


plot10<- qplot(N,y10)+ labs(y="E[f(VA)]", x="No. Founders", title = "h=0.5")+theme_classic()+coord_cartesian(ylim = c(0,0.05))

#h=0.25
set.seed(15)
a4<- 0.5
h11<- 0.25
p11<- rbinom(10000, 100, 0.5)
p11<- p11*0.01
N<- c(1:10000)
N



y11<- ((a4^2/4)*(1-(1/(2*N)))*((1+(2*(h11)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p11)*(1-(p11)))+2*(1-(2/(2*N)))*((2*(h11)-1)*(2*(p11)*(1-(p11))*(1-2*(p11)))-(1-(3/(2*N)))*(2*(h11)-1)^2*((2*(p11)*(1-(p11)))^2))))


plot11<- qplot(N,y11)+ labs(y="E[f(VA)]", x="No. Founders", title = "h=0.25")+theme_classic()+coord_cartesian(ylim = c(0,0.05))

#h=0.0
set.seed(15)
a4<- 0.5
h12<- 0.0
p12<- rbinom(10000, 100, 0.5)
p12<- p12*0.01
N<- c(1:10000)
N



y12<- ((a4^2/4)*(1-(1/(2*N)))*((1+(2*(h12)-1)^2*(1-2*(1-(1/(2*N)))+2*(1-(1/(2*N)))*(1-(2/(2*N)))))*(2*(p12)*(1-(p12)))+2*(1-(2/(2*N)))*((2*(h12)-1)*(2*(p12)*(1-(p12))*(1-2*(p12)))-(1-(3/(2*N)))*(2*(h12)-1)^2*((2*(p12)*(1-(p12)))^2))))


plot12<- qplot(N,y12)+ labs(y="E[f(VA)]", x="No. Founders", title = "h=0.0")+theme_classic()+coord_cartesian(ylim = c(0,0.05))

plotS4<- ggarrange(plot10, plot11, plot12, ncol = 1, nrow = 3)

FigureS5<- ggarrange(plotS1, plotS2, plotS3, plotS4, ncol = 4, nrow = 1)

## Need to manually add selection coefficient labels in Adobe Illustrator 
FigureS5




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



#a1=0.01, h=0, q=0.3
plot1<- (a1^2*q1*(1-q1)*((2*h1-1)^2*(2*q1^2*(12*x^2-22*x+9)-2*q1*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(q1*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a1=0.01, h=0, q=0.5
plot2<- (a1^2*q2*(1-q2)*((2*h1-1)^2*(2*q2^2*(12*x^2-22*x+9)-2*q2*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(q2*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a1=0.01, h=0, q=0.7
plot3<- (a1^2*q3*(1-q3)*((2*h1-1)^2*(2*q3^2*(12*x^2-22*x+9)-2*q3*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(q3*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a1=0.01, h=0.25, q=0.3
plot4<- (a1^2*q3*(1-q3)*((2*h2-1)^2*(2*q1^2*(12*x^2-22*x+9)-2*q1*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h2-1)*x*(q1*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a1=0.01, h=0.25, q=0.5
plot5<- (a1^2*q3*(1-q3)*((2*h2-1)^2*(2*q2^2*(12*x^2-22*x+9)-2*q2*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h2-1)*x*(q2*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a1=0.01, h=0.25, q=0.7
plot6<- (a1^2*q3*(1-q3)*((2*h2-1)^2*(2*q3^2*(12*x^2-22*x+9)-2*q3*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h2-1)*x*(q3*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a1=0.01, h=0.5, q=0.3
plot7<- (a1^2*q1*(1-q1)*((2*h3-1)^2*(2*q1^2*(12*x^2-22*x+9)-2*q1*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h3-1)*x*(q1*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a1=0.01, h=0.5, q=0.5
plot8<- (a1^2*q2*(1-q2)*((2*h3-1)^2*(2*q2^2*(12*x^2-22*x+9)-2*q2*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h3-1)*x*(q2*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a1=0.01, h=0.5, q=0.7
plot9<- (a1^2*q3*(1-q3)*((2*h3-1)^2*(2*q3^2*(12*x^2-22*x+9)-2*q3*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h3-1)*x*(q3*(4-6*x)+3*x-2)+x^2))/(4*x^4)






#a2=0.1, h=0, q=0.3
plot10<- (a2^2*q1*(1-q1)*((2*h1-1)^2*(2*q1^2*(12*x^2-22*x+9)-2*q1*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(q1*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a2=0.1, h=0, q=0.5
plot11<- (a2^2*q2*(1-q2)*((2*h1-1)^2*(2*q2^2*(12*x^2-22*x+9)-2*q2*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(q2*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a2=0.1, h=0, q=0.7
plot12<- (a2^2*q3*(1-q3)*((2*h1-1)^2*(2*q3^2*(12*x^2-22*x+9)-2*q3*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(q3*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a2=0.1, h=0.25, q=0.3
plot13<- (a2^2*q1*(1-q1)*((2*h2-1)^2*(2*q1^2*(12*x^2-22*x+9)-2*q1*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h2-1)*x*(q1*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a2=0.1, h=0.25, q=0.5
plot14<- (a2^2*q2*(1-q2)*((2*h2-1)^2*(2*q2^2*(12*x^2-22*x+9)-2*q2*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h2-1)*x*(q2*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a2=0.1, h=0.25, q=0.7
plot15<- (a2^2*q3*(1-q3)*((2*h2-1)^2*(2*q3^2*(12*x^2-22*x+9)-2*q3*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h2-1)*x*(q3*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a2=0.1, h=0.5, q=0.3
plot16<- (a2^2*q1*(1-q1)*((2*h3-1)^2*(2*q1^2*(12*x^2-22*x+9)-2*q1*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h3-1)*x*(q1*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a2=0.1, h=0.5, q=0.5
plot17<- (a2^2*q2*(1-q2)*((2*h3-1)^2*(2*q2^2*(12*x^2-22*x+9)-2*q2*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h3-1)*x*(q2*(4-6*x)+3*x-2)+x^2))/(4*x^4)

#a2=0.1, h=0.5, q=0.7
plot18<- (a2^2*q3*(1-q3)*((2*h3-1)^2*(2*q3^2*(12*x^2-22*x+9)-2*q3*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h3-1)*x*(q3*(4-6*x)+3*x-2)+x^2))/(4*x^4)




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


## Will combine both figures in Adobe Illustrator, as well as manually add circles into Adobe Illustrator based
## off of matrix generated in Figure 6 of main text


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
      dVAFi2 <- (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.1, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=1000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}




w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=(a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
    return(c(dEVA=dEVA))})}
  params<-c(h1=0,p=0.1, a=(w*0.01))
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

names(model3)[3]<- "NF"


plot1<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = NF))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.1")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_blank(), 
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 10), 
        legend.title = element_text(face = "bold", color = "black", size = 15))




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
      dVAFi2 <- (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.2, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=1000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z


w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=(a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
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

names(model3)[3]<- "NF"


plot2<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = NF))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.2")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_blank(), 
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 10), 
        legend.title = element_text(face = "bold", color = "black", size = 15))



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
      dVAFi2 <- (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.3, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=1000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=(a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
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

names(model3)[3]<- "NF"


plot3<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = NF))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.3")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_blank(), 
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 10), 
        legend.title = element_text(face = "bold", color = "black", size = 15))



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
      dVAFi2 <- (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.4, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=1000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z


w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=(a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
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

names(model3)[3]<- "NF"


plot4<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = NF))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.4")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_blank(), 
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 10), 
        legend.title = element_text(face = "bold", color = "black", size = 15))



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
      dVAFi2 <- (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.5, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=1000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z

w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=(a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
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

names(model3)[3]<- "NF"


plot5<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = NF))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.5")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_blank(), 
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 10), 
        legend.title = element_text(face = "bold", color = "black", size = 15))


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
      dVAFi2 <- (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.6, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=1000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z


w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=(a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
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

names(model3)[3]<- "NF"


plot6<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = NF))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.6")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_blank(), 
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 10), 
        legend.title = element_text(face = "bold", color = "black", size = 15))






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
      dVAFi2 <- (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.7, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=1000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z


w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=(a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
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

names(model3)[3]<- "NF"


plot7<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = NF))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.7")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_blank(), 
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 10), 
        legend.title = element_text(face = "bold", color = "black", size = 15))



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
      dVAFi2 <- (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.8, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=1000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z



w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA=(a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
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

names(model3)[3]<- "NF"


plot8<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = NF))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.8")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_blank(), 
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 10), 
        legend.title = element_text(face = "bold", color = "black", size = 15))



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
      dVAFi2 <- (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
      return(c(dVAFi2=dVAFi2))})}
    params3<-c(h1=(c*0.005),p=0.9, a= (d*0.01))
    max3<-multiroot(f=fun3,start=c(1), maxiter=1000, positive=TRUE)
    #Storing the output
    z[c,d]<- max3$root
    
  }
}


z


w.vec<- rep(0,100)

for (w in 1:length(w.vec)){
  fun1=function(x){with(as.list(params),{
    dEVA<- (a^2*p*(1-p)*((2*h1-1)^2*(2*p^2*(12*x^2-22*x+9)-2*p*(12*x^2-22*x+9)+5*x^2-8*x+3)+2*(2*h1-1)*x*(p*(4-6*x)+3*x-2)+x^2))/(4*x^4)
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

names(model3)[3]<- "NF"


plot9<- ggplot(model3, aes(x=Var2, y=Var1))+
  geom_raster(aes(fill = NF))+
  scale_fill_gradient(low = "yellow", high = "red")+
  labs(x="Selection Coefficient", y="Dominance Coefficient", title = "q=0.9")+
  scale_x_discrete(breaks = c(0.0,0.25,0.5,0.75,1))+
  scale_y_discrete(breaks = c(0,0.1,0.2,0.3,0.4,0.5))+
  theme(axis.text.x = element_text(face = "bold", color = "black", size = 10),
        axis.title.x = element_blank(),
        axis.text.y = element_text(face = "bold", color = "black", size = 10),
        axis.title.y = element_blank(), 
        title = element_text(size = 20, face = "bold"),
        legend.text = element_text(face = "bold", color = "black", size = 10), 
        legend.title = element_text(face = "bold", color = "black", size = 15))



## Will add common labels in Adobe Illustrator 
figureS7<- ggarrange(plot1, plot2, plot3, plot4, plot5, plot6, plot7, plot8, plot9, label.x = 1, label.y = 1)
figureS7


