library(ggplot2)


setwd("C://Users/andre/OneDrive/Documents/Dissertation/Critical Review/PopGen_Simulations/SimBit/SimulationResults")

simulation2<- read.csv("Simulation_PreliminaryAnalysis2.csv")

simulation2$h<- as.factor(simulation2$h)


ggplot(simulation2, aes(x=Gen, y=PI, group = h)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "h", group="h", title = "2 founders")+
  geom_point(aes(color=h))+
  theme_classic()



simulation20<- read.csv("Simulation_PreliminaryAnalysis20individuals.csv")

simulation20$h<- as.factor(simulation20$h)


ggplot(simulation20, aes(x=Generation, y=PI, group = h)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "h", group="h", title = "20 founders")+
  geom_point(aes(color=h))+
  theme_classic()




simulation200<- read.csv("Simulation_PreliminaryAnalysis200individuals.csv")

simulation200$h<- as.factor(simulation200$h)


ggplot(simulation200, aes(x=Generation, y=PI, group = h)) +
  labs(x="Generation", y="Nucleotide Diversity", color = "h", group="h", title = "200 founders")+
  geom_point(aes(color=h))+
  theme_classic()



