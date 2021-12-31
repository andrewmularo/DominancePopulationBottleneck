###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1_250.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation1250_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G0
vcftools --vcf SimulationResults/Simulation1250_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G2
vcftools --vcf SimulationResults/Simulation1250_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G10000
vcftools --vcf SimulationResults/Simulation1250_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G20000
vcftools --vcf SimulationResults/Simulation1250_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G30000
vcftools --vcf SimulationResults/Simulation1250_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G40000
vcftools --vcf SimulationResults/Simulation1250_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G50000
vcftools --vcf SimulationResults/Simulation1250_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G60000
vcftools --vcf SimulationResults/Simulation1250_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G70000
vcftools --vcf SimulationResults/Simulation1250_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G80000
vcftools --vcf SimulationResults/Simulation1250_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G90000
vcftools --vcf SimulationResults/Simulation1250_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G100001
vcftools --vcf SimulationResults/Simulation1250_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G110000
vcftools --vcf SimulationResults/Simulation1250_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G120000
vcftools --vcf SimulationResults/Simulation1250_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G130000
vcftools --vcf SimulationResults/Simulation1250_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G140000
vcftools --vcf SimulationResults/Simulation1250_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G150000
vcftools --vcf SimulationResults/Simulation1250_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G160000
vcftools --vcf SimulationResults/Simulation1250_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G170000
vcftools --vcf SimulationResults/Simulation1250_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G180000
vcftools --vcf SimulationResults/Simulation1250_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G190000
vcftools --vcf SimulationResults/Simulation1250_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G200000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation1250_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G0
vcftools --vcf SimulationResults/Simulation1250_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G2
vcftools --vcf SimulationResults/Simulation1250_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G10000
vcftools --vcf SimulationResults/Simulation1250_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G20000
vcftools --vcf SimulationResults/Simulation1250_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G30000
vcftools --vcf SimulationResults/Simulation1250_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G40000
vcftools --vcf SimulationResults/Simulation1250_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G50000
vcftools --vcf SimulationResults/Simulation1250_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G60000
vcftools --vcf SimulationResults/Simulation1250_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G70000
vcftools --vcf SimulationResults/Simulation1250_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G80000
vcftools --vcf SimulationResults/Simulation1250_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G90000
vcftools --vcf SimulationResults/Simulation1250_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G100001
vcftools --vcf SimulationResults/Simulation1250_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G110000
vcftools --vcf SimulationResults/Simulation1250_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G120000
vcftools --vcf SimulationResults/Simulation1250_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G130000
vcftools --vcf SimulationResults/Simulation1250_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G140000
vcftools --vcf SimulationResults/Simulation1250_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G150000
vcftools --vcf SimulationResults/Simulation1250_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G160000
vcftools --vcf SimulationResults/Simulation1250_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G170000
vcftools --vcf SimulationResults/Simulation1250_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G180000
vcftools --vcf SimulationResults/Simulation1250_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G190000
vcftools --vcf SimulationResults/Simulation1250_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G200000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait2_250.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation2250_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G0
vcftools --vcf SimulationResults/Simulation2250_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G2
vcftools --vcf SimulationResults/Simulation2250_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G10000
vcftools --vcf SimulationResults/Simulation2250_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G20000
vcftools --vcf SimulationResults/Simulation2250_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G30000
vcftools --vcf SimulationResults/Simulation2250_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G40000
vcftools --vcf SimulationResults/Simulation2250_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G50000
vcftools --vcf SimulationResults/Simulation2250_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G60000
vcftools --vcf SimulationResults/Simulation2250_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G70000
vcftools --vcf SimulationResults/Simulation2250_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G80000
vcftools --vcf SimulationResults/Simulation2250_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G90000
vcftools --vcf SimulationResults/Simulation2250_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G100001
vcftools --vcf SimulationResults/Simulation2250_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G110000
vcftools --vcf SimulationResults/Simulation2250_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G120000
vcftools --vcf SimulationResults/Simulation2250_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G130000
vcftools --vcf SimulationResults/Simulation2250_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G140000
vcftools --vcf SimulationResults/Simulation2250_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G150000
vcftools --vcf SimulationResults/Simulation2250_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G160000
vcftools --vcf SimulationResults/Simulation2250_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G170000
vcftools --vcf SimulationResults/Simulation2250_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G180000
vcftools --vcf SimulationResults/Simulation2250_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G190000
vcftools --vcf SimulationResults/Simulation2250_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation2250_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G0
vcftools --vcf SimulationResults/Simulation2250_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G2
vcftools --vcf SimulationResults/Simulation2250_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G10000
vcftools --vcf SimulationResults/Simulation2250_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G20000
vcftools --vcf SimulationResults/Simulation2250_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G30000
vcftools --vcf SimulationResults/Simulation2250_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G40000
vcftools --vcf SimulationResults/Simulation2250_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G50000
vcftools --vcf SimulationResults/Simulation2250_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G60000
vcftools --vcf SimulationResults/Simulation2250_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G70000
vcftools --vcf SimulationResults/Simulation2250_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G80000
vcftools --vcf SimulationResults/Simulation2250_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G90000
vcftools --vcf SimulationResults/Simulation2250_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G100001
vcftools --vcf SimulationResults/Simulation2250_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G110000
vcftools --vcf SimulationResults/Simulation2250_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G120000
vcftools --vcf SimulationResults/Simulation2250_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G130000
vcftools --vcf SimulationResults/Simulation2250_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G140000
vcftools --vcf SimulationResults/Simulation2250_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G150000
vcftools --vcf SimulationResults/Simulation2250_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G160000
vcftools --vcf SimulationResults/Simulation2250_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G170000
vcftools --vcf SimulationResults/Simulation2250_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G180000
vcftools --vcf SimulationResults/Simulation2250_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G190000
vcftools --vcf SimulationResults/Simulation2250_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G200000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3_250.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation3250_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G0
vcftools --vcf SimulationResults/Simulation3250_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G2
vcftools --vcf SimulationResults/Simulation3250_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G10000
vcftools --vcf SimulationResults/Simulation3250_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G20000
vcftools --vcf SimulationResults/Simulation3250_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G30000
vcftools --vcf SimulationResults/Simulation3250_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G40000
vcftools --vcf SimulationResults/Simulation3250_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G50000
vcftools --vcf SimulationResults/Simulation3250_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G60000
vcftools --vcf SimulationResults/Simulation3250_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G70000
vcftools --vcf SimulationResults/Simulation3250_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G80000
vcftools --vcf SimulationResults/Simulation3250_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G90000
vcftools --vcf SimulationResults/Simulation3250_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G100001
vcftools --vcf SimulationResults/Simulation3250_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G110000
vcftools --vcf SimulationResults/Simulation3250_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G120000
vcftools --vcf SimulationResults/Simulation3250_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G130000
vcftools --vcf SimulationResults/Simulation3250_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G140000
vcftools --vcf SimulationResults/Simulation3250_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G150000
vcftools --vcf SimulationResults/Simulation3250_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G160000
vcftools --vcf SimulationResults/Simulation3250_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G170000
vcftools --vcf SimulationResults/Simulation3250_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G180000
vcftools --vcf SimulationResults/Simulation3250_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G190000
vcftools --vcf SimulationResults/Simulation3250_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation3250_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G0
vcftools --vcf SimulationResults/Simulation3250_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G2
vcftools --vcf SimulationResults/Simulation3250_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G10000
vcftools --vcf SimulationResults/Simulation3250_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G20000
vcftools --vcf SimulationResults/Simulation3250_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G30000
vcftools --vcf SimulationResults/Simulation3250_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G40000
vcftools --vcf SimulationResults/Simulation3250_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G50000
vcftools --vcf SimulationResults/Simulation3250_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G60000
vcftools --vcf SimulationResults/Simulation3250_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G70000
vcftools --vcf SimulationResults/Simulation3250_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G80000
vcftools --vcf SimulationResults/Simulation3250_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G90000
vcftools --vcf SimulationResults/Simulation3250_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G100001
vcftools --vcf SimulationResults/Simulation3250_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G110000
vcftools --vcf SimulationResults/Simulation3250_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G120000
vcftools --vcf SimulationResults/Simulation3250_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G130000
vcftools --vcf SimulationResults/Simulation3250_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G140000
vcftools --vcf SimulationResults/Simulation3250_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G150000
vcftools --vcf SimulationResults/Simulation3250_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G160000
vcftools --vcf SimulationResults/Simulation3250_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G170000
vcftools --vcf SimulationResults/Simulation3250_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G180000
vcftools --vcf SimulationResults/Simulation3250_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G190000
vcftools --vcf SimulationResults/Simulation3250_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G200000



###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4_250.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation4250_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G0
vcftools --vcf SimulationResults/Simulation4250_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G2
vcftools --vcf SimulationResults/Simulation4250_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G10000
vcftools --vcf SimulationResults/Simulation4250_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G20000
vcftools --vcf SimulationResults/Simulation4250_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G30000
vcftools --vcf SimulationResults/Simulation4250_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G40000
vcftools --vcf SimulationResults/Simulation4250_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G50000
vcftools --vcf SimulationResults/Simulation4250_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G60000
vcftools --vcf SimulationResults/Simulation4250_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G70000
vcftools --vcf SimulationResults/Simulation4250_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G80000
vcftools --vcf SimulationResults/Simulation4250_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G90000
vcftools --vcf SimulationResults/Simulation4250_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G100001
vcftools --vcf SimulationResults/Simulation4250_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G110000
vcftools --vcf SimulationResults/Simulation4250_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G120000
vcftools --vcf SimulationResults/Simulation4250_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G130000
vcftools --vcf SimulationResults/Simulation4250_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G140000
vcftools --vcf SimulationResults/Simulation4250_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G150000
vcftools --vcf SimulationResults/Simulation4250_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G160000
vcftools --vcf SimulationResults/Simulation4250_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G170000
vcftools --vcf SimulationResults/Simulation4250_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G180000
vcftools --vcf SimulationResults/Simulation4250_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G190000
vcftools --vcf SimulationResults/Simulation4250_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G200000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation4250_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G0
vcftools --vcf SimulationResults/Simulation4250_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G2
vcftools --vcf SimulationResults/Simulation4250_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G10000
vcftools --vcf SimulationResults/Simulation4250_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G20000
vcftools --vcf SimulationResults/Simulation4250_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G30000
vcftools --vcf SimulationResults/Simulation4250_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G40000
vcftools --vcf SimulationResults/Simulation4250_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G50000
vcftools --vcf SimulationResults/Simulation4250_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G60000
vcftools --vcf SimulationResults/Simulation4250_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G70000
vcftools --vcf SimulationResults/Simulation4250_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G80000
vcftools --vcf SimulationResults/Simulation4250_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G90000
vcftools --vcf SimulationResults/Simulation4250_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G100001
vcftools --vcf SimulationResults/Simulation4250_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G110000
vcftools --vcf SimulationResults/Simulation4250_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G120000
vcftools --vcf SimulationResults/Simulation4250_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G130000
vcftools --vcf SimulationResults/Simulation4250_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G140000
vcftools --vcf SimulationResults/Simulation4250_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G150000
vcftools --vcf SimulationResults/Simulation4250_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G160000
vcftools --vcf SimulationResults/Simulation4250_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G170000
vcftools --vcf SimulationResults/Simulation4250_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G180000
vcftools --vcf SimulationResults/Simulation4250_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G190000
vcftools --vcf SimulationResults/Simulation4250_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G200000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5_250.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation5250_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G0
vcftools --vcf SimulationResults/Simulation5250_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G2
vcftools --vcf SimulationResults/Simulation5250_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G10000
vcftools --vcf SimulationResults/Simulation5250_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G20000
vcftools --vcf SimulationResults/Simulation5250_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G30000
vcftools --vcf SimulationResults/Simulation5250_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G40000
vcftools --vcf SimulationResults/Simulation5250_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G50000
vcftools --vcf SimulationResults/Simulation5250_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G60000
vcftools --vcf SimulationResults/Simulation5250_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G70000
vcftools --vcf SimulationResults/Simulation5250_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G80000
vcftools --vcf SimulationResults/Simulation5250_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G90000
vcftools --vcf SimulationResults/Simulation5250_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G100001
vcftools --vcf SimulationResults/Simulation5250_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G110000
vcftools --vcf SimulationResults/Simulation5250_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G120000
vcftools --vcf SimulationResults/Simulation5250_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G130000
vcftools --vcf SimulationResults/Simulation5250_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G140000
vcftools --vcf SimulationResults/Simulation5250_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G150000
vcftools --vcf SimulationResults/Simulation5250_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G160000
vcftools --vcf SimulationResults/Simulation5250_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G170000
vcftools --vcf SimulationResults/Simulation5250_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G180000
vcftools --vcf SimulationResults/Simulation5250_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G190000
vcftools --vcf SimulationResults/Simulation5250_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G200000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation5250_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G0
vcftools --vcf SimulationResults/Simulation5250_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G2
vcftools --vcf SimulationResults/Simulation5250_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G10000
vcftools --vcf SimulationResults/Simulation5250_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G20000
vcftools --vcf SimulationResults/Simulation5250_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G30000
vcftools --vcf SimulationResults/Simulation5250_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G40000
vcftools --vcf SimulationResults/Simulation5250_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G50000
vcftools --vcf SimulationResults/Simulation5250_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G60000
vcftools --vcf SimulationResults/Simulation5250_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G70000
vcftools --vcf SimulationResults/Simulation5250_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G80000
vcftools --vcf SimulationResults/Simulation5250_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G90000
vcftools --vcf SimulationResults/Simulation5250_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G100001
vcftools --vcf SimulationResults/Simulation5250_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G110000
vcftools --vcf SimulationResults/Simulation5250_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G120000
vcftools --vcf SimulationResults/Simulation5250_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G130000
vcftools --vcf SimulationResults/Simulation5250_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G140000
vcftools --vcf SimulationResults/Simulation5250_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G150000
vcftools --vcf SimulationResults/Simulation5250_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G160000
vcftools --vcf SimulationResults/Simulation5250_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G170000
vcftools --vcf SimulationResults/Simulation5250_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G180000
vcftools --vcf SimulationResults/Simulation5250_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G190000
vcftools --vcf SimulationResults/Simulation5250_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G200000





