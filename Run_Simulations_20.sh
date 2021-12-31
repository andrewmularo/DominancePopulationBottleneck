###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1_20.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation120_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G0
vcftools --vcf SimulationResults/Simulation120_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G2
vcftools --vcf SimulationResults/Simulation120_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G10000
vcftools --vcf SimulationResults/Simulation120_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G20000
vcftools --vcf SimulationResults/Simulation120_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G30000
vcftools --vcf SimulationResults/Simulation120_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G40000
vcftools --vcf SimulationResults/Simulation120_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G50000
vcftools --vcf SimulationResults/Simulation120_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G60000
vcftools --vcf SimulationResults/Simulation120_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G70000
vcftools --vcf SimulationResults/Simulation120_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G80000
vcftools --vcf SimulationResults/Simulation120_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G90000
vcftools --vcf SimulationResults/Simulation120_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G100001
vcftools --vcf SimulationResults/Simulation120_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G110000
vcftools --vcf SimulationResults/Simulation120_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G120000
vcftools --vcf SimulationResults/Simulation120_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G130000
vcftools --vcf SimulationResults/Simulation120_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G140000
vcftools --vcf SimulationResults/Simulation120_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G150000
vcftools --vcf SimulationResults/Simulation120_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G160000
vcftools --vcf SimulationResults/Simulation120_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G170000
vcftools --vcf SimulationResults/Simulation120_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G180000
vcftools --vcf SimulationResults/Simulation120_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G190000
vcftools --vcf SimulationResults/Simulation120_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G200000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation120_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G0
vcftools --vcf SimulationResults/Simulation120_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G2
vcftools --vcf SimulationResults/Simulation120_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G10000
vcftools --vcf SimulationResults/Simulation120_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G20000
vcftools --vcf SimulationResults/Simulation120_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G30000
vcftools --vcf SimulationResults/Simulation120_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G40000
vcftools --vcf SimulationResults/Simulation120_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G50000
vcftools --vcf SimulationResults/Simulation120_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G60000
vcftools --vcf SimulationResults/Simulation120_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G70000
vcftools --vcf SimulationResults/Simulation120_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G80000
vcftools --vcf SimulationResults/Simulation120_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G90000
vcftools --vcf SimulationResults/Simulation120_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G100001
vcftools --vcf SimulationResults/Simulation120_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G110000
vcftools --vcf SimulationResults/Simulation120_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G120000
vcftools --vcf SimulationResults/Simulation120_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G130000
vcftools --vcf SimulationResults/Simulation120_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G140000
vcftools --vcf SimulationResults/Simulation120_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G150000
vcftools --vcf SimulationResults/Simulation120_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G160000
vcftools --vcf SimulationResults/Simulation120_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G170000
vcftools --vcf SimulationResults/Simulation120_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G180000
vcftools --vcf SimulationResults/Simulation120_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G190000
vcftools --vcf SimulationResults/Simulation120_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G200000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait2_20.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation220_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G0
vcftools --vcf SimulationResults/Simulation220_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G2
vcftools --vcf SimulationResults/Simulation220_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G10000
vcftools --vcf SimulationResults/Simulation220_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G20000
vcftools --vcf SimulationResults/Simulation220_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G30000
vcftools --vcf SimulationResults/Simulation220_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G40000
vcftools --vcf SimulationResults/Simulation220_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G50000
vcftools --vcf SimulationResults/Simulation220_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G60000
vcftools --vcf SimulationResults/Simulation220_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G70000
vcftools --vcf SimulationResults/Simulation220_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G80000
vcftools --vcf SimulationResults/Simulation220_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G90000
vcftools --vcf SimulationResults/Simulation220_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G100001
vcftools --vcf SimulationResults/Simulation220_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G110000
vcftools --vcf SimulationResults/Simulation220_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G120000
vcftools --vcf SimulationResults/Simulation220_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G130000
vcftools --vcf SimulationResults/Simulation220_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G140000
vcftools --vcf SimulationResults/Simulation220_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G150000
vcftools --vcf SimulationResults/Simulation220_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G160000
vcftools --vcf SimulationResults/Simulation220_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G170000
vcftools --vcf SimulationResults/Simulation220_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G180000
vcftools --vcf SimulationResults/Simulation220_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G190000
vcftools --vcf SimulationResults/Simulation220_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation220_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G0
vcftools --vcf SimulationResults/Simulation220_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G2
vcftools --vcf SimulationResults/Simulation220_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G10000
vcftools --vcf SimulationResults/Simulation220_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G20000
vcftools --vcf SimulationResults/Simulation220_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G30000
vcftools --vcf SimulationResults/Simulation220_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G40000
vcftools --vcf SimulationResults/Simulation220_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G50000
vcftools --vcf SimulationResults/Simulation220_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G60000
vcftools --vcf SimulationResults/Simulation220_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G70000
vcftools --vcf SimulationResults/Simulation220_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G80000
vcftools --vcf SimulationResults/Simulation220_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G90000
vcftools --vcf SimulationResults/Simulation220_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G100001
vcftools --vcf SimulationResults/Simulation220_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G110000
vcftools --vcf SimulationResults/Simulation220_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G120000
vcftools --vcf SimulationResults/Simulation220_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G130000
vcftools --vcf SimulationResults/Simulation220_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G140000
vcftools --vcf SimulationResults/Simulation220_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G150000
vcftools --vcf SimulationResults/Simulation220_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G160000
vcftools --vcf SimulationResults/Simulation220_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G170000
vcftools --vcf SimulationResults/Simulation220_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G180000
vcftools --vcf SimulationResults/Simulation220_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G190000
vcftools --vcf SimulationResults/Simulation220_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G200000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3_20.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation320_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G0
vcftools --vcf SimulationResults/Simulation320_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G2
vcftools --vcf SimulationResults/Simulation320_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G10000
vcftools --vcf SimulationResults/Simulation320_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G20000
vcftools --vcf SimulationResults/Simulation320_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G30000
vcftools --vcf SimulationResults/Simulation320_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G40000
vcftools --vcf SimulationResults/Simulation320_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G50000
vcftools --vcf SimulationResults/Simulation320_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G60000
vcftools --vcf SimulationResults/Simulation320_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G70000
vcftools --vcf SimulationResults/Simulation320_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G80000
vcftools --vcf SimulationResults/Simulation320_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G90000
vcftools --vcf SimulationResults/Simulation320_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G100001
vcftools --vcf SimulationResults/Simulation320_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G110000
vcftools --vcf SimulationResults/Simulation320_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G120000
vcftools --vcf SimulationResults/Simulation320_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G130000
vcftools --vcf SimulationResults/Simulation320_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G140000
vcftools --vcf SimulationResults/Simulation320_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G150000
vcftools --vcf SimulationResults/Simulation320_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G160000
vcftools --vcf SimulationResults/Simulation320_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G170000
vcftools --vcf SimulationResults/Simulation320_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G180000
vcftools --vcf SimulationResults/Simulation320_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G190000
vcftools --vcf SimulationResults/Simulation320_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation320_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G0
vcftools --vcf SimulationResults/Simulation320_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G2
vcftools --vcf SimulationResults/Simulation320_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G10000
vcftools --vcf SimulationResults/Simulation320_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G20000
vcftools --vcf SimulationResults/Simulation320_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G30000
vcftools --vcf SimulationResults/Simulation320_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G40000
vcftools --vcf SimulationResults/Simulation320_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G50000
vcftools --vcf SimulationResults/Simulation320_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G60000
vcftools --vcf SimulationResults/Simulation320_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G70000
vcftools --vcf SimulationResults/Simulation320_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G80000
vcftools --vcf SimulationResults/Simulation320_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G90000
vcftools --vcf SimulationResults/Simulation320_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G100001
vcftools --vcf SimulationResults/Simulation320_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G110000
vcftools --vcf SimulationResults/Simulation320_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G120000
vcftools --vcf SimulationResults/Simulation320_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G130000
vcftools --vcf SimulationResults/Simulation320_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G140000
vcftools --vcf SimulationResults/Simulation320_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G150000
vcftools --vcf SimulationResults/Simulation320_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G160000
vcftools --vcf SimulationResults/Simulation320_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G170000
vcftools --vcf SimulationResults/Simulation320_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G180000
vcftools --vcf SimulationResults/Simulation320_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G190000
vcftools --vcf SimulationResults/Simulation320_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G200000



###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4_20.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation420_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G0
vcftools --vcf SimulationResults/Simulation420_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G2
vcftools --vcf SimulationResults/Simulation420_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G10000
vcftools --vcf SimulationResults/Simulation420_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G20000
vcftools --vcf SimulationResults/Simulation420_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G30000
vcftools --vcf SimulationResults/Simulation420_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G40000
vcftools --vcf SimulationResults/Simulation420_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G50000
vcftools --vcf SimulationResults/Simulation420_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G60000
vcftools --vcf SimulationResults/Simulation420_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G70000
vcftools --vcf SimulationResults/Simulation420_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G80000
vcftools --vcf SimulationResults/Simulation420_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G90000
vcftools --vcf SimulationResults/Simulation420_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G100001
vcftools --vcf SimulationResults/Simulation420_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G110000
vcftools --vcf SimulationResults/Simulation420_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G120000
vcftools --vcf SimulationResults/Simulation420_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G130000
vcftools --vcf SimulationResults/Simulation420_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G140000
vcftools --vcf SimulationResults/Simulation420_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G150000
vcftools --vcf SimulationResults/Simulation420_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G160000
vcftools --vcf SimulationResults/Simulation420_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G170000
vcftools --vcf SimulationResults/Simulation420_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G180000
vcftools --vcf SimulationResults/Simulation420_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G190000
vcftools --vcf SimulationResults/Simulation420_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G200000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation420_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G0
vcftools --vcf SimulationResults/Simulation420_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G2
vcftools --vcf SimulationResults/Simulation420_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G10000
vcftools --vcf SimulationResults/Simulation420_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G20000
vcftools --vcf SimulationResults/Simulation420_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G30000
vcftools --vcf SimulationResults/Simulation420_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G40000
vcftools --vcf SimulationResults/Simulation420_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G50000
vcftools --vcf SimulationResults/Simulation420_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G60000
vcftools --vcf SimulationResults/Simulation420_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G70000
vcftools --vcf SimulationResults/Simulation420_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G80000
vcftools --vcf SimulationResults/Simulation420_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G90000
vcftools --vcf SimulationResults/Simulation420_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G100001
vcftools --vcf SimulationResults/Simulation420_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G110000
vcftools --vcf SimulationResults/Simulation420_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G120000
vcftools --vcf SimulationResults/Simulation420_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G130000
vcftools --vcf SimulationResults/Simulation420_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G140000
vcftools --vcf SimulationResults/Simulation420_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G150000
vcftools --vcf SimulationResults/Simulation420_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G160000
vcftools --vcf SimulationResults/Simulation420_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G170000
vcftools --vcf SimulationResults/Simulation420_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G180000
vcftools --vcf SimulationResults/Simulation420_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G190000
vcftools --vcf SimulationResults/Simulation420_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G200000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5_20.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation520_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G0
vcftools --vcf SimulationResults/Simulation520_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G2
vcftools --vcf SimulationResults/Simulation520_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G10000
vcftools --vcf SimulationResults/Simulation520_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G20000
vcftools --vcf SimulationResults/Simulation520_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G30000
vcftools --vcf SimulationResults/Simulation520_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G40000
vcftools --vcf SimulationResults/Simulation520_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G50000
vcftools --vcf SimulationResults/Simulation520_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G60000
vcftools --vcf SimulationResults/Simulation520_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G70000
vcftools --vcf SimulationResults/Simulation520_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G80000
vcftools --vcf SimulationResults/Simulation520_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G90000
vcftools --vcf SimulationResults/Simulation520_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G100001
vcftools --vcf SimulationResults/Simulation520_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G110000
vcftools --vcf SimulationResults/Simulation520_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G120000
vcftools --vcf SimulationResults/Simulation520_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G130000
vcftools --vcf SimulationResults/Simulation520_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G140000
vcftools --vcf SimulationResults/Simulation520_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G150000
vcftools --vcf SimulationResults/Simulation520_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G160000
vcftools --vcf SimulationResults/Simulation520_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G170000
vcftools --vcf SimulationResults/Simulation520_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G180000
vcftools --vcf SimulationResults/Simulation520_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G190000
vcftools --vcf SimulationResults/Simulation520_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G200000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation520_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G0
vcftools --vcf SimulationResults/Simulation520_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G2
vcftools --vcf SimulationResults/Simulation520_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G10000
vcftools --vcf SimulationResults/Simulation520_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G20000
vcftools --vcf SimulationResults/Simulation520_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G30000
vcftools --vcf SimulationResults/Simulation520_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G40000
vcftools --vcf SimulationResults/Simulation520_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G50000
vcftools --vcf SimulationResults/Simulation520_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G60000
vcftools --vcf SimulationResults/Simulation520_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G70000
vcftools --vcf SimulationResults/Simulation520_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G80000
vcftools --vcf SimulationResults/Simulation520_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G90000
vcftools --vcf SimulationResults/Simulation520_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G100001
vcftools --vcf SimulationResults/Simulation520_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G110000
vcftools --vcf SimulationResults/Simulation520_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G120000
vcftools --vcf SimulationResults/Simulation520_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G130000
vcftools --vcf SimulationResults/Simulation520_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G140000
vcftools --vcf SimulationResults/Simulation520_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G150000
vcftools --vcf SimulationResults/Simulation520_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G160000
vcftools --vcf SimulationResults/Simulation520_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G170000
vcftools --vcf SimulationResults/Simulation520_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G180000
vcftools --vcf SimulationResults/Simulation520_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G190000
vcftools --vcf SimulationResults/Simulation520_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G200000




