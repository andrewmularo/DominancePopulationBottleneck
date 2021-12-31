


###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1_300.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation1300_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G0
vcftools --vcf SimulationResults/Simulation1300_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G2
vcftools --vcf SimulationResults/Simulation1300_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G10000
vcftools --vcf SimulationResults/Simulation1300_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G20000
vcftools --vcf SimulationResults/Simulation1300_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G30000
vcftools --vcf SimulationResults/Simulation1300_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G40000
vcftools --vcf SimulationResults/Simulation1300_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G50000
vcftools --vcf SimulationResults/Simulation1300_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G60000
vcftools --vcf SimulationResults/Simulation1300_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G70000
vcftools --vcf SimulationResults/Simulation1300_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G80000
vcftools --vcf SimulationResults/Simulation1300_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G90000
vcftools --vcf SimulationResults/Simulation1300_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G100001
vcftools --vcf SimulationResults/Simulation1300_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G110000
vcftools --vcf SimulationResults/Simulation1300_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G120000
vcftools --vcf SimulationResults/Simulation1300_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G130000
vcftools --vcf SimulationResults/Simulation1300_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G140000
vcftools --vcf SimulationResults/Simulation1300_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G150000
vcftools --vcf SimulationResults/Simulation1300_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G160000
vcftools --vcf SimulationResults/Simulation1300_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G170000
vcftools --vcf SimulationResults/Simulation1300_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G180000
vcftools --vcf SimulationResults/Simulation1300_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G190000
vcftools --vcf SimulationResults/Simulation1300_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G200000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation1300_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G0
vcftools --vcf SimulationResults/Simulation1300_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G2
vcftools --vcf SimulationResults/Simulation1300_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G10000
vcftools --vcf SimulationResults/Simulation1300_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G20000
vcftools --vcf SimulationResults/Simulation1300_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G30000
vcftools --vcf SimulationResults/Simulation1300_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G40000
vcftools --vcf SimulationResults/Simulation1300_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G50000
vcftools --vcf SimulationResults/Simulation1300_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G60000
vcftools --vcf SimulationResults/Simulation1300_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G70000
vcftools --vcf SimulationResults/Simulation1300_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G80000
vcftools --vcf SimulationResults/Simulation1300_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G90000
vcftools --vcf SimulationResults/Simulation1300_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G100001
vcftools --vcf SimulationResults/Simulation1300_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G110000
vcftools --vcf SimulationResults/Simulation1300_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G120000
vcftools --vcf SimulationResults/Simulation1300_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G130000
vcftools --vcf SimulationResults/Simulation1300_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G140000
vcftools --vcf SimulationResults/Simulation1300_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G150000
vcftools --vcf SimulationResults/Simulation1300_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G160000
vcftools --vcf SimulationResults/Simulation1300_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G170000
vcftools --vcf SimulationResults/Simulation1300_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G180000
vcftools --vcf SimulationResults/Simulation1300_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G190000
vcftools --vcf SimulationResults/Simulation1300_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G200000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait2_300.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation2300_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G0
vcftools --vcf SimulationResults/Simulation2300_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G2
vcftools --vcf SimulationResults/Simulation2300_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G10000
vcftools --vcf SimulationResults/Simulation2300_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G20000
vcftools --vcf SimulationResults/Simulation2300_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G30000
vcftools --vcf SimulationResults/Simulation2300_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G40000
vcftools --vcf SimulationResults/Simulation2300_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G50000
vcftools --vcf SimulationResults/Simulation2300_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G60000
vcftools --vcf SimulationResults/Simulation2300_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G70000
vcftools --vcf SimulationResults/Simulation2300_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G80000
vcftools --vcf SimulationResults/Simulation2300_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G90000
vcftools --vcf SimulationResults/Simulation2300_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G100001
vcftools --vcf SimulationResults/Simulation2300_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G110000
vcftools --vcf SimulationResults/Simulation2300_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G120000
vcftools --vcf SimulationResults/Simulation2300_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G130000
vcftools --vcf SimulationResults/Simulation2300_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G140000
vcftools --vcf SimulationResults/Simulation2300_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G150000
vcftools --vcf SimulationResults/Simulation2300_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G160000
vcftools --vcf SimulationResults/Simulation2300_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G170000
vcftools --vcf SimulationResults/Simulation2300_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G180000
vcftools --vcf SimulationResults/Simulation2300_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G190000
vcftools --vcf SimulationResults/Simulation2300_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation2300_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G0
vcftools --vcf SimulationResults/Simulation2300_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G2
vcftools --vcf SimulationResults/Simulation2300_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G10000
vcftools --vcf SimulationResults/Simulation2300_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G20000
vcftools --vcf SimulationResults/Simulation2300_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G30000
vcftools --vcf SimulationResults/Simulation2300_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G40000
vcftools --vcf SimulationResults/Simulation2300_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G50000
vcftools --vcf SimulationResults/Simulation2300_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G60000
vcftools --vcf SimulationResults/Simulation2300_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G70000
vcftools --vcf SimulationResults/Simulation2300_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G80000
vcftools --vcf SimulationResults/Simulation2300_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G90000
vcftools --vcf SimulationResults/Simulation2300_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G100001
vcftools --vcf SimulationResults/Simulation2300_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G110000
vcftools --vcf SimulationResults/Simulation2300_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G120000
vcftools --vcf SimulationResults/Simulation2300_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G130000
vcftools --vcf SimulationResults/Simulation2300_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G140000
vcftools --vcf SimulationResults/Simulation2300_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G150000
vcftools --vcf SimulationResults/Simulation2300_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G160000
vcftools --vcf SimulationResults/Simulation2300_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G170000
vcftools --vcf SimulationResults/Simulation2300_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G180000
vcftools --vcf SimulationResults/Simulation2300_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G190000
vcftools --vcf SimulationResults/Simulation2300_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G200000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3_300.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation3300_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G0
vcftools --vcf SimulationResults/Simulation3300_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G2
vcftools --vcf SimulationResults/Simulation3300_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G10000
vcftools --vcf SimulationResults/Simulation3300_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G20000
vcftools --vcf SimulationResults/Simulation3300_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G30000
vcftools --vcf SimulationResults/Simulation3300_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G40000
vcftools --vcf SimulationResults/Simulation3300_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G50000
vcftools --vcf SimulationResults/Simulation3300_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G60000
vcftools --vcf SimulationResults/Simulation3300_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G70000
vcftools --vcf SimulationResults/Simulation3300_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G80000
vcftools --vcf SimulationResults/Simulation3300_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G90000
vcftools --vcf SimulationResults/Simulation3300_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G100001
vcftools --vcf SimulationResults/Simulation3300_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G110000
vcftools --vcf SimulationResults/Simulation3300_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G120000
vcftools --vcf SimulationResults/Simulation3300_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G130000
vcftools --vcf SimulationResults/Simulation3300_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G140000
vcftools --vcf SimulationResults/Simulation3300_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G150000
vcftools --vcf SimulationResults/Simulation3300_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G160000
vcftools --vcf SimulationResults/Simulation3300_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G170000
vcftools --vcf SimulationResults/Simulation3300_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G180000
vcftools --vcf SimulationResults/Simulation3300_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G190000
vcftools --vcf SimulationResults/Simulation3300_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation3300_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G0
vcftools --vcf SimulationResults/Simulation3300_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G2
vcftools --vcf SimulationResults/Simulation3300_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G10000
vcftools --vcf SimulationResults/Simulation3300_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G20000
vcftools --vcf SimulationResults/Simulation3300_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G30000
vcftools --vcf SimulationResults/Simulation3300_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G40000
vcftools --vcf SimulationResults/Simulation3300_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G50000
vcftools --vcf SimulationResults/Simulation3300_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G60000
vcftools --vcf SimulationResults/Simulation3300_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G70000
vcftools --vcf SimulationResults/Simulation3300_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G80000
vcftools --vcf SimulationResults/Simulation3300_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G90000
vcftools --vcf SimulationResults/Simulation3300_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G100001
vcftools --vcf SimulationResults/Simulation3300_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G110000
vcftools --vcf SimulationResults/Simulation3300_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G120000
vcftools --vcf SimulationResults/Simulation3300_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G130000
vcftools --vcf SimulationResults/Simulation3300_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G140000
vcftools --vcf SimulationResults/Simulation3300_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G150000
vcftools --vcf SimulationResults/Simulation3300_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G160000
vcftools --vcf SimulationResults/Simulation3300_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G170000
vcftools --vcf SimulationResults/Simulation3300_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G180000
vcftools --vcf SimulationResults/Simulation3300_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G190000
vcftools --vcf SimulationResults/Simulation3300_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G200000



###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4_300.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation4300_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G0
vcftools --vcf SimulationResults/Simulation4300_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G2
vcftools --vcf SimulationResults/Simulation4300_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G10000
vcftools --vcf SimulationResults/Simulation4300_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G20000
vcftools --vcf SimulationResults/Simulation4300_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G30000
vcftools --vcf SimulationResults/Simulation4300_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G40000
vcftools --vcf SimulationResults/Simulation4300_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G50000
vcftools --vcf SimulationResults/Simulation4300_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G60000
vcftools --vcf SimulationResults/Simulation4300_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G70000
vcftools --vcf SimulationResults/Simulation4300_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G80000
vcftools --vcf SimulationResults/Simulation4300_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G90000
vcftools --vcf SimulationResults/Simulation4300_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G100001
vcftools --vcf SimulationResults/Simulation4300_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G110000
vcftools --vcf SimulationResults/Simulation4300_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G120000
vcftools --vcf SimulationResults/Simulation4300_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G130000
vcftools --vcf SimulationResults/Simulation4300_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G140000
vcftools --vcf SimulationResults/Simulation4300_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G150000
vcftools --vcf SimulationResults/Simulation4300_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G160000
vcftools --vcf SimulationResults/Simulation4300_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G170000
vcftools --vcf SimulationResults/Simulation4300_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G180000
vcftools --vcf SimulationResults/Simulation4300_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G190000
vcftools --vcf SimulationResults/Simulation4300_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G200000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation4300_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G0
vcftools --vcf SimulationResults/Simulation4300_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G2
vcftools --vcf SimulationResults/Simulation4300_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G10000
vcftools --vcf SimulationResults/Simulation4300_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G20000
vcftools --vcf SimulationResults/Simulation4300_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G30000
vcftools --vcf SimulationResults/Simulation4300_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G40000
vcftools --vcf SimulationResults/Simulation4300_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G50000
vcftools --vcf SimulationResults/Simulation4300_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G60000
vcftools --vcf SimulationResults/Simulation4300_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G70000
vcftools --vcf SimulationResults/Simulation4300_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G80000
vcftools --vcf SimulationResults/Simulation4300_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G90000
vcftools --vcf SimulationResults/Simulation4300_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G100001
vcftools --vcf SimulationResults/Simulation4300_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G110000
vcftools --vcf SimulationResults/Simulation4300_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G120000
vcftools --vcf SimulationResults/Simulation4300_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G130000
vcftools --vcf SimulationResults/Simulation4300_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G140000
vcftools --vcf SimulationResults/Simulation4300_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G150000
vcftools --vcf SimulationResults/Simulation4300_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G160000
vcftools --vcf SimulationResults/Simulation4300_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G170000
vcftools --vcf SimulationResults/Simulation4300_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G180000
vcftools --vcf SimulationResults/Simulation4300_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G190000
vcftools --vcf SimulationResults/Simulation4300_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G200000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5_300.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation5300_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G0
vcftools --vcf SimulationResults/Simulation5300_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G2
vcftools --vcf SimulationResults/Simulation5300_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G10000
vcftools --vcf SimulationResults/Simulation5300_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G20000
vcftools --vcf SimulationResults/Simulation5300_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G30000
vcftools --vcf SimulationResults/Simulation5300_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G40000
vcftools --vcf SimulationResults/Simulation5300_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G50000
vcftools --vcf SimulationResults/Simulation5300_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G60000
vcftools --vcf SimulationResults/Simulation5300_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G70000
vcftools --vcf SimulationResults/Simulation5300_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G80000
vcftools --vcf SimulationResults/Simulation5300_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G90000
vcftools --vcf SimulationResults/Simulation5300_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G100001
vcftools --vcf SimulationResults/Simulation5300_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G110000
vcftools --vcf SimulationResults/Simulation5300_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G120000
vcftools --vcf SimulationResults/Simulation5300_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G130000
vcftools --vcf SimulationResults/Simulation5300_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G140000
vcftools --vcf SimulationResults/Simulation5300_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G150000
vcftools --vcf SimulationResults/Simulation5300_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G160000
vcftools --vcf SimulationResults/Simulation5300_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G170000
vcftools --vcf SimulationResults/Simulation5300_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G180000
vcftools --vcf SimulationResults/Simulation5300_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G190000
vcftools --vcf SimulationResults/Simulation5300_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G200000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation5300_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G0
vcftools --vcf SimulationResults/Simulation5300_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G2
vcftools --vcf SimulationResults/Simulation5300_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G10000
vcftools --vcf SimulationResults/Simulation5300_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G20000
vcftools --vcf SimulationResults/Simulation5300_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G30000
vcftools --vcf SimulationResults/Simulation5300_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G40000
vcftools --vcf SimulationResults/Simulation5300_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G50000
vcftools --vcf SimulationResults/Simulation5300_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G60000
vcftools --vcf SimulationResults/Simulation5300_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G70000
vcftools --vcf SimulationResults/Simulation5300_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G80000
vcftools --vcf SimulationResults/Simulation5300_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G90000
vcftools --vcf SimulationResults/Simulation5300_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G100001
vcftools --vcf SimulationResults/Simulation5300_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G110000
vcftools --vcf SimulationResults/Simulation5300_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G120000
vcftools --vcf SimulationResults/Simulation5300_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G130000
vcftools --vcf SimulationResults/Simulation5300_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G140000
vcftools --vcf SimulationResults/Simulation5300_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G150000
vcftools --vcf SimulationResults/Simulation5300_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G160000
vcftools --vcf SimulationResults/Simulation5300_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G170000
vcftools --vcf SimulationResults/Simulation5300_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G180000
vcftools --vcf SimulationResults/Simulation5300_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G190000
vcftools --vcf SimulationResults/Simulation5300_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G200000
