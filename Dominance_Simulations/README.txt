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

## We set the number of generations per simulation to 200,000



## Set patch size 
#============================================================================================================================= 
## We chose the number of patches to be 1, as we focus on a single population




### Carying Capacity for each generation
# ============================================================================================================================= 

## From Generation 0 to Generation 99,999, we set the number of individuals (carrying capacity) to 10,000

## For Generation 100,000, we reduced the number of individuals (carrying capacity) to the corresponding number of founders (i.e. 2,20,50,100,150,200,250,300)

## For Generation 501 to Generation 100,001, we set the number of individuals (carrying capacity) back to 10,000. 



### Basic Locus Information (Choosing T1 Loci)
#============================================================================================================================= 

## We simulated 50 T1, or binary, loci. See SimBit Manual for more details 


## Mutation Rate 
#============================================================================================================================= 

## We chose a mutation rate of 1e-4, in order to generate enough genetic diversity within the time span of 99,999 generations before the bottleneck


## Dominance Effects, fitness function 0.5 across all loci
#============================================================================================================================= 

## We varied the average dominance coefficient, H , based off of the specific simulation (H=0.0,0.125,0.25,0.375,0.5)
## We kept the fitness function constant across all loci for all simulations (0.5)
## Trait 1: H=0.0
## Trait 2: H=0.125
## Trait 3: H=0.25
## Trait 4: H=0.375
## Trait 5: H=0.5


## Recombination rate - 
#============================================================================================================================= 

# We chose a recombination rate of 1e-6

### OUTPUT
## We have assigned each simulation a specific name (i.e. Simulation1, Simulation1_20) based off of the number of founders
## We have generated a vcf file for generation 0 (not included in the analysis), generation 2, and every 10,000 generation (i.e. generation 10,000, 20,000, 30,000 etc.). 
## We also generated a vcf file for generation 100,001, or the generation that immediately followed the bottleneck





