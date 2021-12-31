###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1_150.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation1150_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G0
vcftools --vcf SimulationResults/Simulation1150_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G2
vcftools --vcf SimulationResults/Simulation1150_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G10000
vcftools --vcf SimulationResults/Simulation1150_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G20000
vcftools --vcf SimulationResults/Simulation1150_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G30000
vcftools --vcf SimulationResults/Simulation1150_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G40000
vcftools --vcf SimulationResults/Simulation1150_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G50000
vcftools --vcf SimulationResults/Simulation1150_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G60000
vcftools --vcf SimulationResults/Simulation1150_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G70000
vcftools --vcf SimulationResults/Simulation1150_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G80000
vcftools --vcf SimulationResults/Simulation1150_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G90000
vcftools --vcf SimulationResults/Simulation1150_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G100001
vcftools --vcf SimulationResults/Simulation1150_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G110000
vcftools --vcf SimulationResults/Simulation1150_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G120000
vcftools --vcf SimulationResults/Simulation1150_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G130000
vcftools --vcf SimulationResults/Simulation1150_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G140000
vcftools --vcf SimulationResults/Simulation1150_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G150000
vcftools --vcf SimulationResults/Simulation1150_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G160000
vcftools --vcf SimulationResults/Simulation1150_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G170000
vcftools --vcf SimulationResults/Simulation1150_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G180000
vcftools --vcf SimulationResults/Simulation1150_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G190000
vcftools --vcf SimulationResults/Simulation1150_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G200000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation1150_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G0
vcftools --vcf SimulationResults/Simulation1150_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G2
vcftools --vcf SimulationResults/Simulation1150_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G10000
vcftools --vcf SimulationResults/Simulation1150_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G20000
vcftools --vcf SimulationResults/Simulation1150_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G30000
vcftools --vcf SimulationResults/Simulation1150_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G40000
vcftools --vcf SimulationResults/Simulation1150_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G50000
vcftools --vcf SimulationResults/Simulation1150_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G60000
vcftools --vcf SimulationResults/Simulation1150_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G70000
vcftools --vcf SimulationResults/Simulation1150_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G80000
vcftools --vcf SimulationResults/Simulation1150_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G90000
vcftools --vcf SimulationResults/Simulation1150_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G100001
vcftools --vcf SimulationResults/Simulation1150_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G110000
vcftools --vcf SimulationResults/Simulation1150_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G120000
vcftools --vcf SimulationResults/Simulation1150_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G130000
vcftools --vcf SimulationResults/Simulation1150_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G140000
vcftools --vcf SimulationResults/Simulation1150_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G150000
vcftools --vcf SimulationResults/Simulation1150_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G160000
vcftools --vcf SimulationResults/Simulation1150_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G170000
vcftools --vcf SimulationResults/Simulation1150_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G180000
vcftools --vcf SimulationResults/Simulation1150_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G190000
vcftools --vcf SimulationResults/Simulation1150_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G200000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait2_150.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation2150_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G0
vcftools --vcf SimulationResults/Simulation2150_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G2
vcftools --vcf SimulationResults/Simulation2150_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G10000
vcftools --vcf SimulationResults/Simulation2150_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G20000
vcftools --vcf SimulationResults/Simulation2150_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G30000
vcftools --vcf SimulationResults/Simulation2150_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G40000
vcftools --vcf SimulationResults/Simulation2150_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G50000
vcftools --vcf SimulationResults/Simulation2150_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G60000
vcftools --vcf SimulationResults/Simulation2150_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G70000
vcftools --vcf SimulationResults/Simulation2150_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G80000
vcftools --vcf SimulationResults/Simulation2150_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G90000
vcftools --vcf SimulationResults/Simulation2150_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G100001
vcftools --vcf SimulationResults/Simulation2150_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G110000
vcftools --vcf SimulationResults/Simulation2150_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G120000
vcftools --vcf SimulationResults/Simulation2150_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G130000
vcftools --vcf SimulationResults/Simulation2150_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G140000
vcftools --vcf SimulationResults/Simulation2150_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G150000
vcftools --vcf SimulationResults/Simulation2150_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G160000
vcftools --vcf SimulationResults/Simulation2150_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G170000
vcftools --vcf SimulationResults/Simulation2150_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G180000
vcftools --vcf SimulationResults/Simulation2150_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G190000
vcftools --vcf SimulationResults/Simulation2150_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation2150_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G0
vcftools --vcf SimulationResults/Simulation2150_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G2
vcftools --vcf SimulationResults/Simulation2150_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G10000
vcftools --vcf SimulationResults/Simulation2150_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G20000
vcftools --vcf SimulationResults/Simulation2150_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G30000
vcftools --vcf SimulationResults/Simulation2150_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G40000
vcftools --vcf SimulationResults/Simulation2150_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G50000
vcftools --vcf SimulationResults/Simulation2150_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G60000
vcftools --vcf SimulationResults/Simulation2150_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G70000
vcftools --vcf SimulationResults/Simulation2150_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G80000
vcftools --vcf SimulationResults/Simulation2150_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G90000
vcftools --vcf SimulationResults/Simulation2150_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G100001
vcftools --vcf SimulationResults/Simulation2150_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G110000
vcftools --vcf SimulationResults/Simulation2150_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G120000
vcftools --vcf SimulationResults/Simulation2150_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G130000
vcftools --vcf SimulationResults/Simulation2150_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G140000
vcftools --vcf SimulationResults/Simulation2150_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G150000
vcftools --vcf SimulationResults/Simulation2150_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G160000
vcftools --vcf SimulationResults/Simulation2150_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G170000
vcftools --vcf SimulationResults/Simulation2150_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G180000
vcftools --vcf SimulationResults/Simulation2150_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G190000
vcftools --vcf SimulationResults/Simulation2150_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G200000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3_150.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation3150_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G0
vcftools --vcf SimulationResults/Simulation3150_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G2
vcftools --vcf SimulationResults/Simulation3150_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G10000
vcftools --vcf SimulationResults/Simulation3150_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G20000
vcftools --vcf SimulationResults/Simulation3150_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G30000
vcftools --vcf SimulationResults/Simulation3150_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G40000
vcftools --vcf SimulationResults/Simulation3150_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G50000
vcftools --vcf SimulationResults/Simulation3150_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G60000
vcftools --vcf SimulationResults/Simulation3150_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G70000
vcftools --vcf SimulationResults/Simulation3150_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G80000
vcftools --vcf SimulationResults/Simulation3150_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G90000
vcftools --vcf SimulationResults/Simulation3150_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G100001
vcftools --vcf SimulationResults/Simulation3150_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G110000
vcftools --vcf SimulationResults/Simulation3150_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G120000
vcftools --vcf SimulationResults/Simulation3150_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G130000
vcftools --vcf SimulationResults/Simulation3150_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G140000
vcftools --vcf SimulationResults/Simulation3150_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G150000
vcftools --vcf SimulationResults/Simulation3150_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G160000
vcftools --vcf SimulationResults/Simulation3150_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G170000
vcftools --vcf SimulationResults/Simulation3150_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G180000
vcftools --vcf SimulationResults/Simulation3150_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G190000
vcftools --vcf SimulationResults/Simulation3150_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation3150_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G0
vcftools --vcf SimulationResults/Simulation3150_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G2
vcftools --vcf SimulationResults/Simulation3150_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G10000
vcftools --vcf SimulationResults/Simulation3150_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G20000
vcftools --vcf SimulationResults/Simulation3150_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G30000
vcftools --vcf SimulationResults/Simulation3150_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G40000
vcftools --vcf SimulationResults/Simulation3150_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G50000
vcftools --vcf SimulationResults/Simulation3150_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G60000
vcftools --vcf SimulationResults/Simulation3150_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G70000
vcftools --vcf SimulationResults/Simulation3150_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G80000
vcftools --vcf SimulationResults/Simulation3150_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G90000
vcftools --vcf SimulationResults/Simulation3150_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G100001
vcftools --vcf SimulationResults/Simulation3150_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G110000
vcftools --vcf SimulationResults/Simulation3150_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G120000
vcftools --vcf SimulationResults/Simulation3150_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G130000
vcftools --vcf SimulationResults/Simulation3150_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G140000
vcftools --vcf SimulationResults/Simulation3150_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G150000
vcftools --vcf SimulationResults/Simulation3150_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G160000
vcftools --vcf SimulationResults/Simulation3150_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G170000
vcftools --vcf SimulationResults/Simulation3150_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G180000
vcftools --vcf SimulationResults/Simulation3150_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G190000
vcftools --vcf SimulationResults/Simulation3150_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G200000



###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4_150.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation4150_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G0
vcftools --vcf SimulationResults/Simulation4150_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G2
vcftools --vcf SimulationResults/Simulation4150_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G10000
vcftools --vcf SimulationResults/Simulation4150_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G20000
vcftools --vcf SimulationResults/Simulation4150_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G30000
vcftools --vcf SimulationResults/Simulation4150_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G40000
vcftools --vcf SimulationResults/Simulation4150_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G50000
vcftools --vcf SimulationResults/Simulation4150_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G60000
vcftools --vcf SimulationResults/Simulation4150_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G70000
vcftools --vcf SimulationResults/Simulation4150_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G80000
vcftools --vcf SimulationResults/Simulation4150_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G90000
vcftools --vcf SimulationResults/Simulation4150_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G100001
vcftools --vcf SimulationResults/Simulation4150_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G110000
vcftools --vcf SimulationResults/Simulation4150_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G120000
vcftools --vcf SimulationResults/Simulation4150_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G130000
vcftools --vcf SimulationResults/Simulation4150_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G140000
vcftools --vcf SimulationResults/Simulation4150_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G150000
vcftools --vcf SimulationResults/Simulation4150_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G160000
vcftools --vcf SimulationResults/Simulation4150_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G170000
vcftools --vcf SimulationResults/Simulation4150_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G180000
vcftools --vcf SimulationResults/Simulation4150_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G190000
vcftools --vcf SimulationResults/Simulation4150_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G200000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation4150_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G0
vcftools --vcf SimulationResults/Simulation4150_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G2
vcftools --vcf SimulationResults/Simulation4150_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G10000
vcftools --vcf SimulationResults/Simulation4150_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G20000
vcftools --vcf SimulationResults/Simulation4150_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G30000
vcftools --vcf SimulationResults/Simulation4150_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G40000
vcftools --vcf SimulationResults/Simulation4150_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G50000
vcftools --vcf SimulationResults/Simulation4150_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G60000
vcftools --vcf SimulationResults/Simulation4150_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G70000
vcftools --vcf SimulationResults/Simulation4150_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G80000
vcftools --vcf SimulationResults/Simulation4150_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G90000
vcftools --vcf SimulationResults/Simulation4150_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G100001
vcftools --vcf SimulationResults/Simulation4150_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G110000
vcftools --vcf SimulationResults/Simulation4150_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G120000
vcftools --vcf SimulationResults/Simulation4150_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G130000
vcftools --vcf SimulationResults/Simulation4150_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G140000
vcftools --vcf SimulationResults/Simulation4150_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G150000
vcftools --vcf SimulationResults/Simulation4150_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G160000
vcftools --vcf SimulationResults/Simulation4150_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G170000
vcftools --vcf SimulationResults/Simulation4150_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G180000
vcftools --vcf SimulationResults/Simulation4150_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G190000
vcftools --vcf SimulationResults/Simulation4150_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G200000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5_150.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation5150_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G0
vcftools --vcf SimulationResults/Simulation5150_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G2
vcftools --vcf SimulationResults/Simulation5150_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G10000
vcftools --vcf SimulationResults/Simulation5150_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G20000
vcftools --vcf SimulationResults/Simulation5150_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G30000
vcftools --vcf SimulationResults/Simulation5150_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G40000
vcftools --vcf SimulationResults/Simulation5150_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G50000
vcftools --vcf SimulationResults/Simulation5150_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G60000
vcftools --vcf SimulationResults/Simulation5150_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G70000
vcftools --vcf SimulationResults/Simulation5150_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G80000
vcftools --vcf SimulationResults/Simulation5150_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G90000
vcftools --vcf SimulationResults/Simulation5150_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G100001
vcftools --vcf SimulationResults/Simulation5150_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G110000
vcftools --vcf SimulationResults/Simulation5150_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G120000
vcftools --vcf SimulationResults/Simulation5150_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G130000
vcftools --vcf SimulationResults/Simulation5150_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G140000
vcftools --vcf SimulationResults/Simulation5150_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G150000
vcftools --vcf SimulationResults/Simulation5150_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G160000
vcftools --vcf SimulationResults/Simulation5150_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G170000
vcftools --vcf SimulationResults/Simulation5150_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G180000
vcftools --vcf SimulationResults/Simulation5150_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G190000
vcftools --vcf SimulationResults/Simulation5150_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G200000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation5150_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G0
vcftools --vcf SimulationResults/Simulation5150_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G2
vcftools --vcf SimulationResults/Simulation5150_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G10000
vcftools --vcf SimulationResults/Simulation5150_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G20000
vcftools --vcf SimulationResults/Simulation5150_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G30000
vcftools --vcf SimulationResults/Simulation5150_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G40000
vcftools --vcf SimulationResults/Simulation5150_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G50000
vcftools --vcf SimulationResults/Simulation5150_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G60000
vcftools --vcf SimulationResults/Simulation5150_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G70000
vcftools --vcf SimulationResults/Simulation5150_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G80000
vcftools --vcf SimulationResults/Simulation5150_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G90000
vcftools --vcf SimulationResults/Simulation5150_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G100001
vcftools --vcf SimulationResults/Simulation5150_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G110000
vcftools --vcf SimulationResults/Simulation5150_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G120000
vcftools --vcf SimulationResults/Simulation5150_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G130000
vcftools --vcf SimulationResults/Simulation5150_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G140000
vcftools --vcf SimulationResults/Simulation5150_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G150000
vcftools --vcf SimulationResults/Simulation5150_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G160000
vcftools --vcf SimulationResults/Simulation5150_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G170000
vcftools --vcf SimulationResults/Simulation5150_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G180000
vcftools --vcf SimulationResults/Simulation5150_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G190000
vcftools --vcf SimulationResults/Simulation5150_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G200000




