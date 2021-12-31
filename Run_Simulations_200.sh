


###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1_200.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation1200_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G0
vcftools --vcf SimulationResults/Simulation1200_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G2
vcftools --vcf SimulationResults/Simulation1200_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G10000
vcftools --vcf SimulationResults/Simulation1200_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G20000
vcftools --vcf SimulationResults/Simulation1200_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G30000
vcftools --vcf SimulationResults/Simulation1200_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G40000
vcftools --vcf SimulationResults/Simulation1200_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G50000
vcftools --vcf SimulationResults/Simulation1200_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G60000
vcftools --vcf SimulationResults/Simulation1200_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G70000
vcftools --vcf SimulationResults/Simulation1200_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G80000
vcftools --vcf SimulationResults/Simulation1200_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G90000
vcftools --vcf SimulationResults/Simulation1200_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G100001
vcftools --vcf SimulationResults/Simulation1200_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G110000
vcftools --vcf SimulationResults/Simulation1200_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G120000
vcftools --vcf SimulationResults/Simulation1200_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G130000
vcftools --vcf SimulationResults/Simulation1200_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G140000
vcftools --vcf SimulationResults/Simulation1200_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G150000
vcftools --vcf SimulationResults/Simulation1200_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G160000
vcftools --vcf SimulationResults/Simulation1200_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G170000
vcftools --vcf SimulationResults/Simulation1200_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G180000
vcftools --vcf SimulationResults/Simulation1200_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G190000
vcftools --vcf SimulationResults/Simulation1200_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G200000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation1200_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G0
vcftools --vcf SimulationResults/Simulation1200_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G2
vcftools --vcf SimulationResults/Simulation1200_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G10000
vcftools --vcf SimulationResults/Simulation1200_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G20000
vcftools --vcf SimulationResults/Simulation1200_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G30000
vcftools --vcf SimulationResults/Simulation1200_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G40000
vcftools --vcf SimulationResults/Simulation1200_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G50000
vcftools --vcf SimulationResults/Simulation1200_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G60000
vcftools --vcf SimulationResults/Simulation1200_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G70000
vcftools --vcf SimulationResults/Simulation1200_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G80000
vcftools --vcf SimulationResults/Simulation1200_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G90000
vcftools --vcf SimulationResults/Simulation1200_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G100001
vcftools --vcf SimulationResults/Simulation1200_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G110000
vcftools --vcf SimulationResults/Simulation1200_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G120000
vcftools --vcf SimulationResults/Simulation1200_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G130000
vcftools --vcf SimulationResults/Simulation1200_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G140000
vcftools --vcf SimulationResults/Simulation1200_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G150000
vcftools --vcf SimulationResults/Simulation1200_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G160000
vcftools --vcf SimulationResults/Simulation1200_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G170000
vcftools --vcf SimulationResults/Simulation1200_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G180000
vcftools --vcf SimulationResults/Simulation1200_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G190000
vcftools --vcf SimulationResults/Simulation1200_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G200000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait2_200.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation2200_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G0
vcftools --vcf SimulationResults/Simulation2200_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G2
vcftools --vcf SimulationResults/Simulation2200_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G10000
vcftools --vcf SimulationResults/Simulation2200_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G20000
vcftools --vcf SimulationResults/Simulation2200_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G30000
vcftools --vcf SimulationResults/Simulation2200_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G40000
vcftools --vcf SimulationResults/Simulation2200_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G50000
vcftools --vcf SimulationResults/Simulation2200_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G60000
vcftools --vcf SimulationResults/Simulation2200_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G70000
vcftools --vcf SimulationResults/Simulation2200_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G80000
vcftools --vcf SimulationResults/Simulation2200_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G90000
vcftools --vcf SimulationResults/Simulation2200_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G100001
vcftools --vcf SimulationResults/Simulation2200_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G110000
vcftools --vcf SimulationResults/Simulation2200_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G120000
vcftools --vcf SimulationResults/Simulation2200_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G130000
vcftools --vcf SimulationResults/Simulation2200_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G140000
vcftools --vcf SimulationResults/Simulation2200_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G150000
vcftools --vcf SimulationResults/Simulation2200_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G160000
vcftools --vcf SimulationResults/Simulation2200_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G170000
vcftools --vcf SimulationResults/Simulation2200_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G180000
vcftools --vcf SimulationResults/Simulation2200_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G190000
vcftools --vcf SimulationResults/Simulation2200_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation2200_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G0
vcftools --vcf SimulationResults/Simulation2200_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G2
vcftools --vcf SimulationResults/Simulation2200_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G10000
vcftools --vcf SimulationResults/Simulation2200_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G20000
vcftools --vcf SimulationResults/Simulation2200_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G30000
vcftools --vcf SimulationResults/Simulation2200_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G40000
vcftools --vcf SimulationResults/Simulation2200_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G50000
vcftools --vcf SimulationResults/Simulation2200_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G60000
vcftools --vcf SimulationResults/Simulation2200_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G70000
vcftools --vcf SimulationResults/Simulation2200_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G80000
vcftools --vcf SimulationResults/Simulation2200_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G90000
vcftools --vcf SimulationResults/Simulation2200_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G100001
vcftools --vcf SimulationResults/Simulation2200_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G110000
vcftools --vcf SimulationResults/Simulation2200_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G120000
vcftools --vcf SimulationResults/Simulation2200_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G130000
vcftools --vcf SimulationResults/Simulation2200_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G140000
vcftools --vcf SimulationResults/Simulation2200_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G150000
vcftools --vcf SimulationResults/Simulation2200_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G160000
vcftools --vcf SimulationResults/Simulation2200_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G170000
vcftools --vcf SimulationResults/Simulation2200_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G180000
vcftools --vcf SimulationResults/Simulation2200_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G190000
vcftools --vcf SimulationResults/Simulation2200_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G200000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3_200.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation3200_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G0
vcftools --vcf SimulationResults/Simulation3200_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G2
vcftools --vcf SimulationResults/Simulation3200_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G10000
vcftools --vcf SimulationResults/Simulation3200_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G20000
vcftools --vcf SimulationResults/Simulation3200_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G30000
vcftools --vcf SimulationResults/Simulation3200_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G40000
vcftools --vcf SimulationResults/Simulation3200_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G50000
vcftools --vcf SimulationResults/Simulation3200_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G60000
vcftools --vcf SimulationResults/Simulation3200_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G70000
vcftools --vcf SimulationResults/Simulation3200_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G80000
vcftools --vcf SimulationResults/Simulation3200_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G90000
vcftools --vcf SimulationResults/Simulation3200_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G100001
vcftools --vcf SimulationResults/Simulation3200_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G110000
vcftools --vcf SimulationResults/Simulation3200_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G120000
vcftools --vcf SimulationResults/Simulation3200_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G130000
vcftools --vcf SimulationResults/Simulation3200_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G140000
vcftools --vcf SimulationResults/Simulation3200_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G150000
vcftools --vcf SimulationResults/Simulation3200_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G160000
vcftools --vcf SimulationResults/Simulation3200_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G170000
vcftools --vcf SimulationResults/Simulation3200_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G180000
vcftools --vcf SimulationResults/Simulation3200_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G190000
vcftools --vcf SimulationResults/Simulation3200_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation3200_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G0
vcftools --vcf SimulationResults/Simulation3200_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G2
vcftools --vcf SimulationResults/Simulation3200_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G10000
vcftools --vcf SimulationResults/Simulation3200_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G20000
vcftools --vcf SimulationResults/Simulation3200_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G30000
vcftools --vcf SimulationResults/Simulation3200_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G40000
vcftools --vcf SimulationResults/Simulation3200_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G50000
vcftools --vcf SimulationResults/Simulation3200_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G60000
vcftools --vcf SimulationResults/Simulation3200_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G70000
vcftools --vcf SimulationResults/Simulation3200_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G80000
vcftools --vcf SimulationResults/Simulation3200_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G90000
vcftools --vcf SimulationResults/Simulation3200_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G100001
vcftools --vcf SimulationResults/Simulation3200_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G110000
vcftools --vcf SimulationResults/Simulation3200_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G120000
vcftools --vcf SimulationResults/Simulation3200_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G130000
vcftools --vcf SimulationResults/Simulation3200_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G140000
vcftools --vcf SimulationResults/Simulation3200_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G150000
vcftools --vcf SimulationResults/Simulation3200_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G160000
vcftools --vcf SimulationResults/Simulation3200_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G170000
vcftools --vcf SimulationResults/Simulation3200_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G180000
vcftools --vcf SimulationResults/Simulation3200_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G190000
vcftools --vcf SimulationResults/Simulation3200_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G200000



###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4_200.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation4200_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G0
vcftools --vcf SimulationResults/Simulation4200_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G2
vcftools --vcf SimulationResults/Simulation4200_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G10000
vcftools --vcf SimulationResults/Simulation4200_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G20000
vcftools --vcf SimulationResults/Simulation4200_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G30000
vcftools --vcf SimulationResults/Simulation4200_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G40000
vcftools --vcf SimulationResults/Simulation4200_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G50000
vcftools --vcf SimulationResults/Simulation4200_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G60000
vcftools --vcf SimulationResults/Simulation4200_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G70000
vcftools --vcf SimulationResults/Simulation4200_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G80000
vcftools --vcf SimulationResults/Simulation4200_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G90000
vcftools --vcf SimulationResults/Simulation4200_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G100001
vcftools --vcf SimulationResults/Simulation4200_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G110000
vcftools --vcf SimulationResults/Simulation4200_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G120000
vcftools --vcf SimulationResults/Simulation4200_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G130000
vcftools --vcf SimulationResults/Simulation4200_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G140000
vcftools --vcf SimulationResults/Simulation4200_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G150000
vcftools --vcf SimulationResults/Simulation4200_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G160000
vcftools --vcf SimulationResults/Simulation4200_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G170000
vcftools --vcf SimulationResults/Simulation4200_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G180000
vcftools --vcf SimulationResults/Simulation4200_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G190000
vcftools --vcf SimulationResults/Simulation4200_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G200000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation4200_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G0
vcftools --vcf SimulationResults/Simulation4200_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G2
vcftools --vcf SimulationResults/Simulation4200_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G10000
vcftools --vcf SimulationResults/Simulation4200_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G20000
vcftools --vcf SimulationResults/Simulation4200_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G30000
vcftools --vcf SimulationResults/Simulation4200_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G40000
vcftools --vcf SimulationResults/Simulation4200_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G50000
vcftools --vcf SimulationResults/Simulation4200_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G60000
vcftools --vcf SimulationResults/Simulation4200_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G70000
vcftools --vcf SimulationResults/Simulation4200_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G80000
vcftools --vcf SimulationResults/Simulation4200_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G90000
vcftools --vcf SimulationResults/Simulation4200_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G100001
vcftools --vcf SimulationResults/Simulation4200_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G110000
vcftools --vcf SimulationResults/Simulation4200_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G120000
vcftools --vcf SimulationResults/Simulation4200_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G130000
vcftools --vcf SimulationResults/Simulation4200_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G140000
vcftools --vcf SimulationResults/Simulation4200_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G150000
vcftools --vcf SimulationResults/Simulation4200_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G160000
vcftools --vcf SimulationResults/Simulation4200_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G170000
vcftools --vcf SimulationResults/Simulation4200_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G180000
vcftools --vcf SimulationResults/Simulation4200_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G190000
vcftools --vcf SimulationResults/Simulation4200_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G200000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5_200.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation5200_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G0
vcftools --vcf SimulationResults/Simulation5200_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G2
vcftools --vcf SimulationResults/Simulation5200_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G10000
vcftools --vcf SimulationResults/Simulation5200_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G20000
vcftools --vcf SimulationResults/Simulation5200_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G30000
vcftools --vcf SimulationResults/Simulation5200_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G40000
vcftools --vcf SimulationResults/Simulation5200_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G50000
vcftools --vcf SimulationResults/Simulation5200_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G60000
vcftools --vcf SimulationResults/Simulation5200_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G70000
vcftools --vcf SimulationResults/Simulation5200_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G80000
vcftools --vcf SimulationResults/Simulation5200_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G90000
vcftools --vcf SimulationResults/Simulation5200_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G100001
vcftools --vcf SimulationResults/Simulation5200_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G110000
vcftools --vcf SimulationResults/Simulation5200_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G120000
vcftools --vcf SimulationResults/Simulation5200_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G130000
vcftools --vcf SimulationResults/Simulation5200_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G140000
vcftools --vcf SimulationResults/Simulation5200_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G150000
vcftools --vcf SimulationResults/Simulation5200_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G160000
vcftools --vcf SimulationResults/Simulation5200_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G170000
vcftools --vcf SimulationResults/Simulation5200_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G180000
vcftools --vcf SimulationResults/Simulation5200_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G190000
vcftools --vcf SimulationResults/Simulation5200_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G200000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation5200_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G0
vcftools --vcf SimulationResults/Simulation5200_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G2
vcftools --vcf SimulationResults/Simulation5200_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G10000
vcftools --vcf SimulationResults/Simulation5200_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G20000
vcftools --vcf SimulationResults/Simulation5200_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G30000
vcftools --vcf SimulationResults/Simulation5200_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G40000
vcftools --vcf SimulationResults/Simulation5200_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G50000
vcftools --vcf SimulationResults/Simulation5200_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G60000
vcftools --vcf SimulationResults/Simulation5200_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G70000
vcftools --vcf SimulationResults/Simulation5200_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G80000
vcftools --vcf SimulationResults/Simulation5200_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G90000
vcftools --vcf SimulationResults/Simulation5200_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G100001
vcftools --vcf SimulationResults/Simulation5200_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G110000
vcftools --vcf SimulationResults/Simulation5200_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G120000
vcftools --vcf SimulationResults/Simulation5200_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G130000
vcftools --vcf SimulationResults/Simulation5200_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G140000
vcftools --vcf SimulationResults/Simulation5200_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G150000
vcftools --vcf SimulationResults/Simulation5200_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G160000
vcftools --vcf SimulationResults/Simulation5200_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G170000
vcftools --vcf SimulationResults/Simulation5200_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G180000
vcftools --vcf SimulationResults/Simulation5200_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G190000
vcftools --vcf SimulationResults/Simulation5200_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G200000
