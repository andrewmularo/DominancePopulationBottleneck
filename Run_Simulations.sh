


###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation1_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G0
vcftools --vcf SimulationResults/Simulation1_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G2
vcftools --vcf SimulationResults/Simulation1_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G50
vcftools --vcf SimulationResults/Simulation1_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G100
vcftools --vcf SimulationResults/Simulation1_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G150
vcftools --vcf SimulationResults/Simulation1_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G200
vcftools --vcf SimulationResults/Simulation1_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G250
vcftools --vcf SimulationResults/Simulation1_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G300
vcftools --vcf SimulationResults/Simulation1_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G350
vcftools --vcf SimulationResults/Simulation1_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G400
vcftools --vcf SimulationResults/Simulation1_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G450
vcftools --vcf SimulationResults/Simulation1_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G501
vcftools --vcf SimulationResults/Simulation1_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G550
vcftools --vcf SimulationResults/Simulation1_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G600
vcftools --vcf SimulationResults/Simulation1_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G650
vcftools --vcf SimulationResults/Simulation1_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G700
vcftools --vcf SimulationResults/Simulation1_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G750
vcftools --vcf SimulationResults/Simulation1_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G800
vcftools --vcf SimulationResults/Simulation1_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G850
vcftools --vcf SimulationResults/Simulation1_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G900
vcftools --vcf SimulationResults/Simulation1_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G950
vcftools --vcf SimulationResults/Simulation1_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1_G1000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation1_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G0
vcftools --vcf SimulationResults/Simulation1_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G2
vcftools --vcf SimulationResults/Simulation1_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G50
vcftools --vcf SimulationResults/Simulation1_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G100
vcftools --vcf SimulationResults/Simulation1_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G150
vcftools --vcf SimulationResults/Simulation1_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G200
vcftools --vcf SimulationResults/Simulation1_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G250
vcftools --vcf SimulationResults/Simulation1_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G300
vcftools --vcf SimulationResults/Simulation1_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G350
vcftools --vcf SimulationResults/Simulation1_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G400
vcftools --vcf SimulationResults/Simulation1_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G450
vcftools --vcf SimulationResults/Simulation1_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G501
vcftools --vcf SimulationResults/Simulation1_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G550
vcftools --vcf SimulationResults/Simulation1_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G600
vcftools --vcf SimulationResults/Simulation1_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G650
vcftools --vcf SimulationResults/Simulation1_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G700
vcftools --vcf SimulationResults/Simulation1_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G750
vcftools --vcf SimulationResults/Simulation1_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G800
vcftools --vcf SimulationResults/Simulation1_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G850
vcftools --vcf SimulationResults/Simulation1_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G900
vcftools --vcf SimulationResults/Simulation1_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G950
vcftools --vcf SimulationResults/Simulation1_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1_G1000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait2.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation2_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G0
vcftools --vcf SimulationResults/Simulation2_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G2
vcftools --vcf SimulationResults/Simulation2_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G50
vcftools --vcf SimulationResults/Simulation2_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G100
vcftools --vcf SimulationResults/Simulation2_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G150
vcftools --vcf SimulationResults/Simulation2_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G200
vcftools --vcf SimulationResults/Simulation2_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G250
vcftools --vcf SimulationResults/Simulation2_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G300
vcftools --vcf SimulationResults/Simulation2_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G350
vcftools --vcf SimulationResults/Simulation2_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G400
vcftools --vcf SimulationResults/Simulation2_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G450
vcftools --vcf SimulationResults/Simulation2_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G501
vcftools --vcf SimulationResults/Simulation2_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G550
vcftools --vcf SimulationResults/Simulation2_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G600
vcftools --vcf SimulationResults/Simulation2_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G650
vcftools --vcf SimulationResults/Simulation2_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G700
vcftools --vcf SimulationResults/Simulation2_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G750
vcftools --vcf SimulationResults/Simulation2_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G800
vcftools --vcf SimulationResults/Simulation2_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G850
vcftools --vcf SimulationResults/Simulation2_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G900
vcftools --vcf SimulationResults/Simulation2_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G950
vcftools --vcf SimulationResults/Simulation2_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation2_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G0
vcftools --vcf SimulationResults/Simulation2_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G2
vcftools --vcf SimulationResults/Simulation2_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G50
vcftools --vcf SimulationResults/Simulation2_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G100
vcftools --vcf SimulationResults/Simulation2_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G150
vcftools --vcf SimulationResults/Simulation2_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G200
vcftools --vcf SimulationResults/Simulation2_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G250
vcftools --vcf SimulationResults/Simulation2_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G300
vcftools --vcf SimulationResults/Simulation2_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G350
vcftools --vcf SimulationResults/Simulation2_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G400
vcftools --vcf SimulationResults/Simulation2_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G450
vcftools --vcf SimulationResults/Simulation2_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G501
vcftools --vcf SimulationResults/Simulation2_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G550
vcftools --vcf SimulationResults/Simulation2_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G600
vcftools --vcf SimulationResults/Simulation2_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G650
vcftools --vcf SimulationResults/Simulation2_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G700
vcftools --vcf SimulationResults/Simulation2_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G750
vcftools --vcf SimulationResults/Simulation2_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G800
vcftools --vcf SimulationResults/Simulation2_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G850
vcftools --vcf SimulationResults/Simulation2_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G900
vcftools --vcf SimulationResults/Simulation2_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G950
vcftools --vcf SimulationResults/Simulation2_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2_G1000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation3_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G0
vcftools --vcf SimulationResults/Simulation3_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G2
vcftools --vcf SimulationResults/Simulation3_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G50
vcftools --vcf SimulationResults/Simulation3_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G100
vcftools --vcf SimulationResults/Simulation3_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G150
vcftools --vcf SimulationResults/Simulation3_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G200
vcftools --vcf SimulationResults/Simulation3_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G250
vcftools --vcf SimulationResults/Simulation3_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G300
vcftools --vcf SimulationResults/Simulation3_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G350
vcftools --vcf SimulationResults/Simulation3_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G400
vcftools --vcf SimulationResults/Simulation3_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G450
vcftools --vcf SimulationResults/Simulation3_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G501
vcftools --vcf SimulationResults/Simulation3_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G550
vcftools --vcf SimulationResults/Simulation3_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G600
vcftools --vcf SimulationResults/Simulation3_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G650
vcftools --vcf SimulationResults/Simulation3_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G700
vcftools --vcf SimulationResults/Simulation3_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G750
vcftools --vcf SimulationResults/Simulation3_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G800
vcftools --vcf SimulationResults/Simulation3_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G850
vcftools --vcf SimulationResults/Simulation3_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G900
vcftools --vcf SimulationResults/Simulation3_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G950
vcftools --vcf SimulationResults/Simulation3_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation3_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G0
vcftools --vcf SimulationResults/Simulation3_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G2
vcftools --vcf SimulationResults/Simulation3_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G50
vcftools --vcf SimulationResults/Simulation3_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G100
vcftools --vcf SimulationResults/Simulation3_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G150
vcftools --vcf SimulationResults/Simulation3_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G200
vcftools --vcf SimulationResults/Simulation3_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G250
vcftools --vcf SimulationResults/Simulation3_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G300
vcftools --vcf SimulationResults/Simulation3_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G350
vcftools --vcf SimulationResults/Simulation3_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G400
vcftools --vcf SimulationResults/Simulation3_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G450
vcftools --vcf SimulationResults/Simulation3_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G501
vcftools --vcf SimulationResults/Simulation3_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G550
vcftools --vcf SimulationResults/Simulation3_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G600
vcftools --vcf SimulationResults/Simulation3_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G650
vcftools --vcf SimulationResults/Simulation3_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G700
vcftools --vcf SimulationResults/Simulation3_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G750
vcftools --vcf SimulationResults/Simulation3_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G800
vcftools --vcf SimulationResults/Simulation3_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G850
vcftools --vcf SimulationResults/Simulation3_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G900
vcftools --vcf SimulationResults/Simulation3_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G950
vcftools --vcf SimulationResults/Simulation3_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3_G1000




###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation4_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G0
vcftools --vcf SimulationResults/Simulation4_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G2
vcftools --vcf SimulationResults/Simulation4_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G50
vcftools --vcf SimulationResults/Simulation4_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G100
vcftools --vcf SimulationResults/Simulation4_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G150
vcftools --vcf SimulationResults/Simulation4_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G200
vcftools --vcf SimulationResults/Simulation4_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G250
vcftools --vcf SimulationResults/Simulation4_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G300
vcftools --vcf SimulationResults/Simulation4_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G350
vcftools --vcf SimulationResults/Simulation4_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G400
vcftools --vcf SimulationResults/Simulation4_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G450
vcftools --vcf SimulationResults/Simulation4_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G501
vcftools --vcf SimulationResults/Simulation4_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G550
vcftools --vcf SimulationResults/Simulation4_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G600
vcftools --vcf SimulationResults/Simulation4_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G650
vcftools --vcf SimulationResults/Simulation4_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G700
vcftools --vcf SimulationResults/Simulation4_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G750
vcftools --vcf SimulationResults/Simulation4_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G800
vcftools --vcf SimulationResults/Simulation4_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G850
vcftools --vcf SimulationResults/Simulation4_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G900
vcftools --vcf SimulationResults/Simulation4_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G950
vcftools --vcf SimulationResults/Simulation4_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4_G1000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation4_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G0
vcftools --vcf SimulationResults/Simulation4_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G2
vcftools --vcf SimulationResults/Simulation4_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G50
vcftools --vcf SimulationResults/Simulation4_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G100
vcftools --vcf SimulationResults/Simulation4_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G150
vcftools --vcf SimulationResults/Simulation4_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G200
vcftools --vcf SimulationResults/Simulation4_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G250
vcftools --vcf SimulationResults/Simulation4_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G300
vcftools --vcf SimulationResults/Simulation4_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G350
vcftools --vcf SimulationResults/Simulation4_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G400
vcftools --vcf SimulationResults/Simulation4_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G450
vcftools --vcf SimulationResults/Simulation4_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G501
vcftools --vcf SimulationResults/Simulation4_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G550
vcftools --vcf SimulationResults/Simulation4_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G600
vcftools --vcf SimulationResults/Simulation4_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G650
vcftools --vcf SimulationResults/Simulation4_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G700
vcftools --vcf SimulationResults/Simulation4_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G750
vcftools --vcf SimulationResults/Simulation4_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G800
vcftools --vcf SimulationResults/Simulation4_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G850
vcftools --vcf SimulationResults/Simulation4_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G900
vcftools --vcf SimulationResults/Simulation4_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G950
vcftools --vcf SimulationResults/Simulation4_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4_G1000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation5_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G0
vcftools --vcf SimulationResults/Simulation5_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G2
vcftools --vcf SimulationResults/Simulation5_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G50
vcftools --vcf SimulationResults/Simulation5_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G100
vcftools --vcf SimulationResults/Simulation5_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G150
vcftools --vcf SimulationResults/Simulation5_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G200
vcftools --vcf SimulationResults/Simulation5_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G250
vcftools --vcf SimulationResults/Simulation5_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G300
vcftools --vcf SimulationResults/Simulation5_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G350
vcftools --vcf SimulationResults/Simulation5_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G400
vcftools --vcf SimulationResults/Simulation5_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G450
vcftools --vcf SimulationResults/Simulation5_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G501
vcftools --vcf SimulationResults/Simulation5_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G550
vcftools --vcf SimulationResults/Simulation5_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G600
vcftools --vcf SimulationResults/Simulation5_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G650
vcftools --vcf SimulationResults/Simulation5_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G700
vcftools --vcf SimulationResults/Simulation5_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G750
vcftools --vcf SimulationResults/Simulation5_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G800
vcftools --vcf SimulationResults/Simulation5_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G850
vcftools --vcf SimulationResults/Simulation5_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G900
vcftools --vcf SimulationResults/Simulation5_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G950
vcftools --vcf SimulationResults/Simulation5_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5_G1000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation5_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G0
vcftools --vcf SimulationResults/Simulation5_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G2
vcftools --vcf SimulationResults/Simulation5_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G50
vcftools --vcf SimulationResults/Simulation5_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G100
vcftools --vcf SimulationResults/Simulation5_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G150
vcftools --vcf SimulationResults/Simulation5_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G200
vcftools --vcf SimulationResults/Simulation5_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G250
vcftools --vcf SimulationResults/Simulation5_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G300
vcftools --vcf SimulationResults/Simulation5_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G350
vcftools --vcf SimulationResults/Simulation5_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G400
vcftools --vcf SimulationResults/Simulation5_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G450
vcftools --vcf SimulationResults/Simulation5_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G501
vcftools --vcf SimulationResults/Simulation5_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G550
vcftools --vcf SimulationResults/Simulation5_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G600
vcftools --vcf SimulationResults/Simulation5_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G650
vcftools --vcf SimulationResults/Simulation5_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G700
vcftools --vcf SimulationResults/Simulation5_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G750
vcftools --vcf SimulationResults/Simulation5_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G800
vcftools --vcf SimulationResults/Simulation5_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G850
vcftools --vcf SimulationResults/Simulation5_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G900
vcftools --vcf SimulationResults/Simulation5_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G950
vcftools --vcf SimulationResults/Simulation5_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5_G1000




