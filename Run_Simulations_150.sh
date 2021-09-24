###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1_150.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation1150_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G0
vcftools --vcf SimulationResults/Simulation1150_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G2
vcftools --vcf SimulationResults/Simulation1150_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G50
vcftools --vcf SimulationResults/Simulation1150_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G100
vcftools --vcf SimulationResults/Simulation1150_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G150
vcftools --vcf SimulationResults/Simulation1150_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G200
vcftools --vcf SimulationResults/Simulation1150_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G250
vcftools --vcf SimulationResults/Simulation1150_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G300
vcftools --vcf SimulationResults/Simulation1150_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G350
vcftools --vcf SimulationResults/Simulation1150_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G400
vcftools --vcf SimulationResults/Simulation1150_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G450
vcftools --vcf SimulationResults/Simulation1150_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G501
vcftools --vcf SimulationResults/Simulation1150_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G550
vcftools --vcf SimulationResults/Simulation1150_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G600
vcftools --vcf SimulationResults/Simulation1150_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G650
vcftools --vcf SimulationResults/Simulation1150_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G700
vcftools --vcf SimulationResults/Simulation1150_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G750
vcftools --vcf SimulationResults/Simulation1150_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G800
vcftools --vcf SimulationResults/Simulation1150_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G850
vcftools --vcf SimulationResults/Simulation1150_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G900
vcftools --vcf SimulationResults/Simulation1150_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G950
vcftools --vcf SimulationResults/Simulation1150_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1150_G1000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation1150_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G0
vcftools --vcf SimulationResults/Simulation1150_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G2
vcftools --vcf SimulationResults/Simulation1150_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G50
vcftools --vcf SimulationResults/Simulation1150_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G100
vcftools --vcf SimulationResults/Simulation1150_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G150
vcftools --vcf SimulationResults/Simulation1150_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G200
vcftools --vcf SimulationResults/Simulation1150_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G250
vcftools --vcf SimulationResults/Simulation1150_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G300
vcftools --vcf SimulationResults/Simulation1150_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G350
vcftools --vcf SimulationResults/Simulation1150_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G400
vcftools --vcf SimulationResults/Simulation1150_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G450
vcftools --vcf SimulationResults/Simulation1150_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G501
vcftools --vcf SimulationResults/Simulation1150_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G550
vcftools --vcf SimulationResults/Simulation1150_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G600
vcftools --vcf SimulationResults/Simulation1150_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G650
vcftools --vcf SimulationResults/Simulation1150_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G700
vcftools --vcf SimulationResults/Simulation1150_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G750
vcftools --vcf SimulationResults/Simulation1150_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G800
vcftools --vcf SimulationResults/Simulation1150_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G850
vcftools --vcf SimulationResults/Simulation1150_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G900
vcftools --vcf SimulationResults/Simulation1150_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G950
vcftools --vcf SimulationResults/Simulation1150_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1150_G1000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait2_150.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation2150_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G0
vcftools --vcf SimulationResults/Simulation2150_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G2
vcftools --vcf SimulationResults/Simulation2150_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G50
vcftools --vcf SimulationResults/Simulation2150_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G100
vcftools --vcf SimulationResults/Simulation2150_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G150
vcftools --vcf SimulationResults/Simulation2150_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G200
vcftools --vcf SimulationResults/Simulation2150_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G250
vcftools --vcf SimulationResults/Simulation2150_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G300
vcftools --vcf SimulationResults/Simulation2150_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G350
vcftools --vcf SimulationResults/Simulation2150_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G400
vcftools --vcf SimulationResults/Simulation2150_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G450
vcftools --vcf SimulationResults/Simulation2150_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G501
vcftools --vcf SimulationResults/Simulation2150_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G550
vcftools --vcf SimulationResults/Simulation2150_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G600
vcftools --vcf SimulationResults/Simulation2150_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G650
vcftools --vcf SimulationResults/Simulation2150_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G700
vcftools --vcf SimulationResults/Simulation2150_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G750
vcftools --vcf SimulationResults/Simulation2150_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G800
vcftools --vcf SimulationResults/Simulation2150_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G850
vcftools --vcf SimulationResults/Simulation2150_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G900
vcftools --vcf SimulationResults/Simulation2150_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G950
vcftools --vcf SimulationResults/Simulation2150_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2150_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation2150_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G0
vcftools --vcf SimulationResults/Simulation2150_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G2
vcftools --vcf SimulationResults/Simulation2150_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G50
vcftools --vcf SimulationResults/Simulation2150_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G100
vcftools --vcf SimulationResults/Simulation2150_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G150
vcftools --vcf SimulationResults/Simulation2150_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G200
vcftools --vcf SimulationResults/Simulation2150_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G250
vcftools --vcf SimulationResults/Simulation2150_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G300
vcftools --vcf SimulationResults/Simulation2150_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G350
vcftools --vcf SimulationResults/Simulation2150_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G400
vcftools --vcf SimulationResults/Simulation2150_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G450
vcftools --vcf SimulationResults/Simulation2150_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G501
vcftools --vcf SimulationResults/Simulation2150_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G550
vcftools --vcf SimulationResults/Simulation2150_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G600
vcftools --vcf SimulationResults/Simulation2150_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G650
vcftools --vcf SimulationResults/Simulation2150_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G700
vcftools --vcf SimulationResults/Simulation2150_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G750
vcftools --vcf SimulationResults/Simulation2150_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G800
vcftools --vcf SimulationResults/Simulation2150_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G850
vcftools --vcf SimulationResults/Simulation2150_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G900
vcftools --vcf SimulationResults/Simulation2150_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G950
vcftools --vcf SimulationResults/Simulation2150_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2150_G1000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3_150.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation3150_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G0
vcftools --vcf SimulationResults/Simulation3150_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G2
vcftools --vcf SimulationResults/Simulation3150_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G50
vcftools --vcf SimulationResults/Simulation3150_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G100
vcftools --vcf SimulationResults/Simulation3150_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G150
vcftools --vcf SimulationResults/Simulation3150_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G200
vcftools --vcf SimulationResults/Simulation3150_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G250
vcftools --vcf SimulationResults/Simulation3150_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G300
vcftools --vcf SimulationResults/Simulation3150_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G350
vcftools --vcf SimulationResults/Simulation3150_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G400
vcftools --vcf SimulationResults/Simulation3150_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G450
vcftools --vcf SimulationResults/Simulation3150_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G501
vcftools --vcf SimulationResults/Simulation3150_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G550
vcftools --vcf SimulationResults/Simulation3150_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G600
vcftools --vcf SimulationResults/Simulation3150_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G650
vcftools --vcf SimulationResults/Simulation3150_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G700
vcftools --vcf SimulationResults/Simulation3150_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G750
vcftools --vcf SimulationResults/Simulation3150_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G800
vcftools --vcf SimulationResults/Simulation3150_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G850
vcftools --vcf SimulationResults/Simulation3150_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G900
vcftools --vcf SimulationResults/Simulation3150_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G950
vcftools --vcf SimulationResults/Simulation3150_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3150_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation3150_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G0
vcftools --vcf SimulationResults/Simulation3150_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G2
vcftools --vcf SimulationResults/Simulation3150_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G50
vcftools --vcf SimulationResults/Simulation3150_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G100
vcftools --vcf SimulationResults/Simulation3150_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G150
vcftools --vcf SimulationResults/Simulation3150_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G200
vcftools --vcf SimulationResults/Simulation3150_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G250
vcftools --vcf SimulationResults/Simulation3150_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G300
vcftools --vcf SimulationResults/Simulation3150_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G350
vcftools --vcf SimulationResults/Simulation3150_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G400
vcftools --vcf SimulationResults/Simulation3150_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G450
vcftools --vcf SimulationResults/Simulation3150_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G501
vcftools --vcf SimulationResults/Simulation3150_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G550
vcftools --vcf SimulationResults/Simulation3150_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G600
vcftools --vcf SimulationResults/Simulation3150_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G650
vcftools --vcf SimulationResults/Simulation3150_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G700
vcftools --vcf SimulationResults/Simulation3150_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G750
vcftools --vcf SimulationResults/Simulation3150_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G800
vcftools --vcf SimulationResults/Simulation3150_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G850
vcftools --vcf SimulationResults/Simulation3150_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G900
vcftools --vcf SimulationResults/Simulation3150_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G950
vcftools --vcf SimulationResults/Simulation3150_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3150_G1000




###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4_150.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation4150_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G0
vcftools --vcf SimulationResults/Simulation4150_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G2
vcftools --vcf SimulationResults/Simulation4150_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G50
vcftools --vcf SimulationResults/Simulation4150_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G100
vcftools --vcf SimulationResults/Simulation4150_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G150
vcftools --vcf SimulationResults/Simulation4150_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G200
vcftools --vcf SimulationResults/Simulation4150_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G250
vcftools --vcf SimulationResults/Simulation4150_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G300
vcftools --vcf SimulationResults/Simulation4150_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G350
vcftools --vcf SimulationResults/Simulation4150_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G400
vcftools --vcf SimulationResults/Simulation4150_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G450
vcftools --vcf SimulationResults/Simulation4150_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G501
vcftools --vcf SimulationResults/Simulation4150_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G550
vcftools --vcf SimulationResults/Simulation4150_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G600
vcftools --vcf SimulationResults/Simulation4150_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G650
vcftools --vcf SimulationResults/Simulation4150_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G700
vcftools --vcf SimulationResults/Simulation4150_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G750
vcftools --vcf SimulationResults/Simulation4150_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G800
vcftools --vcf SimulationResults/Simulation4150_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G850
vcftools --vcf SimulationResults/Simulation4150_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G900
vcftools --vcf SimulationResults/Simulation4150_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G950
vcftools --vcf SimulationResults/Simulation4150_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4150_G1000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation4150_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G0
vcftools --vcf SimulationResults/Simulation4150_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G2
vcftools --vcf SimulationResults/Simulation4150_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G50
vcftools --vcf SimulationResults/Simulation4150_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G100
vcftools --vcf SimulationResults/Simulation4150_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G150
vcftools --vcf SimulationResults/Simulation4150_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G200
vcftools --vcf SimulationResults/Simulation4150_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G250
vcftools --vcf SimulationResults/Simulation4150_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G300
vcftools --vcf SimulationResults/Simulation4150_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G350
vcftools --vcf SimulationResults/Simulation4150_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G400
vcftools --vcf SimulationResults/Simulation4150_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G450
vcftools --vcf SimulationResults/Simulation4150_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G501
vcftools --vcf SimulationResults/Simulation4150_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G550
vcftools --vcf SimulationResults/Simulation4150_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G600
vcftools --vcf SimulationResults/Simulation4150_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G650
vcftools --vcf SimulationResults/Simulation4150_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G700
vcftools --vcf SimulationResults/Simulation4150_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G750
vcftools --vcf SimulationResults/Simulation4150_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G800
vcftools --vcf SimulationResults/Simulation4150_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G850
vcftools --vcf SimulationResults/Simulation4150_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G900
vcftools --vcf SimulationResults/Simulation4150_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G950
vcftools --vcf SimulationResults/Simulation4150_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4150_G1000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5_150.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation5150_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G0
vcftools --vcf SimulationResults/Simulation5150_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G2
vcftools --vcf SimulationResults/Simulation5150_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G50
vcftools --vcf SimulationResults/Simulation5150_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G100
vcftools --vcf SimulationResults/Simulation5150_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G150
vcftools --vcf SimulationResults/Simulation5150_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G200
vcftools --vcf SimulationResults/Simulation5150_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G250
vcftools --vcf SimulationResults/Simulation5150_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G300
vcftools --vcf SimulationResults/Simulation5150_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G350
vcftools --vcf SimulationResults/Simulation5150_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G400
vcftools --vcf SimulationResults/Simulation5150_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G450
vcftools --vcf SimulationResults/Simulation5150_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G501
vcftools --vcf SimulationResults/Simulation5150_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G550
vcftools --vcf SimulationResults/Simulation5150_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G600
vcftools --vcf SimulationResults/Simulation5150_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G650
vcftools --vcf SimulationResults/Simulation5150_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G700
vcftools --vcf SimulationResults/Simulation5150_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G750
vcftools --vcf SimulationResults/Simulation5150_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G800
vcftools --vcf SimulationResults/Simulation5150_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G850
vcftools --vcf SimulationResults/Simulation5150_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G900
vcftools --vcf SimulationResults/Simulation5150_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G950
vcftools --vcf SimulationResults/Simulation5150_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5150_G1000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation5150_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G0
vcftools --vcf SimulationResults/Simulation5150_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G2
vcftools --vcf SimulationResults/Simulation5150_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G50
vcftools --vcf SimulationResults/Simulation5150_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G100
vcftools --vcf SimulationResults/Simulation5150_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G150
vcftools --vcf SimulationResults/Simulation5150_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G200
vcftools --vcf SimulationResults/Simulation5150_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G250
vcftools --vcf SimulationResults/Simulation5150_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G300
vcftools --vcf SimulationResults/Simulation5150_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G350
vcftools --vcf SimulationResults/Simulation5150_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G400
vcftools --vcf SimulationResults/Simulation5150_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G450
vcftools --vcf SimulationResults/Simulation5150_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G501
vcftools --vcf SimulationResults/Simulation5150_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G550
vcftools --vcf SimulationResults/Simulation5150_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G600
vcftools --vcf SimulationResults/Simulation5150_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G650
vcftools --vcf SimulationResults/Simulation5150_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G700
vcftools --vcf SimulationResults/Simulation5150_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G750
vcftools --vcf SimulationResults/Simulation5150_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G800
vcftools --vcf SimulationResults/Simulation5150_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G850
vcftools --vcf SimulationResults/Simulation5150_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G900
vcftools --vcf SimulationResults/Simulation5150_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G950
vcftools --vcf SimulationResults/Simulation5150_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5150_G1000


