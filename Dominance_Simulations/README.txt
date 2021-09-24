## ================================================================================================================ 

## ========== Dominance can increase genetic variance after a population bottleneck: ==============================

### ================= A synthesis of empirical and theoretical evidence ===========================================

## ================================================================================================================

#### ================ Code for SimBit forward-time genetic simulations ============================================




## Read In bin/Simbit f (directorty where the file is stored) 
#============================================================================================================================= 
## Can also read in scripts using the "Run_Dominance" scripts provided, which also export per locu heterozygosity and nucleotide diversity 




### Name of species - C elegans 
#============================================================================================================================= 
## Name of species can be any species of choice, we chose to call our species C elegans



### Set number of generations 
#============================================================================================================================= 

## We set the number of generations per simulation to 1000, or 1e3



## Set patch size 
#============================================================================================================================= 
## We chose the number of patches to be 1, as we focus on a single population




### Carying Capacity for each generation
# ============================================================================================================================= 

## From Generation 0 to Generation 499, we set the number of individuals to 10,000

## For Generation 500, we reduced the number of individuals to the corresponding number of founders (i.e. 2,20,50,100,150,200,250,300)

## For Generation 501 to Generation 1000, we set the number of individuals to 10,000. 



### Basic Locus Information (Choosing T1 Loci)
#============================================================================================================================= 

## We simulated 500 T1, or binary, loci. See SimBit Manual for more details 


## Mutation Rate 
#============================================================================================================================= 

## We chose a mutation rate of 1e-4, in order to generate enough genetic diversity within the time span of 1000 generations


## Dominance Effects, fitness function 0.5 across all loci
#============================================================================================================================= 

## We varied the dominance coefficient, h, based off of the specific simulation (h=0.0,0.125,0.25,0.375,0.5)
## We kept the fitness function constant across all loci for all simulations (0.5)


## Recombination rate - perfectly independent loci - chromosome break 
#============================================================================================================================= 

# We chose completely independent loci to effectively ignore the effects of recombination (i.e. cM unif -1)







