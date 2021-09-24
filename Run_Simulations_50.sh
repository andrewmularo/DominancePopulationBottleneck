###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1_50.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation150_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G0
vcftools --vcf SimulationResults/Simulation150_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G2
vcftools --vcf SimulationResults/Simulation150_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G50
vcftools --vcf SimulationResults/Simulation150_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G100
vcftools --vcf SimulationResults/Simulation150_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G150
vcftools --vcf SimulationResults/Simulation150_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G200
vcftools --vcf SimulationResults/Simulation150_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G250
vcftools --vcf SimulationResults/Simulation150_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G300
vcftools --vcf SimulationResults/Simulation150_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G350
vcftools --vcf SimulationResults/Simulation150_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G400
vcftools --vcf SimulationResults/Simulation150_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G450
vcftools --vcf SimulationResults/Simulation150_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G501
vcftools --vcf SimulationResults/Simulation150_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G550
vcftools --vcf SimulationResults/Simulation150_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G600
vcftools --vcf SimulationResults/Simulation150_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G650
vcftools --vcf SimulationResults/Simulation150_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G700
vcftools --vcf SimulationResults/Simulation150_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G750
vcftools --vcf SimulationResults/Simulation150_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G800
vcftools --vcf SimulationResults/Simulation150_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G850
vcftools --vcf SimulationResults/Simulation150_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G900
vcftools --vcf SimulationResults/Simulation150_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G950
vcftools --vcf SimulationResults/Simulation150_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait150_G1000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation150_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G0
vcftools --vcf SimulationResults/Simulation150_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G2
vcftools --vcf SimulationResults/Simulation150_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G50
vcftools --vcf SimulationResults/Simulation150_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G100
vcftools --vcf SimulationResults/Simulation150_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G150
vcftools --vcf SimulationResults/Simulation150_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G200
vcftools --vcf SimulationResults/Simulation150_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G250
vcftools --vcf SimulationResults/Simulation150_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G300
vcftools --vcf SimulationResults/Simulation150_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G350
vcftools --vcf SimulationResults/Simulation150_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G400
vcftools --vcf SimulationResults/Simulation150_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G450
vcftools --vcf SimulationResults/Simulation150_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G501
vcftools --vcf SimulationResults/Simulation150_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G550
vcftools --vcf SimulationResults/Simulation150_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G600
vcftools --vcf SimulationResults/Simulation150_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G650
vcftools --vcf SimulationResults/Simulation150_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G700
vcftools --vcf SimulationResults/Simulation150_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G750
vcftools --vcf SimulationResults/Simulation150_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G800
vcftools --vcf SimulationResults/Simulation150_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G850
vcftools --vcf SimulationResults/Simulation150_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G900
vcftools --vcf SimulationResults/Simulation150_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G950
vcftools --vcf SimulationResults/Simulation150_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait150_G1000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait250.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation250_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G0
vcftools --vcf SimulationResults/Simulation250_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G2
vcftools --vcf SimulationResults/Simulation250_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G50
vcftools --vcf SimulationResults/Simulation250_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G100
vcftools --vcf SimulationResults/Simulation250_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G150
vcftools --vcf SimulationResults/Simulation250_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G200
vcftools --vcf SimulationResults/Simulation250_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G250
vcftools --vcf SimulationResults/Simulation250_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G300
vcftools --vcf SimulationResults/Simulation250_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G350
vcftools --vcf SimulationResults/Simulation250_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G400
vcftools --vcf SimulationResults/Simulation250_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G450
vcftools --vcf SimulationResults/Simulation250_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G501
vcftools --vcf SimulationResults/Simulation250_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G550
vcftools --vcf SimulationResults/Simulation250_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G600
vcftools --vcf SimulationResults/Simulation250_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G650
vcftools --vcf SimulationResults/Simulation250_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G700
vcftools --vcf SimulationResults/Simulation250_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G750
vcftools --vcf SimulationResults/Simulation250_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G800
vcftools --vcf SimulationResults/Simulation250_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G850
vcftools --vcf SimulationResults/Simulation250_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G900
vcftools --vcf SimulationResults/Simulation250_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G950
vcftools --vcf SimulationResults/Simulation250_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait250_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation250_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G0
vcftools --vcf SimulationResults/Simulation250_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G2
vcftools --vcf SimulationResults/Simulation250_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G50
vcftools --vcf SimulationResults/Simulation250_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G100
vcftools --vcf SimulationResults/Simulation250_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G150
vcftools --vcf SimulationResults/Simulation250_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G200
vcftools --vcf SimulationResults/Simulation250_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G250
vcftools --vcf SimulationResults/Simulation250_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G300
vcftools --vcf SimulationResults/Simulation250_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G350
vcftools --vcf SimulationResults/Simulation250_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G400
vcftools --vcf SimulationResults/Simulation250_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G450
vcftools --vcf SimulationResults/Simulation250_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G501
vcftools --vcf SimulationResults/Simulation250_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G550
vcftools --vcf SimulationResults/Simulation250_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G600
vcftools --vcf SimulationResults/Simulation250_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G650
vcftools --vcf SimulationResults/Simulation250_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G700
vcftools --vcf SimulationResults/Simulation250_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G750
vcftools --vcf SimulationResults/Simulation250_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G800
vcftools --vcf SimulationResults/Simulation250_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G850
vcftools --vcf SimulationResults/Simulation250_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G900
vcftools --vcf SimulationResults/Simulation250_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G950
vcftools --vcf SimulationResults/Simulation250_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait250_G1000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3_50.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation350_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G0
vcftools --vcf SimulationResults/Simulation350_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G2
vcftools --vcf SimulationResults/Simulation350_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G50
vcftools --vcf SimulationResults/Simulation350_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G100
vcftools --vcf SimulationResults/Simulation350_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G150
vcftools --vcf SimulationResults/Simulation350_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G200
vcftools --vcf SimulationResults/Simulation350_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G250
vcftools --vcf SimulationResults/Simulation350_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G300
vcftools --vcf SimulationResults/Simulation350_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G350
vcftools --vcf SimulationResults/Simulation350_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G400
vcftools --vcf SimulationResults/Simulation350_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G450
vcftools --vcf SimulationResults/Simulation350_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G501
vcftools --vcf SimulationResults/Simulation350_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G550
vcftools --vcf SimulationResults/Simulation350_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G600
vcftools --vcf SimulationResults/Simulation350_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G650
vcftools --vcf SimulationResults/Simulation350_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G700
vcftools --vcf SimulationResults/Simulation350_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G750
vcftools --vcf SimulationResults/Simulation350_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G800
vcftools --vcf SimulationResults/Simulation350_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G850
vcftools --vcf SimulationResults/Simulation350_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G900
vcftools --vcf SimulationResults/Simulation350_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G950
vcftools --vcf SimulationResults/Simulation350_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait350_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation350_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G0
vcftools --vcf SimulationResults/Simulation350_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G2
vcftools --vcf SimulationResults/Simulation350_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G50
vcftools --vcf SimulationResults/Simulation350_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G100
vcftools --vcf SimulationResults/Simulation350_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G150
vcftools --vcf SimulationResults/Simulation350_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G200
vcftools --vcf SimulationResults/Simulation350_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G250
vcftools --vcf SimulationResults/Simulation350_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G300
vcftools --vcf SimulationResults/Simulation350_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G350
vcftools --vcf SimulationResults/Simulation350_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G400
vcftools --vcf SimulationResults/Simulation350_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G450
vcftools --vcf SimulationResults/Simulation350_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G501
vcftools --vcf SimulationResults/Simulation350_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G550
vcftools --vcf SimulationResults/Simulation350_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G600
vcftools --vcf SimulationResults/Simulation350_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G650
vcftools --vcf SimulationResults/Simulation350_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G700
vcftools --vcf SimulationResults/Simulation350_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G750
vcftools --vcf SimulationResults/Simulation350_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G800
vcftools --vcf SimulationResults/Simulation350_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G850
vcftools --vcf SimulationResults/Simulation350_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G900
vcftools --vcf SimulationResults/Simulation350_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G950
vcftools --vcf SimulationResults/Simulation350_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait350_G1000




###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4_50.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation450_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G0
vcftools --vcf SimulationResults/Simulation450_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G2
vcftools --vcf SimulationResults/Simulation450_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G50
vcftools --vcf SimulationResults/Simulation450_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G100
vcftools --vcf SimulationResults/Simulation450_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G150
vcftools --vcf SimulationResults/Simulation450_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G200
vcftools --vcf SimulationResults/Simulation450_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G250
vcftools --vcf SimulationResults/Simulation450_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G300
vcftools --vcf SimulationResults/Simulation450_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G350
vcftools --vcf SimulationResults/Simulation450_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G400
vcftools --vcf SimulationResults/Simulation450_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G450
vcftools --vcf SimulationResults/Simulation450_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G501
vcftools --vcf SimulationResults/Simulation450_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G550
vcftools --vcf SimulationResults/Simulation450_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G600
vcftools --vcf SimulationResults/Simulation450_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G650
vcftools --vcf SimulationResults/Simulation450_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G700
vcftools --vcf SimulationResults/Simulation450_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G750
vcftools --vcf SimulationResults/Simulation450_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G800
vcftools --vcf SimulationResults/Simulation450_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G850
vcftools --vcf SimulationResults/Simulation450_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G900
vcftools --vcf SimulationResults/Simulation450_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G950
vcftools --vcf SimulationResults/Simulation450_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait450_G1000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation450_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G0
vcftools --vcf SimulationResults/Simulation450_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G2
vcftools --vcf SimulationResults/Simulation450_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G50
vcftools --vcf SimulationResults/Simulation450_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G100
vcftools --vcf SimulationResults/Simulation450_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G150
vcftools --vcf SimulationResults/Simulation450_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G200
vcftools --vcf SimulationResults/Simulation450_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G250
vcftools --vcf SimulationResults/Simulation450_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G300
vcftools --vcf SimulationResults/Simulation450_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G350
vcftools --vcf SimulationResults/Simulation450_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G400
vcftools --vcf SimulationResults/Simulation450_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G450
vcftools --vcf SimulationResults/Simulation450_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G501
vcftools --vcf SimulationResults/Simulation450_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G550
vcftools --vcf SimulationResults/Simulation450_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G600
vcftools --vcf SimulationResults/Simulation450_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G650
vcftools --vcf SimulationResults/Simulation450_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G700
vcftools --vcf SimulationResults/Simulation450_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G750
vcftools --vcf SimulationResults/Simulation450_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G800
vcftools --vcf SimulationResults/Simulation450_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G850
vcftools --vcf SimulationResults/Simulation450_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G900
vcftools --vcf SimulationResults/Simulation450_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G950
vcftools --vcf SimulationResults/Simulation450_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait450_G1000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5_50.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation550_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G0
vcftools --vcf SimulationResults/Simulation550_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G2
vcftools --vcf SimulationResults/Simulation550_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G50
vcftools --vcf SimulationResults/Simulation550_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G100
vcftools --vcf SimulationResults/Simulation550_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G150
vcftools --vcf SimulationResults/Simulation550_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G200
vcftools --vcf SimulationResults/Simulation550_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G250
vcftools --vcf SimulationResults/Simulation550_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G300
vcftools --vcf SimulationResults/Simulation550_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G350
vcftools --vcf SimulationResults/Simulation550_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G400
vcftools --vcf SimulationResults/Simulation550_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G450
vcftools --vcf SimulationResults/Simulation550_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G501
vcftools --vcf SimulationResults/Simulation550_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G550
vcftools --vcf SimulationResults/Simulation550_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G600
vcftools --vcf SimulationResults/Simulation550_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G650
vcftools --vcf SimulationResults/Simulation550_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G700
vcftools --vcf SimulationResults/Simulation550_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G750
vcftools --vcf SimulationResults/Simulation550_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G800
vcftools --vcf SimulationResults/Simulation550_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G850
vcftools --vcf SimulationResults/Simulation550_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G900
vcftools --vcf SimulationResults/Simulation550_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G950
vcftools --vcf SimulationResults/Simulation550_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait550_G1000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation550_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G0
vcftools --vcf SimulationResults/Simulation550_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G2
vcftools --vcf SimulationResults/Simulation550_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G50
vcftools --vcf SimulationResults/Simulation550_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G100
vcftools --vcf SimulationResults/Simulation550_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G150
vcftools --vcf SimulationResults/Simulation550_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G200
vcftools --vcf SimulationResults/Simulation550_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G250
vcftools --vcf SimulationResults/Simulation550_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G300
vcftools --vcf SimulationResults/Simulation550_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G350
vcftools --vcf SimulationResults/Simulation550_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G400
vcftools --vcf SimulationResults/Simulation550_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G450
vcftools --vcf SimulationResults/Simulation550_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G501
vcftools --vcf SimulationResults/Simulation550_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G550
vcftools --vcf SimulationResults/Simulation550_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G600
vcftools --vcf SimulationResults/Simulation550_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G650
vcftools --vcf SimulationResults/Simulation550_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G700
vcftools --vcf SimulationResults/Simulation550_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G750
vcftools --vcf SimulationResults/Simulation550_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G800
vcftools --vcf SimulationResults/Simulation550_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G850
vcftools --vcf SimulationResults/Simulation550_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G900
vcftools --vcf SimulationResults/Simulation550_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G950
vcftools --vcf SimulationResults/Simulation550_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait550_G1000


