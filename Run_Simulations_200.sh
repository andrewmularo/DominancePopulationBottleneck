###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1_200.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation1200_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G0
vcftools --vcf SimulationResults/Simulation1200_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G2
vcftools --vcf SimulationResults/Simulation1200_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G50
vcftools --vcf SimulationResults/Simulation1200_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G100
vcftools --vcf SimulationResults/Simulation1200_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G150
vcftools --vcf SimulationResults/Simulation1200_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G200
vcftools --vcf SimulationResults/Simulation1200_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G250
vcftools --vcf SimulationResults/Simulation1200_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G300
vcftools --vcf SimulationResults/Simulation1200_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G350
vcftools --vcf SimulationResults/Simulation1200_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G400
vcftools --vcf SimulationResults/Simulation1200_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G450
vcftools --vcf SimulationResults/Simulation1200_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G501
vcftools --vcf SimulationResults/Simulation1200_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G550
vcftools --vcf SimulationResults/Simulation1200_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G600
vcftools --vcf SimulationResults/Simulation1200_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G650
vcftools --vcf SimulationResults/Simulation1200_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G700
vcftools --vcf SimulationResults/Simulation1200_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G750
vcftools --vcf SimulationResults/Simulation1200_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G800
vcftools --vcf SimulationResults/Simulation1200_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G850
vcftools --vcf SimulationResults/Simulation1200_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G900
vcftools --vcf SimulationResults/Simulation1200_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G950
vcftools --vcf SimulationResults/Simulation1200_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1200_G1000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation1200_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G0
vcftools --vcf SimulationResults/Simulation1200_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G2
vcftools --vcf SimulationResults/Simulation1200_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G50
vcftools --vcf SimulationResults/Simulation1200_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G100
vcftools --vcf SimulationResults/Simulation1200_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G150
vcftools --vcf SimulationResults/Simulation1200_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G200
vcftools --vcf SimulationResults/Simulation1200_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G250
vcftools --vcf SimulationResults/Simulation1200_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G300
vcftools --vcf SimulationResults/Simulation1200_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G350
vcftools --vcf SimulationResults/Simulation1200_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G400
vcftools --vcf SimulationResults/Simulation1200_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G450
vcftools --vcf SimulationResults/Simulation1200_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G501
vcftools --vcf SimulationResults/Simulation1200_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G550
vcftools --vcf SimulationResults/Simulation1200_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G600
vcftools --vcf SimulationResults/Simulation1200_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G650
vcftools --vcf SimulationResults/Simulation1200_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G700
vcftools --vcf SimulationResults/Simulation1200_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G750
vcftools --vcf SimulationResults/Simulation1200_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G800
vcftools --vcf SimulationResults/Simulation1200_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G850
vcftools --vcf SimulationResults/Simulation1200_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G900
vcftools --vcf SimulationResults/Simulation1200_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G950
vcftools --vcf SimulationResults/Simulation1200_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1200_G1000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait2_200.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation2200_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G0
vcftools --vcf SimulationResults/Simulation2200_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G2
vcftools --vcf SimulationResults/Simulation2200_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G50
vcftools --vcf SimulationResults/Simulation2200_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G100
vcftools --vcf SimulationResults/Simulation2200_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G150
vcftools --vcf SimulationResults/Simulation2200_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G200
vcftools --vcf SimulationResults/Simulation2200_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G250
vcftools --vcf SimulationResults/Simulation2200_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G300
vcftools --vcf SimulationResults/Simulation2200_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G350
vcftools --vcf SimulationResults/Simulation2200_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G400
vcftools --vcf SimulationResults/Simulation2200_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G450
vcftools --vcf SimulationResults/Simulation2200_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G501
vcftools --vcf SimulationResults/Simulation2200_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G550
vcftools --vcf SimulationResults/Simulation2200_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G600
vcftools --vcf SimulationResults/Simulation2200_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G650
vcftools --vcf SimulationResults/Simulation2200_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G700
vcftools --vcf SimulationResults/Simulation2200_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G750
vcftools --vcf SimulationResults/Simulation2200_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G800
vcftools --vcf SimulationResults/Simulation2200_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G850
vcftools --vcf SimulationResults/Simulation2200_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G900
vcftools --vcf SimulationResults/Simulation2200_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G950
vcftools --vcf SimulationResults/Simulation2200_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2200_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation2200_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G0
vcftools --vcf SimulationResults/Simulation2200_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G2
vcftools --vcf SimulationResults/Simulation2200_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G50
vcftools --vcf SimulationResults/Simulation2200_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G100
vcftools --vcf SimulationResults/Simulation2200_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G150
vcftools --vcf SimulationResults/Simulation2200_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G200
vcftools --vcf SimulationResults/Simulation2200_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G250
vcftools --vcf SimulationResults/Simulation2200_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G300
vcftools --vcf SimulationResults/Simulation2200_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G350
vcftools --vcf SimulationResults/Simulation2200_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G400
vcftools --vcf SimulationResults/Simulation2200_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G450
vcftools --vcf SimulationResults/Simulation2200_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G501
vcftools --vcf SimulationResults/Simulation2200_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G550
vcftools --vcf SimulationResults/Simulation2200_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G600
vcftools --vcf SimulationResults/Simulation2200_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G650
vcftools --vcf SimulationResults/Simulation2200_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G700
vcftools --vcf SimulationResults/Simulation2200_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G750
vcftools --vcf SimulationResults/Simulation2200_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G800
vcftools --vcf SimulationResults/Simulation2200_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G850
vcftools --vcf SimulationResults/Simulation2200_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G900
vcftools --vcf SimulationResults/Simulation2200_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G950
vcftools --vcf SimulationResults/Simulation2200_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2200_G1000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3_200.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation3200_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G0
vcftools --vcf SimulationResults/Simulation3200_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G2
vcftools --vcf SimulationResults/Simulation3200_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G50
vcftools --vcf SimulationResults/Simulation3200_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G100
vcftools --vcf SimulationResults/Simulation3200_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G150
vcftools --vcf SimulationResults/Simulation3200_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G200
vcftools --vcf SimulationResults/Simulation3200_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G250
vcftools --vcf SimulationResults/Simulation3200_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G300
vcftools --vcf SimulationResults/Simulation3200_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G350
vcftools --vcf SimulationResults/Simulation3200_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G400
vcftools --vcf SimulationResults/Simulation3200_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G450
vcftools --vcf SimulationResults/Simulation3200_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G501
vcftools --vcf SimulationResults/Simulation3200_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G550
vcftools --vcf SimulationResults/Simulation3200_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G600
vcftools --vcf SimulationResults/Simulation3200_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G650
vcftools --vcf SimulationResults/Simulation3200_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G700
vcftools --vcf SimulationResults/Simulation3200_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G750
vcftools --vcf SimulationResults/Simulation3200_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G800
vcftools --vcf SimulationResults/Simulation3200_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G850
vcftools --vcf SimulationResults/Simulation3200_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G900
vcftools --vcf SimulationResults/Simulation3200_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G950
vcftools --vcf SimulationResults/Simulation3200_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3200_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation3200_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G0
vcftools --vcf SimulationResults/Simulation3200_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G2
vcftools --vcf SimulationResults/Simulation3200_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G50
vcftools --vcf SimulationResults/Simulation3200_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G100
vcftools --vcf SimulationResults/Simulation3200_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G150
vcftools --vcf SimulationResults/Simulation3200_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G200
vcftools --vcf SimulationResults/Simulation3200_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G250
vcftools --vcf SimulationResults/Simulation3200_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G300
vcftools --vcf SimulationResults/Simulation3200_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G350
vcftools --vcf SimulationResults/Simulation3200_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G400
vcftools --vcf SimulationResults/Simulation3200_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G450
vcftools --vcf SimulationResults/Simulation3200_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G501
vcftools --vcf SimulationResults/Simulation3200_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G550
vcftools --vcf SimulationResults/Simulation3200_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G600
vcftools --vcf SimulationResults/Simulation3200_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G650
vcftools --vcf SimulationResults/Simulation3200_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G700
vcftools --vcf SimulationResults/Simulation3200_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G750
vcftools --vcf SimulationResults/Simulation3200_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G800
vcftools --vcf SimulationResults/Simulation3200_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G850
vcftools --vcf SimulationResults/Simulation3200_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G900
vcftools --vcf SimulationResults/Simulation3200_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G950
vcftools --vcf SimulationResults/Simulation3200_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3200_G1000




###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4_200.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation4200_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G0
vcftools --vcf SimulationResults/Simulation4200_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G2
vcftools --vcf SimulationResults/Simulation4200_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G50
vcftools --vcf SimulationResults/Simulation4200_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G100
vcftools --vcf SimulationResults/Simulation4200_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G150
vcftools --vcf SimulationResults/Simulation4200_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G200
vcftools --vcf SimulationResults/Simulation4200_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G250
vcftools --vcf SimulationResults/Simulation4200_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G300
vcftools --vcf SimulationResults/Simulation4200_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G350
vcftools --vcf SimulationResults/Simulation4200_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G400
vcftools --vcf SimulationResults/Simulation4200_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G450
vcftools --vcf SimulationResults/Simulation4200_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G501
vcftools --vcf SimulationResults/Simulation4200_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G550
vcftools --vcf SimulationResults/Simulation4200_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G600
vcftools --vcf SimulationResults/Simulation4200_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G650
vcftools --vcf SimulationResults/Simulation4200_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G700
vcftools --vcf SimulationResults/Simulation4200_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G750
vcftools --vcf SimulationResults/Simulation4200_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G800
vcftools --vcf SimulationResults/Simulation4200_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G850
vcftools --vcf SimulationResults/Simulation4200_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G900
vcftools --vcf SimulationResults/Simulation4200_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G950
vcftools --vcf SimulationResults/Simulation4200_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4200_G1000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation4200_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G0
vcftools --vcf SimulationResults/Simulation4200_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G2
vcftools --vcf SimulationResults/Simulation4200_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G50
vcftools --vcf SimulationResults/Simulation4200_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G100
vcftools --vcf SimulationResults/Simulation4200_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G150
vcftools --vcf SimulationResults/Simulation4200_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G200
vcftools --vcf SimulationResults/Simulation4200_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G250
vcftools --vcf SimulationResults/Simulation4200_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G300
vcftools --vcf SimulationResults/Simulation4200_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G350
vcftools --vcf SimulationResults/Simulation4200_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G400
vcftools --vcf SimulationResults/Simulation4200_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G450
vcftools --vcf SimulationResults/Simulation4200_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G501
vcftools --vcf SimulationResults/Simulation4200_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G550
vcftools --vcf SimulationResults/Simulation4200_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G600
vcftools --vcf SimulationResults/Simulation4200_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G650
vcftools --vcf SimulationResults/Simulation4200_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G700
vcftools --vcf SimulationResults/Simulation4200_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G750
vcftools --vcf SimulationResults/Simulation4200_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G800
vcftools --vcf SimulationResults/Simulation4200_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G850
vcftools --vcf SimulationResults/Simulation4200_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G900
vcftools --vcf SimulationResults/Simulation4200_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G950
vcftools --vcf SimulationResults/Simulation4200_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4200_G1000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5_200.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation5200_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G0
vcftools --vcf SimulationResults/Simulation5200_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G2
vcftools --vcf SimulationResults/Simulation5200_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G50
vcftools --vcf SimulationResults/Simulation5200_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G100
vcftools --vcf SimulationResults/Simulation5200_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G150
vcftools --vcf SimulationResults/Simulation5200_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G200
vcftools --vcf SimulationResults/Simulation5200_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G250
vcftools --vcf SimulationResults/Simulation5200_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G300
vcftools --vcf SimulationResults/Simulation5200_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G350
vcftools --vcf SimulationResults/Simulation5200_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G400
vcftools --vcf SimulationResults/Simulation5200_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G450
vcftools --vcf SimulationResults/Simulation5200_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G501
vcftools --vcf SimulationResults/Simulation5200_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G550
vcftools --vcf SimulationResults/Simulation5200_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G600
vcftools --vcf SimulationResults/Simulation5200_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G650
vcftools --vcf SimulationResults/Simulation5200_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G700
vcftools --vcf SimulationResults/Simulation5200_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G750
vcftools --vcf SimulationResults/Simulation5200_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G800
vcftools --vcf SimulationResults/Simulation5200_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G850
vcftools --vcf SimulationResults/Simulation5200_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G900
vcftools --vcf SimulationResults/Simulation5200_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G950
vcftools --vcf SimulationResults/Simulation5200_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5200_G1000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation5200_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G0
vcftools --vcf SimulationResults/Simulation5200_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G2
vcftools --vcf SimulationResults/Simulation5200_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G50
vcftools --vcf SimulationResults/Simulation5200_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G100
vcftools --vcf SimulationResults/Simulation5200_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G150
vcftools --vcf SimulationResults/Simulation5200_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G200
vcftools --vcf SimulationResults/Simulation5200_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G250
vcftools --vcf SimulationResults/Simulation5200_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G300
vcftools --vcf SimulationResults/Simulation5200_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G350
vcftools --vcf SimulationResults/Simulation5200_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G400
vcftools --vcf SimulationResults/Simulation5200_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G450
vcftools --vcf SimulationResults/Simulation5200_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G501
vcftools --vcf SimulationResults/Simulation5200_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G550
vcftools --vcf SimulationResults/Simulation5200_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G600
vcftools --vcf SimulationResults/Simulation5200_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G650
vcftools --vcf SimulationResults/Simulation5200_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G700
vcftools --vcf SimulationResults/Simulation5200_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G750
vcftools --vcf SimulationResults/Simulation5200_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G800
vcftools --vcf SimulationResults/Simulation5200_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G850
vcftools --vcf SimulationResults/Simulation5200_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G900
vcftools --vcf SimulationResults/Simulation5200_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G950
vcftools --vcf SimulationResults/Simulation5200_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5200_G1000




