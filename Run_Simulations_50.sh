###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1_50.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation150_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G0
vcftools --vcf SimulationResults/Simulation150_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G2
vcftools --vcf SimulationResults/Simulation150_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G10000
vcftools --vcf SimulationResults/Simulation150_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G20000
vcftools --vcf SimulationResults/Simulation150_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G30000
vcftools --vcf SimulationResults/Simulation150_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G40000
vcftools --vcf SimulationResults/Simulation150_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G50000
vcftools --vcf SimulationResults/Simulation150_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G60000
vcftools --vcf SimulationResults/Simulation150_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G70000
vcftools --vcf SimulationResults/Simulation150_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G80000
vcftools --vcf SimulationResults/Simulation150_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G90000
vcftools --vcf SimulationResults/Simulation150_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G100001
vcftools --vcf SimulationResults/Simulation150_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G110000
vcftools --vcf SimulationResults/Simulation150_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G120000
vcftools --vcf SimulationResults/Simulation150_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G130000
vcftools --vcf SimulationResults/Simulation150_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G140000
vcftools --vcf SimulationResults/Simulation150_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G150000
vcftools --vcf SimulationResults/Simulation150_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G160000
vcftools --vcf SimulationResults/Simulation150_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G170000
vcftools --vcf SimulationResults/Simulation150_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G180000
vcftools --vcf SimulationResults/Simulation150_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G190000
vcftools --vcf SimulationResults/Simulation150_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G200000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation150_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G0
vcftools --vcf SimulationResults/Simulation150_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G2
vcftools --vcf SimulationResults/Simulation150_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G10000
vcftools --vcf SimulationResults/Simulation150_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G20000
vcftools --vcf SimulationResults/Simulation150_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G30000
vcftools --vcf SimulationResults/Simulation150_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G40000
vcftools --vcf SimulationResults/Simulation150_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G50000
vcftools --vcf SimulationResults/Simulation150_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G60000
vcftools --vcf SimulationResults/Simulation150_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G70000
vcftools --vcf SimulationResults/Simulation150_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G80000
vcftools --vcf SimulationResults/Simulation150_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G90000
vcftools --vcf SimulationResults/Simulation150_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G100001
vcftools --vcf SimulationResults/Simulation150_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G110000
vcftools --vcf SimulationResults/Simulation150_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G120000
vcftools --vcf SimulationResults/Simulation150_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G130000
vcftools --vcf SimulationResults/Simulation150_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G140000
vcftools --vcf SimulationResults/Simulation150_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G150000
vcftools --vcf SimulationResults/Simulation150_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G160000
vcftools --vcf SimulationResults/Simulation150_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G170000
vcftools --vcf SimulationResults/Simulation150_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G180000
vcftools --vcf SimulationResults/Simulation150_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G190000
vcftools --vcf SimulationResults/Simulation150_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G200000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait2_50.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation250_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G0
vcftools --vcf SimulationResults/Simulation250_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G2
vcftools --vcf SimulationResults/Simulation250_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G10000
vcftools --vcf SimulationResults/Simulation250_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G20000
vcftools --vcf SimulationResults/Simulation250_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G30000
vcftools --vcf SimulationResults/Simulation250_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G40000
vcftools --vcf SimulationResults/Simulation250_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G50000
vcftools --vcf SimulationResults/Simulation250_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G60000
vcftools --vcf SimulationResults/Simulation250_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G70000
vcftools --vcf SimulationResults/Simulation250_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G80000
vcftools --vcf SimulationResults/Simulation250_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G90000
vcftools --vcf SimulationResults/Simulation250_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G100001
vcftools --vcf SimulationResults/Simulation250_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G110000
vcftools --vcf SimulationResults/Simulation250_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G120000
vcftools --vcf SimulationResults/Simulation250_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G130000
vcftools --vcf SimulationResults/Simulation250_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G140000
vcftools --vcf SimulationResults/Simulation250_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G150000
vcftools --vcf SimulationResults/Simulation250_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G160000
vcftools --vcf SimulationResults/Simulation250_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G170000
vcftools --vcf SimulationResults/Simulation250_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G180000
vcftools --vcf SimulationResults/Simulation250_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G190000
vcftools --vcf SimulationResults/Simulation250_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation250_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G0
vcftools --vcf SimulationResults/Simulation250_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G2
vcftools --vcf SimulationResults/Simulation250_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G10000
vcftools --vcf SimulationResults/Simulation250_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G20000
vcftools --vcf SimulationResults/Simulation250_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G30000
vcftools --vcf SimulationResults/Simulation250_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G40000
vcftools --vcf SimulationResults/Simulation250_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G50000
vcftools --vcf SimulationResults/Simulation250_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G60000
vcftools --vcf SimulationResults/Simulation250_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G70000
vcftools --vcf SimulationResults/Simulation250_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G80000
vcftools --vcf SimulationResults/Simulation250_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G90000
vcftools --vcf SimulationResults/Simulation250_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G100001
vcftools --vcf SimulationResults/Simulation250_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G110000
vcftools --vcf SimulationResults/Simulation250_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G120000
vcftools --vcf SimulationResults/Simulation250_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G130000
vcftools --vcf SimulationResults/Simulation250_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G140000
vcftools --vcf SimulationResults/Simulation250_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G150000
vcftools --vcf SimulationResults/Simulation250_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G160000
vcftools --vcf SimulationResults/Simulation250_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G170000
vcftools --vcf SimulationResults/Simulation250_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G180000
vcftools --vcf SimulationResults/Simulation250_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G190000
vcftools --vcf SimulationResults/Simulation250_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G200000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3_50.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation350_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G0
vcftools --vcf SimulationResults/Simulation350_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G2
vcftools --vcf SimulationResults/Simulation350_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G10000
vcftools --vcf SimulationResults/Simulation350_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G20000
vcftools --vcf SimulationResults/Simulation350_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G30000
vcftools --vcf SimulationResults/Simulation350_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G40000
vcftools --vcf SimulationResults/Simulation350_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G50000
vcftools --vcf SimulationResults/Simulation350_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G60000
vcftools --vcf SimulationResults/Simulation350_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G70000
vcftools --vcf SimulationResults/Simulation350_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G80000
vcftools --vcf SimulationResults/Simulation350_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G90000
vcftools --vcf SimulationResults/Simulation350_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G100001
vcftools --vcf SimulationResults/Simulation350_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G110000
vcftools --vcf SimulationResults/Simulation350_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G120000
vcftools --vcf SimulationResults/Simulation350_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G130000
vcftools --vcf SimulationResults/Simulation350_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G140000
vcftools --vcf SimulationResults/Simulation350_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G150000
vcftools --vcf SimulationResults/Simulation350_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G160000
vcftools --vcf SimulationResults/Simulation350_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G170000
vcftools --vcf SimulationResults/Simulation350_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G180000
vcftools --vcf SimulationResults/Simulation350_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G190000
vcftools --vcf SimulationResults/Simulation350_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G200000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation350_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G0
vcftools --vcf SimulationResults/Simulation350_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G2
vcftools --vcf SimulationResults/Simulation350_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G10000
vcftools --vcf SimulationResults/Simulation350_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G20000
vcftools --vcf SimulationResults/Simulation350_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G30000
vcftools --vcf SimulationResults/Simulation350_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G40000
vcftools --vcf SimulationResults/Simulation350_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G50000
vcftools --vcf SimulationResults/Simulation350_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G60000
vcftools --vcf SimulationResults/Simulation350_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G70000
vcftools --vcf SimulationResults/Simulation350_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G80000
vcftools --vcf SimulationResults/Simulation350_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G90000
vcftools --vcf SimulationResults/Simulation350_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G100001
vcftools --vcf SimulationResults/Simulation350_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G110000
vcftools --vcf SimulationResults/Simulation350_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G120000
vcftools --vcf SimulationResults/Simulation350_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G130000
vcftools --vcf SimulationResults/Simulation350_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G140000
vcftools --vcf SimulationResults/Simulation350_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G150000
vcftools --vcf SimulationResults/Simulation350_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G160000
vcftools --vcf SimulationResults/Simulation350_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G170000
vcftools --vcf SimulationResults/Simulation350_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G180000
vcftools --vcf SimulationResults/Simulation350_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G190000
vcftools --vcf SimulationResults/Simulation350_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G200000



###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4_50.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation450_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G0
vcftools --vcf SimulationResults/Simulation450_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G2
vcftools --vcf SimulationResults/Simulation450_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G10000
vcftools --vcf SimulationResults/Simulation450_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G20000
vcftools --vcf SimulationResults/Simulation450_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G30000
vcftools --vcf SimulationResults/Simulation450_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G40000
vcftools --vcf SimulationResults/Simulation450_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G50000
vcftools --vcf SimulationResults/Simulation450_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G60000
vcftools --vcf SimulationResults/Simulation450_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G70000
vcftools --vcf SimulationResults/Simulation450_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G80000
vcftools --vcf SimulationResults/Simulation450_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G90000
vcftools --vcf SimulationResults/Simulation450_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G100001
vcftools --vcf SimulationResults/Simulation450_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G110000
vcftools --vcf SimulationResults/Simulation450_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G120000
vcftools --vcf SimulationResults/Simulation450_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G130000
vcftools --vcf SimulationResults/Simulation450_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G140000
vcftools --vcf SimulationResults/Simulation450_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G150000
vcftools --vcf SimulationResults/Simulation450_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G160000
vcftools --vcf SimulationResults/Simulation450_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G170000
vcftools --vcf SimulationResults/Simulation450_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G180000
vcftools --vcf SimulationResults/Simulation450_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G190000
vcftools --vcf SimulationResults/Simulation450_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G200000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation450_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G0
vcftools --vcf SimulationResults/Simulation450_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G2
vcftools --vcf SimulationResults/Simulation450_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G10000
vcftools --vcf SimulationResults/Simulation450_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G20000
vcftools --vcf SimulationResults/Simulation450_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G30000
vcftools --vcf SimulationResults/Simulation450_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G40000
vcftools --vcf SimulationResults/Simulation450_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G50000
vcftools --vcf SimulationResults/Simulation450_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G60000
vcftools --vcf SimulationResults/Simulation450_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G70000
vcftools --vcf SimulationResults/Simulation450_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G80000
vcftools --vcf SimulationResults/Simulation450_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G90000
vcftools --vcf SimulationResults/Simulation450_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G100001
vcftools --vcf SimulationResults/Simulation450_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G110000
vcftools --vcf SimulationResults/Simulation450_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G120000
vcftools --vcf SimulationResults/Simulation450_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G130000
vcftools --vcf SimulationResults/Simulation450_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G140000
vcftools --vcf SimulationResults/Simulation450_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G150000
vcftools --vcf SimulationResults/Simulation450_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G160000
vcftools --vcf SimulationResults/Simulation450_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G170000
vcftools --vcf SimulationResults/Simulation450_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G180000
vcftools --vcf SimulationResults/Simulation450_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G190000
vcftools --vcf SimulationResults/Simulation450_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G200000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5_50.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation550_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G0
vcftools --vcf SimulationResults/Simulation550_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G2
vcftools --vcf SimulationResults/Simulation550_celegans_G10000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G10000
vcftools --vcf SimulationResults/Simulation550_celegans_G20000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G20000
vcftools --vcf SimulationResults/Simulation550_celegans_G30000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G30000
vcftools --vcf SimulationResults/Simulation550_celegans_G40000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G40000
vcftools --vcf SimulationResults/Simulation550_celegans_G50000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G50000
vcftools --vcf SimulationResults/Simulation550_celegans_G60000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G60000
vcftools --vcf SimulationResults/Simulation550_celegans_G70000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G70000
vcftools --vcf SimulationResults/Simulation550_celegans_G80000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G80000
vcftools --vcf SimulationResults/Simulation550_celegans_G90000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G90000
vcftools --vcf SimulationResults/Simulation550_celegans_G100001.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G100001
vcftools --vcf SimulationResults/Simulation550_celegans_G110000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G110000
vcftools --vcf SimulationResults/Simulation550_celegans_G120000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G120000
vcftools --vcf SimulationResults/Simulation550_celegans_G130000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G130000
vcftools --vcf SimulationResults/Simulation550_celegans_G140000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G140000
vcftools --vcf SimulationResults/Simulation550_celegans_G150000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G150000
vcftools --vcf SimulationResults/Simulation550_celegans_G160000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G160000
vcftools --vcf SimulationResults/Simulation550_celegans_G170000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G170000
vcftools --vcf SimulationResults/Simulation550_celegans_G180000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G180000
vcftools --vcf SimulationResults/Simulation550_celegans_G190000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G190000
vcftools --vcf SimulationResults/Simulation550_celegans_G200000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G200000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation550_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G0
vcftools --vcf SimulationResults/Simulation550_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G2
vcftools --vcf SimulationResults/Simulation550_celegans_G10000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G10000
vcftools --vcf SimulationResults/Simulation550_celegans_G20000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G20000
vcftools --vcf SimulationResults/Simulation550_celegans_G30000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G30000
vcftools --vcf SimulationResults/Simulation550_celegans_G40000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G40000
vcftools --vcf SimulationResults/Simulation550_celegans_G50000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G50000
vcftools --vcf SimulationResults/Simulation550_celegans_G60000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G60000
vcftools --vcf SimulationResults/Simulation550_celegans_G70000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G70000
vcftools --vcf SimulationResults/Simulation550_celegans_G80000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G80000
vcftools --vcf SimulationResults/Simulation550_celegans_G90000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G90000
vcftools --vcf SimulationResults/Simulation550_celegans_G100001.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G100001
vcftools --vcf SimulationResults/Simulation550_celegans_G110000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G110000
vcftools --vcf SimulationResults/Simulation550_celegans_G120000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G120000
vcftools --vcf SimulationResults/Simulation550_celegans_G130000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G130000
vcftools --vcf SimulationResults/Simulation550_celegans_G140000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G140000
vcftools --vcf SimulationResults/Simulation550_celegans_G150000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G150000
vcftools --vcf SimulationResults/Simulation550_celegans_G160000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G160000
vcftools --vcf SimulationResults/Simulation550_celegans_G170000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G170000
vcftools --vcf SimulationResults/Simulation550_celegans_G180000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G180000
vcftools --vcf SimulationResults/Simulation550_celegans_G190000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G190000
vcftools --vcf SimulationResults/Simulation550_celegans_G200000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G200000





