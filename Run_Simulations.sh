

###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation1_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G0
vcftools --vcf SimulationResults/Simulation1_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G2
vcftools --vcf SimulationResults/Simulation1_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G10000
vcftools --vcf SimulationResults/Simulation1_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G20000
vcftools --vcf SimulationResults/Simulation1_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G30000
vcftools --vcf SimulationResults/Simulation1_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G40000
vcftools --vcf SimulationResults/Simulation1_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G50000
vcftools --vcf SimulationResults/Simulation1_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G60000
vcftools --vcf SimulationResults/Simulation1_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G70000
vcftools --vcf SimulationResults/Simulation1_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G80000
vcftools --vcf SimulationResults/Simulation1_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G90000
vcftools --vcf SimulationResults/Simulation1_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G100001
vcftools --vcf SimulationResults/Simulation1_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G110000
vcftools --vcf SimulationResults/Simulation1_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G120000
vcftools --vcf SimulationResults/Simulation1_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G130000
vcftools --vcf SimulationResults/Simulation1_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G140000
vcftools --vcf SimulationResults/Simulation1_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G150000
vcftools --vcf SimulationResults/Simulation1_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G160000
vcftools --vcf SimulationResults/Simulation1_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G170000
vcftools --vcf SimulationResults/Simulation1_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G180000
vcftools --vcf SimulationResults/Simulation1_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G190000
vcftools --vcf SimulationResults/Simulation1_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G200000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation1_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G0
vcftools --vcf SimulationResults/Simulation1_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G2
vcftools --vcf SimulationResults/Simulation1_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G10000
vcftools --vcf SimulationResults/Simulation1_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G20000
vcftools --vcf SimulationResults/Simulation1_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G30000
vcftools --vcf SimulationResults/Simulation1_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G40000
vcftools --vcf SimulationResults/Simulation1_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G50000
vcftools --vcf SimulationResults/Simulation1_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G60000
vcftools --vcf SimulationResults/Simulation1_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G70000
vcftools --vcf SimulationResults/Simulation1_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G80000
vcftools --vcf SimulationResults/Simulation1_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G90000
vcftools --vcf SimulationResults/Simulation1_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G100001
vcftools --vcf SimulationResults/Simulation1_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G110000
vcftools --vcf SimulationResults/Simulation1_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G120000
vcftools --vcf SimulationResults/Simulation1_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G130000
vcftools --vcf SimulationResults/Simulation1_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G140000
vcftools --vcf SimulationResults/Simulation1_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G150000
vcftools --vcf SimulationResults/Simulation1_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G160000
vcftools --vcf SimulationResults/Simulation1_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G170000
vcftools --vcf SimulationResults/Simulation1_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G180000
vcftools --vcf SimulationResults/Simulation1_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G190000
vcftools --vcf SimulationResults/Simulation1_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G200000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait2.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation2_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G0
vcftools --vcf SimulationResults/Simulation2_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G2
vcftools --vcf SimulationResults/Simulation2_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G10000
vcftools --vcf SimulationResults/Simulation2_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G20000
vcftools --vcf SimulationResults/Simulation2_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G30000
vcftools --vcf SimulationResults/Simulation2_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G40000
vcftools --vcf SimulationResults/Simulation2_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G50000
vcftools --vcf SimulationResults/Simulation2_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G60000
vcftools --vcf SimulationResults/Simulation2_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G70000
vcftools --vcf SimulationResults/Simulation2_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G80000
vcftools --vcf SimulationResults/Simulation2_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G90000
vcftools --vcf SimulationResults/Simulation2_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G100001
vcftools --vcf SimulationResults/Simulation2_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G110000
vcftools --vcf SimulationResults/Simulation2_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G120000
vcftools --vcf SimulationResults/Simulation2_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G130000
vcftools --vcf SimulationResults/Simulation2_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G140000
vcftools --vcf SimulationResults/Simulation2_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G150000
vcftools --vcf SimulationResults/Simulation2_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G160000
vcftools --vcf SimulationResults/Simulation2_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G170000
vcftools --vcf SimulationResults/Simulation2_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G180000
vcftools --vcf SimulationResults/Simulation2_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G190000
vcftools --vcf SimulationResults/Simulation2_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation2_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G0
vcftools --vcf SimulationResults/Simulation2_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G2
vcftools --vcf SimulationResults/Simulation2_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G10000
vcftools --vcf SimulationResults/Simulation2_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G20000
vcftools --vcf SimulationResults/Simulation2_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G30000
vcftools --vcf SimulationResults/Simulation2_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G40000
vcftools --vcf SimulationResults/Simulation2_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G50000
vcftools --vcf SimulationResults/Simulation2_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G60000
vcftools --vcf SimulationResults/Simulation2_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G70000
vcftools --vcf SimulationResults/Simulation2_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G80000
vcftools --vcf SimulationResults/Simulation2_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G90000
vcftools --vcf SimulationResults/Simulation2_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G100001
vcftools --vcf SimulationResults/Simulation2_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G110000
vcftools --vcf SimulationResults/Simulation2_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G120000
vcftools --vcf SimulationResults/Simulation2_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G130000
vcftools --vcf SimulationResults/Simulation2_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G140000
vcftools --vcf SimulationResults/Simulation2_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G150000
vcftools --vcf SimulationResults/Simulation2_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G160000
vcftools --vcf SimulationResults/Simulation2_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G170000
vcftools --vcf SimulationResults/Simulation2_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G180000
vcftools --vcf SimulationResults/Simulation2_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G190000
vcftools --vcf SimulationResults/Simulation2_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G200000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation3_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G0
vcftools --vcf SimulationResults/Simulation3_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G2
vcftools --vcf SimulationResults/Simulation3_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G10000
vcftools --vcf SimulationResults/Simulation3_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G20000
vcftools --vcf SimulationResults/Simulation3_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G30000
vcftools --vcf SimulationResults/Simulation3_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G40000
vcftools --vcf SimulationResults/Simulation3_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G50000
vcftools --vcf SimulationResults/Simulation3_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G60000
vcftools --vcf SimulationResults/Simulation3_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G70000
vcftools --vcf SimulationResults/Simulation3_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G80000
vcftools --vcf SimulationResults/Simulation3_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G90000
vcftools --vcf SimulationResults/Simulation3_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G100001
vcftools --vcf SimulationResults/Simulation3_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G110000
vcftools --vcf SimulationResults/Simulation3_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G120000
vcftools --vcf SimulationResults/Simulation3_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G130000
vcftools --vcf SimulationResults/Simulation3_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G140000
vcftools --vcf SimulationResults/Simulation3_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G150000
vcftools --vcf SimulationResults/Simulation3_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G160000
vcftools --vcf SimulationResults/Simulation3_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G170000
vcftools --vcf SimulationResults/Simulation3_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G180000
vcftools --vcf SimulationResults/Simulation3_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G190000
vcftools --vcf SimulationResults/Simulation3_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation3_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G0
vcftools --vcf SimulationResults/Simulation3_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G2
vcftools --vcf SimulationResults/Simulation3_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G10000
vcftools --vcf SimulationResults/Simulation3_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G20000
vcftools --vcf SimulationResults/Simulation3_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G30000
vcftools --vcf SimulationResults/Simulation3_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G40000
vcftools --vcf SimulationResults/Simulation3_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G50000
vcftools --vcf SimulationResults/Simulation3_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G60000
vcftools --vcf SimulationResults/Simulation3_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G70000
vcftools --vcf SimulationResults/Simulation3_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G80000
vcftools --vcf SimulationResults/Simulation3_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G90000
vcftools --vcf SimulationResults/Simulation3_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G100001
vcftools --vcf SimulationResults/Simulation3_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G110000
vcftools --vcf SimulationResults/Simulation3_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G120000
vcftools --vcf SimulationResults/Simulation3_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G130000
vcftools --vcf SimulationResults/Simulation3_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G140000
vcftools --vcf SimulationResults/Simulation3_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G150000
vcftools --vcf SimulationResults/Simulation3_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G160000
vcftools --vcf SimulationResults/Simulation3_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G170000
vcftools --vcf SimulationResults/Simulation3_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G180000
vcftools --vcf SimulationResults/Simulation3_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G190000
vcftools --vcf SimulationResults/Simulation3_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G200000



###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation4_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G0
vcftools --vcf SimulationResults/Simulation4_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G2
vcftools --vcf SimulationResults/Simulation4_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G10000
vcftools --vcf SimulationResults/Simulation4_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G20000
vcftools --vcf SimulationResults/Simulation4_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G30000
vcftools --vcf SimulationResults/Simulation4_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G40000
vcftools --vcf SimulationResults/Simulation4_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G50000
vcftools --vcf SimulationResults/Simulation4_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G60000
vcftools --vcf SimulationResults/Simulation4_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G70000
vcftools --vcf SimulationResults/Simulation4_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G80000
vcftools --vcf SimulationResults/Simulation4_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G90000
vcftools --vcf SimulationResults/Simulation4_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G100001
vcftools --vcf SimulationResults/Simulation4_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G110000
vcftools --vcf SimulationResults/Simulation4_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G120000
vcftools --vcf SimulationResults/Simulation4_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G130000
vcftools --vcf SimulationResults/Simulation4_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G140000
vcftools --vcf SimulationResults/Simulation4_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G150000
vcftools --vcf SimulationResults/Simulation4_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G160000
vcftools --vcf SimulationResults/Simulation4_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G170000
vcftools --vcf SimulationResults/Simulation4_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G180000
vcftools --vcf SimulationResults/Simulation4_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G190000
vcftools --vcf SimulationResults/Simulation4_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G200000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation4_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G0
vcftools --vcf SimulationResults/Simulation4_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G2
vcftools --vcf SimulationResults/Simulation4_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G10000
vcftools --vcf SimulationResults/Simulation4_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G20000
vcftools --vcf SimulationResults/Simulation4_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G30000
vcftools --vcf SimulationResults/Simulation4_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G40000
vcftools --vcf SimulationResults/Simulation4_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G50000
vcftools --vcf SimulationResults/Simulation4_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G60000
vcftools --vcf SimulationResults/Simulation4_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G70000
vcftools --vcf SimulationResults/Simulation4_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G80000
vcftools --vcf SimulationResults/Simulation4_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G90000
vcftools --vcf SimulationResults/Simulation4_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G100001
vcftools --vcf SimulationResults/Simulation4_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G110000
vcftools --vcf SimulationResults/Simulation4_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G120000
vcftools --vcf SimulationResults/Simulation4_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G130000
vcftools --vcf SimulationResults/Simulation4_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G140000
vcftools --vcf SimulationResults/Simulation4_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G150000
vcftools --vcf SimulationResults/Simulation4_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G160000
vcftools --vcf SimulationResults/Simulation4_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G170000
vcftools --vcf SimulationResults/Simulation4_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G180000
vcftools --vcf SimulationResults/Simulation4_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G190000
vcftools --vcf SimulationResults/Simulation4_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G200000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation5_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G0
vcftools --vcf SimulationResults/Simulation5_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G2
vcftools --vcf SimulationResults/Simulation5_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G10000
vcftools --vcf SimulationResults/Simulation5_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G20000
vcftools --vcf SimulationResults/Simulation5_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G30000
vcftools --vcf SimulationResults/Simulation5_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G40000
vcftools --vcf SimulationResults/Simulation5_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G50000
vcftools --vcf SimulationResults/Simulation5_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G60000
vcftools --vcf SimulationResults/Simulation5_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G70000
vcftools --vcf SimulationResults/Simulation5_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G80000
vcftools --vcf SimulationResults/Simulation5_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G90000
vcftools --vcf SimulationResults/Simulation5_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G100001
vcftools --vcf SimulationResults/Simulation5_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G110000
vcftools --vcf SimulationResults/Simulation5_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G120000
vcftools --vcf SimulationResults/Simulation5_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G130000
vcftools --vcf SimulationResults/Simulation5_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G140000
vcftools --vcf SimulationResults/Simulation5_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G150000
vcftools --vcf SimulationResults/Simulation5_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G160000
vcftools --vcf SimulationResults/Simulation5_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G170000
vcftools --vcf SimulationResults/Simulation5_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G180000
vcftools --vcf SimulationResults/Simulation5_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G190000
vcftools --vcf SimulationResults/Simulation5_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G200000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation5_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G0
vcftools --vcf SimulationResults/Simulation5_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G2
vcftools --vcf SimulationResults/Simulation5_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G10000
vcftools --vcf SimulationResults/Simulation5_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G20000
vcftools --vcf SimulationResults/Simulation5_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G30000
vcftools --vcf SimulationResults/Simulation5_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G40000
vcftools --vcf SimulationResults/Simulation5_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G50000
vcftools --vcf SimulationResults/Simulation5_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G60000
vcftools --vcf SimulationResults/Simulation5_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G70000
vcftools --vcf SimulationResults/Simulation5_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G80000
vcftools --vcf SimulationResults/Simulation5_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G90000
vcftools --vcf SimulationResults/Simulation5_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G100001
vcftools --vcf SimulationResults/Simulation5_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G110000
vcftools --vcf SimulationResults/Simulation5_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G120000
vcftools --vcf SimulationResults/Simulation5_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G130000
vcftools --vcf SimulationResults/Simulation5_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G140000
vcftools --vcf SimulationResults/Simulation5_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G150000
vcftools --vcf SimulationResults/Simulation5_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G160000
vcftools --vcf SimulationResults/Simulation5_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G170000
vcftools --vcf SimulationResults/Simulation5_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G180000
vcftools --vcf SimulationResults/Simulation5_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G190000
vcftools --vcf SimulationResults/Simulation5_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G200000







