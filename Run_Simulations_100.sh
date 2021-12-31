


###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1_100.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation1100_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G0
vcftools --vcf SimulationResults/Simulation1100_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G2
vcftools --vcf SimulationResults/Simulation1100_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G10000
vcftools --vcf SimulationResults/Simulation1100_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G20000
vcftools --vcf SimulationResults/Simulation1100_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G30000
vcftools --vcf SimulationResults/Simulation1100_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G40000
vcftools --vcf SimulationResults/Simulation1100_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G50000
vcftools --vcf SimulationResults/Simulation1100_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G60000
vcftools --vcf SimulationResults/Simulation1100_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G70000
vcftools --vcf SimulationResults/Simulation1100_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G80000
vcftools --vcf SimulationResults/Simulation1100_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G90000
vcftools --vcf SimulationResults/Simulation1100_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G100001
vcftools --vcf SimulationResults/Simulation1100_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G110000
vcftools --vcf SimulationResults/Simulation1100_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G120000
vcftools --vcf SimulationResults/Simulation1100_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G130000
vcftools --vcf SimulationResults/Simulation1100_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G140000
vcftools --vcf SimulationResults/Simulation1100_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G150000
vcftools --vcf SimulationResults/Simulation1100_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G160000
vcftools --vcf SimulationResults/Simulation1100_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G170000
vcftools --vcf SimulationResults/Simulation1100_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G180000
vcftools --vcf SimulationResults/Simulation1100_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G190000
vcftools --vcf SimulationResults/Simulation1100_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G200000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation1100_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G0
vcftools --vcf SimulationResults/Simulation1100_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G2
vcftools --vcf SimulationResults/Simulation1100_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G10000
vcftools --vcf SimulationResults/Simulation1100_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G20000
vcftools --vcf SimulationResults/Simulation1100_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G30000
vcftools --vcf SimulationResults/Simulation1100_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G40000
vcftools --vcf SimulationResults/Simulation1100_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G50000
vcftools --vcf SimulationResults/Simulation1100_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G60000
vcftools --vcf SimulationResults/Simulation1100_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G70000
vcftools --vcf SimulationResults/Simulation1100_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G80000
vcftools --vcf SimulationResults/Simulation1100_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G90000
vcftools --vcf SimulationResults/Simulation1100_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G100001
vcftools --vcf SimulationResults/Simulation1100_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G110000
vcftools --vcf SimulationResults/Simulation1100_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G120000
vcftools --vcf SimulationResults/Simulation1100_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G130000
vcftools --vcf SimulationResults/Simulation1100_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G140000
vcftools --vcf SimulationResults/Simulation1100_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G150000
vcftools --vcf SimulationResults/Simulation1100_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G160000
vcftools --vcf SimulationResults/Simulation1100_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G170000
vcftools --vcf SimulationResults/Simulation1100_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G180000
vcftools --vcf SimulationResults/Simulation1100_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G190000
vcftools --vcf SimulationResults/Simulation1100_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G200000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait2_100.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation2100_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G0
vcftools --vcf SimulationResults/Simulation2100_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G2
vcftools --vcf SimulationResults/Simulation2100_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G10000
vcftools --vcf SimulationResults/Simulation2100_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G20000
vcftools --vcf SimulationResults/Simulation2100_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G30000
vcftools --vcf SimulationResults/Simulation2100_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G40000
vcftools --vcf SimulationResults/Simulation2100_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G50000
vcftools --vcf SimulationResults/Simulation2100_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G60000
vcftools --vcf SimulationResults/Simulation2100_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G70000
vcftools --vcf SimulationResults/Simulation2100_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G80000
vcftools --vcf SimulationResults/Simulation2100_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G90000
vcftools --vcf SimulationResults/Simulation2100_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G100001
vcftools --vcf SimulationResults/Simulation2100_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G110000
vcftools --vcf SimulationResults/Simulation2100_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G120000
vcftools --vcf SimulationResults/Simulation2100_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G130000
vcftools --vcf SimulationResults/Simulation2100_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G140000
vcftools --vcf SimulationResults/Simulation2100_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G150000
vcftools --vcf SimulationResults/Simulation2100_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G160000
vcftools --vcf SimulationResults/Simulation2100_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G170000
vcftools --vcf SimulationResults/Simulation2100_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G180000
vcftools --vcf SimulationResults/Simulation2100_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G190000
vcftools --vcf SimulationResults/Simulation2100_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation2100_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G0
vcftools --vcf SimulationResults/Simulation2100_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G2
vcftools --vcf SimulationResults/Simulation2100_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G10000
vcftools --vcf SimulationResults/Simulation2100_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G20000
vcftools --vcf SimulationResults/Simulation2100_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G30000
vcftools --vcf SimulationResults/Simulation2100_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G40000
vcftools --vcf SimulationResults/Simulation2100_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G50000
vcftools --vcf SimulationResults/Simulation2100_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G60000
vcftools --vcf SimulationResults/Simulation2100_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G70000
vcftools --vcf SimulationResults/Simulation2100_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G80000
vcftools --vcf SimulationResults/Simulation2100_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G90000
vcftools --vcf SimulationResults/Simulation2100_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G100001
vcftools --vcf SimulationResults/Simulation2100_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G110000
vcftools --vcf SimulationResults/Simulation2100_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G120000
vcftools --vcf SimulationResults/Simulation2100_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G130000
vcftools --vcf SimulationResults/Simulation2100_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G140000
vcftools --vcf SimulationResults/Simulation2100_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G150000
vcftools --vcf SimulationResults/Simulation2100_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G160000
vcftools --vcf SimulationResults/Simulation2100_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G170000
vcftools --vcf SimulationResults/Simulation2100_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G180000
vcftools --vcf SimulationResults/Simulation2100_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G190000
vcftools --vcf SimulationResults/Simulation2100_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G200000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3_100.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation3100_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G0
vcftools --vcf SimulationResults/Simulation3100_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G2
vcftools --vcf SimulationResults/Simulation3100_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G10000
vcftools --vcf SimulationResults/Simulation3100_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G20000
vcftools --vcf SimulationResults/Simulation3100_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G30000
vcftools --vcf SimulationResults/Simulation3100_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G40000
vcftools --vcf SimulationResults/Simulation3100_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G50000
vcftools --vcf SimulationResults/Simulation3100_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G60000
vcftools --vcf SimulationResults/Simulation3100_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G70000
vcftools --vcf SimulationResults/Simulation3100_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G80000
vcftools --vcf SimulationResults/Simulation3100_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G90000
vcftools --vcf SimulationResults/Simulation3100_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G100001
vcftools --vcf SimulationResults/Simulation3100_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G110000
vcftools --vcf SimulationResults/Simulation3100_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G120000
vcftools --vcf SimulationResults/Simulation3100_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G130000
vcftools --vcf SimulationResults/Simulation3100_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G140000
vcftools --vcf SimulationResults/Simulation3100_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G150000
vcftools --vcf SimulationResults/Simulation3100_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G160000
vcftools --vcf SimulationResults/Simulation3100_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G170000
vcftools --vcf SimulationResults/Simulation3100_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G180000
vcftools --vcf SimulationResults/Simulation3100_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G190000
vcftools --vcf SimulationResults/Simulation3100_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation3100_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G0
vcftools --vcf SimulationResults/Simulation3100_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G2
vcftools --vcf SimulationResults/Simulation3100_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G10000
vcftools --vcf SimulationResults/Simulation3100_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G20000
vcftools --vcf SimulationResults/Simulation3100_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G30000
vcftools --vcf SimulationResults/Simulation3100_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G40000
vcftools --vcf SimulationResults/Simulation3100_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G50000
vcftools --vcf SimulationResults/Simulation3100_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G60000
vcftools --vcf SimulationResults/Simulation3100_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G70000
vcftools --vcf SimulationResults/Simulation3100_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G80000
vcftools --vcf SimulationResults/Simulation3100_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G90000
vcftools --vcf SimulationResults/Simulation3100_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G100001
vcftools --vcf SimulationResults/Simulation3100_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G110000
vcftools --vcf SimulationResults/Simulation3100_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G120000
vcftools --vcf SimulationResults/Simulation3100_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G130000
vcftools --vcf SimulationResults/Simulation3100_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G140000
vcftools --vcf SimulationResults/Simulation3100_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G150000
vcftools --vcf SimulationResults/Simulation3100_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G160000
vcftools --vcf SimulationResults/Simulation3100_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G170000
vcftools --vcf SimulationResults/Simulation3100_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G180000
vcftools --vcf SimulationResults/Simulation3100_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G190000
vcftools --vcf SimulationResults/Simulation3100_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G200000



###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4_100.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation4100_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G0
vcftools --vcf SimulationResults/Simulation4100_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G2
vcftools --vcf SimulationResults/Simulation4100_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G10000
vcftools --vcf SimulationResults/Simulation4100_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G20000
vcftools --vcf SimulationResults/Simulation4100_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G30000
vcftools --vcf SimulationResults/Simulation4100_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G40000
vcftools --vcf SimulationResults/Simulation4100_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G50000
vcftools --vcf SimulationResults/Simulation4100_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G60000
vcftools --vcf SimulationResults/Simulation4100_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G70000
vcftools --vcf SimulationResults/Simulation4100_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G80000
vcftools --vcf SimulationResults/Simulation4100_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G90000
vcftools --vcf SimulationResults/Simulation4100_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G100001
vcftools --vcf SimulationResults/Simulation4100_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G110000
vcftools --vcf SimulationResults/Simulation4100_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G120000
vcftools --vcf SimulationResults/Simulation4100_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G130000
vcftools --vcf SimulationResults/Simulation4100_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G140000
vcftools --vcf SimulationResults/Simulation4100_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G150000
vcftools --vcf SimulationResults/Simulation4100_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G160000
vcftools --vcf SimulationResults/Simulation4100_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G170000
vcftools --vcf SimulationResults/Simulation4100_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G180000
vcftools --vcf SimulationResults/Simulation4100_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G190000
vcftools --vcf SimulationResults/Simulation4100_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G200000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation4100_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G0
vcftools --vcf SimulationResults/Simulation4100_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G2
vcftools --vcf SimulationResults/Simulation4100_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G10000
vcftools --vcf SimulationResults/Simulation4100_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G20000
vcftools --vcf SimulationResults/Simulation4100_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G30000
vcftools --vcf SimulationResults/Simulation4100_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G40000
vcftools --vcf SimulationResults/Simulation4100_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G50000
vcftools --vcf SimulationResults/Simulation4100_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G60000
vcftools --vcf SimulationResults/Simulation4100_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G70000
vcftools --vcf SimulationResults/Simulation4100_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G80000
vcftools --vcf SimulationResults/Simulation4100_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G90000
vcftools --vcf SimulationResults/Simulation4100_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G100001
vcftools --vcf SimulationResults/Simulation4100_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G110000
vcftools --vcf SimulationResults/Simulation4100_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G120000
vcftools --vcf SimulationResults/Simulation4100_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G130000
vcftools --vcf SimulationResults/Simulation4100_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G140000
vcftools --vcf SimulationResults/Simulation4100_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G150000
vcftools --vcf SimulationResults/Simulation4100_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G160000
vcftools --vcf SimulationResults/Simulation4100_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G170000
vcftools --vcf SimulationResults/Simulation4100_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G180000
vcftools --vcf SimulationResults/Simulation4100_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G190000
vcftools --vcf SimulationResults/Simulation4100_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G200000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5_100.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation5100_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G0
vcftools --vcf SimulationResults/Simulation5100_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G2
vcftools --vcf SimulationResults/Simulation5100_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G10000
vcftools --vcf SimulationResults/Simulation5100_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G20000
vcftools --vcf SimulationResults/Simulation5100_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G30000
vcftools --vcf SimulationResults/Simulation5100_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G40000
vcftools --vcf SimulationResults/Simulation5100_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G50000
vcftools --vcf SimulationResults/Simulation5100_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G60000
vcftools --vcf SimulationResults/Simulation5100_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G70000
vcftools --vcf SimulationResults/Simulation5100_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G80000
vcftools --vcf SimulationResults/Simulation5100_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G90000
vcftools --vcf SimulationResults/Simulation5100_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G100001
vcftools --vcf SimulationResults/Simulation5100_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G110000
vcftools --vcf SimulationResults/Simulation5100_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G120000
vcftools --vcf SimulationResults/Simulation5100_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G130000
vcftools --vcf SimulationResults/Simulation5100_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G140000
vcftools --vcf SimulationResults/Simulation5100_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G150000
vcftools --vcf SimulationResults/Simulation5100_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G160000
vcftools --vcf SimulationResults/Simulation5100_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G170000
vcftools --vcf SimulationResults/Simulation5100_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G180000
vcftools --vcf SimulationResults/Simulation5100_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G190000
vcftools --vcf SimulationResults/Simulation5100_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G200000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation5100_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G0
vcftools --vcf SimulationResults/Simulation5100_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G2
vcftools --vcf SimulationResults/Simulation5100_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G10000
vcftools --vcf SimulationResults/Simulation5100_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G20000
vcftools --vcf SimulationResults/Simulation5100_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G30000
vcftools --vcf SimulationResults/Simulation5100_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G40000
vcftools --vcf SimulationResults/Simulation5100_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G50000
vcftools --vcf SimulationResults/Simulation5100_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G60000
vcftools --vcf SimulationResults/Simulation5100_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G70000
vcftools --vcf SimulationResults/Simulation5100_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G80000
vcftools --vcf SimulationResults/Simulation5100_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G90000
vcftools --vcf SimulationResults/Simulation5100_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G100001
vcftools --vcf SimulationResults/Simulation5100_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G110000
vcftools --vcf SimulationResults/Simulation5100_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G120000
vcftools --vcf SimulationResults/Simulation5100_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G130000
vcftools --vcf SimulationResults/Simulation5100_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G140000
vcftools --vcf SimulationResults/Simulation5100_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G150000
vcftools --vcf SimulationResults/Simulation5100_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G160000
vcftools --vcf SimulationResults/Simulation5100_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G170000
vcftools --vcf SimulationResults/Simulation5100_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G180000
vcftools --vcf SimulationResults/Simulation5100_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G190000
vcftools --vcf SimulationResults/Simulation5100_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G200000


