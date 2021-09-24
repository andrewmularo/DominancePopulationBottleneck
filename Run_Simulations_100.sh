###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1_100.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation1100_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G0
vcftools --vcf SimulationResults/Simulation1100_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G2
vcftools --vcf SimulationResults/Simulation1100_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G50
vcftools --vcf SimulationResults/Simulation1100_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G100
vcftools --vcf SimulationResults/Simulation1100_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G150
vcftools --vcf SimulationResults/Simulation1100_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G200
vcftools --vcf SimulationResults/Simulation1100_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G250
vcftools --vcf SimulationResults/Simulation1100_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G300
vcftools --vcf SimulationResults/Simulation1100_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G350
vcftools --vcf SimulationResults/Simulation1100_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G400
vcftools --vcf SimulationResults/Simulation1100_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G450
vcftools --vcf SimulationResults/Simulation1100_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G501
vcftools --vcf SimulationResults/Simulation1100_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G550
vcftools --vcf SimulationResults/Simulation1100_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G600
vcftools --vcf SimulationResults/Simulation1100_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G650
vcftools --vcf SimulationResults/Simulation1100_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G700
vcftools --vcf SimulationResults/Simulation1100_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G750
vcftools --vcf SimulationResults/Simulation1100_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G800
vcftools --vcf SimulationResults/Simulation1100_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G850
vcftools --vcf SimulationResults/Simulation1100_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G900
vcftools --vcf SimulationResults/Simulation1100_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G950
vcftools --vcf SimulationResults/Simulation1100_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1100_G1000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation1100_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G0
vcftools --vcf SimulationResults/Simulation1100_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G2
vcftools --vcf SimulationResults/Simulation1100_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G50
vcftools --vcf SimulationResults/Simulation1100_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G100
vcftools --vcf SimulationResults/Simulation1100_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G150
vcftools --vcf SimulationResults/Simulation1100_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G200
vcftools --vcf SimulationResults/Simulation1100_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G250
vcftools --vcf SimulationResults/Simulation1100_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G300
vcftools --vcf SimulationResults/Simulation1100_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G350
vcftools --vcf SimulationResults/Simulation1100_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G400
vcftools --vcf SimulationResults/Simulation1100_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G450
vcftools --vcf SimulationResults/Simulation1100_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G501
vcftools --vcf SimulationResults/Simulation1100_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G550
vcftools --vcf SimulationResults/Simulation1100_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G600
vcftools --vcf SimulationResults/Simulation1100_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G650
vcftools --vcf SimulationResults/Simulation1100_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G700
vcftools --vcf SimulationResults/Simulation1100_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G750
vcftools --vcf SimulationResults/Simulation1100_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G800
vcftools --vcf SimulationResults/Simulation1100_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G850
vcftools --vcf SimulationResults/Simulation1100_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G900
vcftools --vcf SimulationResults/Simulation1100_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G950
vcftools --vcf SimulationResults/Simulation1100_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1100_G1000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait2_100.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation2100_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G0
vcftools --vcf SimulationResults/Simulation2100_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G2
vcftools --vcf SimulationResults/Simulation2100_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G50
vcftools --vcf SimulationResults/Simulation2100_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G100
vcftools --vcf SimulationResults/Simulation2100_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G150
vcftools --vcf SimulationResults/Simulation2100_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G200
vcftools --vcf SimulationResults/Simulation2100_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G250
vcftools --vcf SimulationResults/Simulation2100_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G300
vcftools --vcf SimulationResults/Simulation2100_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G350
vcftools --vcf SimulationResults/Simulation2100_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G400
vcftools --vcf SimulationResults/Simulation2100_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G450
vcftools --vcf SimulationResults/Simulation2100_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G501
vcftools --vcf SimulationResults/Simulation2100_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G550
vcftools --vcf SimulationResults/Simulation2100_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G600
vcftools --vcf SimulationResults/Simulation2100_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G650
vcftools --vcf SimulationResults/Simulation2100_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G700
vcftools --vcf SimulationResults/Simulation2100_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G750
vcftools --vcf SimulationResults/Simulation2100_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G800
vcftools --vcf SimulationResults/Simulation2100_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G850
vcftools --vcf SimulationResults/Simulation2100_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G900
vcftools --vcf SimulationResults/Simulation2100_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G950
vcftools --vcf SimulationResults/Simulation2100_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2100_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation2100_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G0
vcftools --vcf SimulationResults/Simulation2100_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G2
vcftools --vcf SimulationResults/Simulation2100_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G50
vcftools --vcf SimulationResults/Simulation2100_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G100
vcftools --vcf SimulationResults/Simulation2100_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G150
vcftools --vcf SimulationResults/Simulation2100_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G200
vcftools --vcf SimulationResults/Simulation2100_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G250
vcftools --vcf SimulationResults/Simulation2100_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G300
vcftools --vcf SimulationResults/Simulation2100_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G350
vcftools --vcf SimulationResults/Simulation2100_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G400
vcftools --vcf SimulationResults/Simulation2100_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G450
vcftools --vcf SimulationResults/Simulation2100_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G501
vcftools --vcf SimulationResults/Simulation2100_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G550
vcftools --vcf SimulationResults/Simulation2100_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G600
vcftools --vcf SimulationResults/Simulation2100_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G650
vcftools --vcf SimulationResults/Simulation2100_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G700
vcftools --vcf SimulationResults/Simulation2100_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G750
vcftools --vcf SimulationResults/Simulation2100_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G800
vcftools --vcf SimulationResults/Simulation2100_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G850
vcftools --vcf SimulationResults/Simulation2100_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G900
vcftools --vcf SimulationResults/Simulation2100_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G950
vcftools --vcf SimulationResults/Simulation2100_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2100_G1000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3_100.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation3100_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G0
vcftools --vcf SimulationResults/Simulation3100_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G2
vcftools --vcf SimulationResults/Simulation3100_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G50
vcftools --vcf SimulationResults/Simulation3100_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G100
vcftools --vcf SimulationResults/Simulation3100_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G150
vcftools --vcf SimulationResults/Simulation3100_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G200
vcftools --vcf SimulationResults/Simulation3100_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G250
vcftools --vcf SimulationResults/Simulation3100_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G300
vcftools --vcf SimulationResults/Simulation3100_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G350
vcftools --vcf SimulationResults/Simulation3100_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G400
vcftools --vcf SimulationResults/Simulation3100_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G450
vcftools --vcf SimulationResults/Simulation3100_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G501
vcftools --vcf SimulationResults/Simulation3100_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G550
vcftools --vcf SimulationResults/Simulation3100_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G600
vcftools --vcf SimulationResults/Simulation3100_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G650
vcftools --vcf SimulationResults/Simulation3100_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G700
vcftools --vcf SimulationResults/Simulation3100_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G750
vcftools --vcf SimulationResults/Simulation3100_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G800
vcftools --vcf SimulationResults/Simulation3100_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G850
vcftools --vcf SimulationResults/Simulation3100_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G900
vcftools --vcf SimulationResults/Simulation3100_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G950
vcftools --vcf SimulationResults/Simulation3100_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3100_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation3100_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G0
vcftools --vcf SimulationResults/Simulation3100_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G2
vcftools --vcf SimulationResults/Simulation3100_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G50
vcftools --vcf SimulationResults/Simulation3100_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G100
vcftools --vcf SimulationResults/Simulation3100_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G150
vcftools --vcf SimulationResults/Simulation3100_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G200
vcftools --vcf SimulationResults/Simulation3100_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G250
vcftools --vcf SimulationResults/Simulation3100_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G300
vcftools --vcf SimulationResults/Simulation3100_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G350
vcftools --vcf SimulationResults/Simulation3100_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G400
vcftools --vcf SimulationResults/Simulation3100_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G450
vcftools --vcf SimulationResults/Simulation3100_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G501
vcftools --vcf SimulationResults/Simulation3100_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G550
vcftools --vcf SimulationResults/Simulation3100_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G600
vcftools --vcf SimulationResults/Simulation3100_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G650
vcftools --vcf SimulationResults/Simulation3100_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G700
vcftools --vcf SimulationResults/Simulation3100_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G750
vcftools --vcf SimulationResults/Simulation3100_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G800
vcftools --vcf SimulationResults/Simulation3100_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G850
vcftools --vcf SimulationResults/Simulation3100_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G900
vcftools --vcf SimulationResults/Simulation3100_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G950
vcftools --vcf SimulationResults/Simulation3100_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3100_G1000




###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4_100.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation4100_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G0
vcftools --vcf SimulationResults/Simulation4100_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G2
vcftools --vcf SimulationResults/Simulation4100_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G50
vcftools --vcf SimulationResults/Simulation4100_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G100
vcftools --vcf SimulationResults/Simulation4100_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G150
vcftools --vcf SimulationResults/Simulation4100_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G200
vcftools --vcf SimulationResults/Simulation4100_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G250
vcftools --vcf SimulationResults/Simulation4100_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G300
vcftools --vcf SimulationResults/Simulation4100_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G350
vcftools --vcf SimulationResults/Simulation4100_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G400
vcftools --vcf SimulationResults/Simulation4100_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G450
vcftools --vcf SimulationResults/Simulation4100_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G501
vcftools --vcf SimulationResults/Simulation4100_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G550
vcftools --vcf SimulationResults/Simulation4100_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G600
vcftools --vcf SimulationResults/Simulation4100_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G650
vcftools --vcf SimulationResults/Simulation4100_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G700
vcftools --vcf SimulationResults/Simulation4100_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G750
vcftools --vcf SimulationResults/Simulation4100_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G800
vcftools --vcf SimulationResults/Simulation4100_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G850
vcftools --vcf SimulationResults/Simulation4100_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G900
vcftools --vcf SimulationResults/Simulation4100_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G950
vcftools --vcf SimulationResults/Simulation4100_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4100_G1000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation4100_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G0
vcftools --vcf SimulationResults/Simulation4100_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G2
vcftools --vcf SimulationResults/Simulation4100_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G50
vcftools --vcf SimulationResults/Simulation4100_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G100
vcftools --vcf SimulationResults/Simulation4100_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G150
vcftools --vcf SimulationResults/Simulation4100_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G200
vcftools --vcf SimulationResults/Simulation4100_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G250
vcftools --vcf SimulationResults/Simulation4100_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G300
vcftools --vcf SimulationResults/Simulation4100_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G350
vcftools --vcf SimulationResults/Simulation4100_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G400
vcftools --vcf SimulationResults/Simulation4100_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G450
vcftools --vcf SimulationResults/Simulation4100_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G501
vcftools --vcf SimulationResults/Simulation4100_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G550
vcftools --vcf SimulationResults/Simulation4100_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G600
vcftools --vcf SimulationResults/Simulation4100_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G650
vcftools --vcf SimulationResults/Simulation4100_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G700
vcftools --vcf SimulationResults/Simulation4100_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G750
vcftools --vcf SimulationResults/Simulation4100_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G800
vcftools --vcf SimulationResults/Simulation4100_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G850
vcftools --vcf SimulationResults/Simulation4100_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G900
vcftools --vcf SimulationResults/Simulation4100_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G950
vcftools --vcf SimulationResults/Simulation4100_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4100_G1000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5_100.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation5100_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G0
vcftools --vcf SimulationResults/Simulation5100_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G2
vcftools --vcf SimulationResults/Simulation5100_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G50
vcftools --vcf SimulationResults/Simulation5100_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G100
vcftools --vcf SimulationResults/Simulation5100_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G150
vcftools --vcf SimulationResults/Simulation5100_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G200
vcftools --vcf SimulationResults/Simulation5100_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G250
vcftools --vcf SimulationResults/Simulation5100_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G300
vcftools --vcf SimulationResults/Simulation5100_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G350
vcftools --vcf SimulationResults/Simulation5100_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G400
vcftools --vcf SimulationResults/Simulation5100_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G450
vcftools --vcf SimulationResults/Simulation5100_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G501
vcftools --vcf SimulationResults/Simulation5100_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G550
vcftools --vcf SimulationResults/Simulation5100_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G600
vcftools --vcf SimulationResults/Simulation5100_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G650
vcftools --vcf SimulationResults/Simulation5100_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G700
vcftools --vcf SimulationResults/Simulation5100_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G750
vcftools --vcf SimulationResults/Simulation5100_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G800
vcftools --vcf SimulationResults/Simulation5100_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G850
vcftools --vcf SimulationResults/Simulation5100_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G900
vcftools --vcf SimulationResults/Simulation5100_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G950
vcftools --vcf SimulationResults/Simulation5100_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5100_G1000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation5100_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G0
vcftools --vcf SimulationResults/Simulation5100_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G2
vcftools --vcf SimulationResults/Simulation5100_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G50
vcftools --vcf SimulationResults/Simulation5100_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G100
vcftools --vcf SimulationResults/Simulation5100_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G150
vcftools --vcf SimulationResults/Simulation5100_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G200
vcftools --vcf SimulationResults/Simulation5100_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G250
vcftools --vcf SimulationResults/Simulation5100_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G300
vcftools --vcf SimulationResults/Simulation5100_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G350
vcftools --vcf SimulationResults/Simulation5100_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G400
vcftools --vcf SimulationResults/Simulation5100_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G450
vcftools --vcf SimulationResults/Simulation5100_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G501
vcftools --vcf SimulationResults/Simulation5100_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G550
vcftools --vcf SimulationResults/Simulation5100_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G600
vcftools --vcf SimulationResults/Simulation5100_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G650
vcftools --vcf SimulationResults/Simulation5100_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G700
vcftools --vcf SimulationResults/Simulation5100_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G750
vcftools --vcf SimulationResults/Simulation5100_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G800
vcftools --vcf SimulationResults/Simulation5100_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G850
vcftools --vcf SimulationResults/Simulation5100_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G900
vcftools --vcf SimulationResults/Simulation5100_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G950
vcftools --vcf SimulationResults/Simulation5100_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5100_G1000


