###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1_300.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation1300_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G0
vcftools --vcf SimulationResults/Simulation1300_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G2
vcftools --vcf SimulationResults/Simulation1300_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G50
vcftools --vcf SimulationResults/Simulation1300_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G100
vcftools --vcf SimulationResults/Simulation1300_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G150
vcftools --vcf SimulationResults/Simulation1300_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G200
vcftools --vcf SimulationResults/Simulation1300_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G250
vcftools --vcf SimulationResults/Simulation1300_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G300
vcftools --vcf SimulationResults/Simulation1300_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G350
vcftools --vcf SimulationResults/Simulation1300_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G400
vcftools --vcf SimulationResults/Simulation1300_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G450
vcftools --vcf SimulationResults/Simulation1300_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G501
vcftools --vcf SimulationResults/Simulation1300_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G550
vcftools --vcf SimulationResults/Simulation1300_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G600
vcftools --vcf SimulationResults/Simulation1300_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G650
vcftools --vcf SimulationResults/Simulation1300_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G700
vcftools --vcf SimulationResults/Simulation1300_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G750
vcftools --vcf SimulationResults/Simulation1300_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G800
vcftools --vcf SimulationResults/Simulation1300_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G850
vcftools --vcf SimulationResults/Simulation1300_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G900
vcftools --vcf SimulationResults/Simulation1300_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G950
vcftools --vcf SimulationResults/Simulation1300_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1300_G1000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation1300_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G0
vcftools --vcf SimulationResults/Simulation1300_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G2
vcftools --vcf SimulationResults/Simulation1300_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G50
vcftools --vcf SimulationResults/Simulation1300_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G100
vcftools --vcf SimulationResults/Simulation1300_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G150
vcftools --vcf SimulationResults/Simulation1300_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G200
vcftools --vcf SimulationResults/Simulation1300_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G250
vcftools --vcf SimulationResults/Simulation1300_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G300
vcftools --vcf SimulationResults/Simulation1300_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G350
vcftools --vcf SimulationResults/Simulation1300_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G400
vcftools --vcf SimulationResults/Simulation1300_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G450
vcftools --vcf SimulationResults/Simulation1300_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G501
vcftools --vcf SimulationResults/Simulation1300_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G550
vcftools --vcf SimulationResults/Simulation1300_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G600
vcftools --vcf SimulationResults/Simulation1300_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G650
vcftools --vcf SimulationResults/Simulation1300_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G700
vcftools --vcf SimulationResults/Simulation1300_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G750
vcftools --vcf SimulationResults/Simulation1300_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G800
vcftools --vcf SimulationResults/Simulation1300_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G850
vcftools --vcf SimulationResults/Simulation1300_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G900
vcftools --vcf SimulationResults/Simulation1300_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G950
vcftools --vcf SimulationResults/Simulation1300_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1300_G1000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait2_300.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation2300_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G0
vcftools --vcf SimulationResults/Simulation2300_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G2
vcftools --vcf SimulationResults/Simulation2300_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G50
vcftools --vcf SimulationResults/Simulation2300_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G100
vcftools --vcf SimulationResults/Simulation2300_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G150
vcftools --vcf SimulationResults/Simulation2300_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G200
vcftools --vcf SimulationResults/Simulation2300_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G250
vcftools --vcf SimulationResults/Simulation2300_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G300
vcftools --vcf SimulationResults/Simulation2300_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G350
vcftools --vcf SimulationResults/Simulation2300_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G400
vcftools --vcf SimulationResults/Simulation2300_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G450
vcftools --vcf SimulationResults/Simulation2300_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G501
vcftools --vcf SimulationResults/Simulation2300_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G550
vcftools --vcf SimulationResults/Simulation2300_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G600
vcftools --vcf SimulationResults/Simulation2300_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G650
vcftools --vcf SimulationResults/Simulation2300_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G700
vcftools --vcf SimulationResults/Simulation2300_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G750
vcftools --vcf SimulationResults/Simulation2300_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G800
vcftools --vcf SimulationResults/Simulation2300_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G850
vcftools --vcf SimulationResults/Simulation2300_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G900
vcftools --vcf SimulationResults/Simulation2300_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G950
vcftools --vcf SimulationResults/Simulation2300_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2300_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation2300_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G0
vcftools --vcf SimulationResults/Simulation2300_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G2
vcftools --vcf SimulationResults/Simulation2300_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G50
vcftools --vcf SimulationResults/Simulation2300_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G100
vcftools --vcf SimulationResults/Simulation2300_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G150
vcftools --vcf SimulationResults/Simulation2300_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G200
vcftools --vcf SimulationResults/Simulation2300_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G250
vcftools --vcf SimulationResults/Simulation2300_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G300
vcftools --vcf SimulationResults/Simulation2300_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G350
vcftools --vcf SimulationResults/Simulation2300_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G400
vcftools --vcf SimulationResults/Simulation2300_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G450
vcftools --vcf SimulationResults/Simulation2300_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G501
vcftools --vcf SimulationResults/Simulation2300_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G550
vcftools --vcf SimulationResults/Simulation2300_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G600
vcftools --vcf SimulationResults/Simulation2300_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G650
vcftools --vcf SimulationResults/Simulation2300_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G700
vcftools --vcf SimulationResults/Simulation2300_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G750
vcftools --vcf SimulationResults/Simulation2300_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G800
vcftools --vcf SimulationResults/Simulation2300_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G850
vcftools --vcf SimulationResults/Simulation2300_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G900
vcftools --vcf SimulationResults/Simulation2300_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G950
vcftools --vcf SimulationResults/Simulation2300_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2300_G1000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3_300.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation3300_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G0
vcftools --vcf SimulationResults/Simulation3300_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G2
vcftools --vcf SimulationResults/Simulation3300_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G50
vcftools --vcf SimulationResults/Simulation3300_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G100
vcftools --vcf SimulationResults/Simulation3300_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G150
vcftools --vcf SimulationResults/Simulation3300_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G200
vcftools --vcf SimulationResults/Simulation3300_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G250
vcftools --vcf SimulationResults/Simulation3300_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G300
vcftools --vcf SimulationResults/Simulation3300_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G350
vcftools --vcf SimulationResults/Simulation3300_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G400
vcftools --vcf SimulationResults/Simulation3300_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G450
vcftools --vcf SimulationResults/Simulation3300_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G501
vcftools --vcf SimulationResults/Simulation3300_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G550
vcftools --vcf SimulationResults/Simulation3300_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G600
vcftools --vcf SimulationResults/Simulation3300_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G650
vcftools --vcf SimulationResults/Simulation3300_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G700
vcftools --vcf SimulationResults/Simulation3300_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G750
vcftools --vcf SimulationResults/Simulation3300_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G800
vcftools --vcf SimulationResults/Simulation3300_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G850
vcftools --vcf SimulationResults/Simulation3300_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G900
vcftools --vcf SimulationResults/Simulation3300_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G950
vcftools --vcf SimulationResults/Simulation3300_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3300_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation3300_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G0
vcftools --vcf SimulationResults/Simulation3300_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G2
vcftools --vcf SimulationResults/Simulation3300_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G50
vcftools --vcf SimulationResults/Simulation3300_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G100
vcftools --vcf SimulationResults/Simulation3300_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G150
vcftools --vcf SimulationResults/Simulation3300_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G200
vcftools --vcf SimulationResults/Simulation3300_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G250
vcftools --vcf SimulationResults/Simulation3300_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G300
vcftools --vcf SimulationResults/Simulation3300_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G350
vcftools --vcf SimulationResults/Simulation3300_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G400
vcftools --vcf SimulationResults/Simulation3300_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G450
vcftools --vcf SimulationResults/Simulation3300_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G501
vcftools --vcf SimulationResults/Simulation3300_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G550
vcftools --vcf SimulationResults/Simulation3300_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G600
vcftools --vcf SimulationResults/Simulation3300_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G650
vcftools --vcf SimulationResults/Simulation3300_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G700
vcftools --vcf SimulationResults/Simulation3300_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G750
vcftools --vcf SimulationResults/Simulation3300_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G800
vcftools --vcf SimulationResults/Simulation3300_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G850
vcftools --vcf SimulationResults/Simulation3300_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G900
vcftools --vcf SimulationResults/Simulation3300_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G950
vcftools --vcf SimulationResults/Simulation3300_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3300_G1000




###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4_300.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation4300_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G0
vcftools --vcf SimulationResults/Simulation4300_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G2
vcftools --vcf SimulationResults/Simulation4300_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G50
vcftools --vcf SimulationResults/Simulation4300_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G100
vcftools --vcf SimulationResults/Simulation4300_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G150
vcftools --vcf SimulationResults/Simulation4300_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G200
vcftools --vcf SimulationResults/Simulation4300_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G250
vcftools --vcf SimulationResults/Simulation4300_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G300
vcftools --vcf SimulationResults/Simulation4300_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G350
vcftools --vcf SimulationResults/Simulation4300_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G400
vcftools --vcf SimulationResults/Simulation4300_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G450
vcftools --vcf SimulationResults/Simulation4300_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G501
vcftools --vcf SimulationResults/Simulation4300_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G550
vcftools --vcf SimulationResults/Simulation4300_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G600
vcftools --vcf SimulationResults/Simulation4300_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G650
vcftools --vcf SimulationResults/Simulation4300_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G700
vcftools --vcf SimulationResults/Simulation4300_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G750
vcftools --vcf SimulationResults/Simulation4300_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G800
vcftools --vcf SimulationResults/Simulation4300_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G850
vcftools --vcf SimulationResults/Simulation4300_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G900
vcftools --vcf SimulationResults/Simulation4300_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G950
vcftools --vcf SimulationResults/Simulation4300_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4300_G1000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation4300_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G0
vcftools --vcf SimulationResults/Simulation4300_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G2
vcftools --vcf SimulationResults/Simulation4300_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G50
vcftools --vcf SimulationResults/Simulation4300_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G100
vcftools --vcf SimulationResults/Simulation4300_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G150
vcftools --vcf SimulationResults/Simulation4300_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G200
vcftools --vcf SimulationResults/Simulation4300_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G250
vcftools --vcf SimulationResults/Simulation4300_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G300
vcftools --vcf SimulationResults/Simulation4300_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G350
vcftools --vcf SimulationResults/Simulation4300_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G400
vcftools --vcf SimulationResults/Simulation4300_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G450
vcftools --vcf SimulationResults/Simulation4300_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G501
vcftools --vcf SimulationResults/Simulation4300_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G550
vcftools --vcf SimulationResults/Simulation4300_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G600
vcftools --vcf SimulationResults/Simulation4300_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G650
vcftools --vcf SimulationResults/Simulation4300_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G700
vcftools --vcf SimulationResults/Simulation4300_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G750
vcftools --vcf SimulationResults/Simulation4300_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G800
vcftools --vcf SimulationResults/Simulation4300_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G850
vcftools --vcf SimulationResults/Simulation4300_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G900
vcftools --vcf SimulationResults/Simulation4300_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G950
vcftools --vcf SimulationResults/Simulation4300_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4300_G1000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5_300.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation5300_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G0
vcftools --vcf SimulationResults/Simulation5300_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G2
vcftools --vcf SimulationResults/Simulation5300_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G50
vcftools --vcf SimulationResults/Simulation5300_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G100
vcftools --vcf SimulationResults/Simulation5300_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G150
vcftools --vcf SimulationResults/Simulation5300_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G200
vcftools --vcf SimulationResults/Simulation5300_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G250
vcftools --vcf SimulationResults/Simulation5300_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G300
vcftools --vcf SimulationResults/Simulation5300_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G350
vcftools --vcf SimulationResults/Simulation5300_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G400
vcftools --vcf SimulationResults/Simulation5300_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G450
vcftools --vcf SimulationResults/Simulation5300_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G501
vcftools --vcf SimulationResults/Simulation5300_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G550
vcftools --vcf SimulationResults/Simulation5300_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G600
vcftools --vcf SimulationResults/Simulation5300_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G650
vcftools --vcf SimulationResults/Simulation5300_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G700
vcftools --vcf SimulationResults/Simulation5300_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G750
vcftools --vcf SimulationResults/Simulation5300_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G800
vcftools --vcf SimulationResults/Simulation5300_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G850
vcftools --vcf SimulationResults/Simulation5300_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G900
vcftools --vcf SimulationResults/Simulation5300_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G950
vcftools --vcf SimulationResults/Simulation5300_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5300_G1000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation5300_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G0
vcftools --vcf SimulationResults/Simulation5300_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G2
vcftools --vcf SimulationResults/Simulation5300_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G50
vcftools --vcf SimulationResults/Simulation5300_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G100
vcftools --vcf SimulationResults/Simulation5300_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G150
vcftools --vcf SimulationResults/Simulation5300_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G200
vcftools --vcf SimulationResults/Simulation5300_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G250
vcftools --vcf SimulationResults/Simulation5300_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G300
vcftools --vcf SimulationResults/Simulation5300_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G350
vcftools --vcf SimulationResults/Simulation5300_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G400
vcftools --vcf SimulationResults/Simulation5300_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G450
vcftools --vcf SimulationResults/Simulation5300_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G501
vcftools --vcf SimulationResults/Simulation5300_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G550
vcftools --vcf SimulationResults/Simulation5300_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G600
vcftools --vcf SimulationResults/Simulation5300_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G650
vcftools --vcf SimulationResults/Simulation5300_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G700
vcftools --vcf SimulationResults/Simulation5300_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G750
vcftools --vcf SimulationResults/Simulation5300_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G800
vcftools --vcf SimulationResults/Simulation5300_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G850
vcftools --vcf SimulationResults/Simulation5300_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G900
vcftools --vcf SimulationResults/Simulation5300_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G950
vcftools --vcf SimulationResults/Simulation5300_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5300_G1000


