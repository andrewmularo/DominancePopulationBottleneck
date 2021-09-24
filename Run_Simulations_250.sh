###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1_250.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation1250_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G0
vcftools --vcf SimulationResults/Simulation1250_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G2
vcftools --vcf SimulationResults/Simulation1250_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G50
vcftools --vcf SimulationResults/Simulation1250_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G100
vcftools --vcf SimulationResults/Simulation1250_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G150
vcftools --vcf SimulationResults/Simulation1250_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G200
vcftools --vcf SimulationResults/Simulation1250_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G250
vcftools --vcf SimulationResults/Simulation1250_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G300
vcftools --vcf SimulationResults/Simulation1250_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G350
vcftools --vcf SimulationResults/Simulation1250_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G400
vcftools --vcf SimulationResults/Simulation1250_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G450
vcftools --vcf SimulationResults/Simulation1250_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G501
vcftools --vcf SimulationResults/Simulation1250_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G550
vcftools --vcf SimulationResults/Simulation1250_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G600
vcftools --vcf SimulationResults/Simulation1250_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G650
vcftools --vcf SimulationResults/Simulation1250_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G700
vcftools --vcf SimulationResults/Simulation1250_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G750
vcftools --vcf SimulationResults/Simulation1250_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G800
vcftools --vcf SimulationResults/Simulation1250_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G850
vcftools --vcf SimulationResults/Simulation1250_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G900
vcftools --vcf SimulationResults/Simulation1250_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G950
vcftools --vcf SimulationResults/Simulation1250_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait1250_G1000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation1250_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G0
vcftools --vcf SimulationResults/Simulation1250_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G2
vcftools --vcf SimulationResults/Simulation1250_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G50
vcftools --vcf SimulationResults/Simulation1250_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G100
vcftools --vcf SimulationResults/Simulation1250_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G150
vcftools --vcf SimulationResults/Simulation1250_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G200
vcftools --vcf SimulationResults/Simulation1250_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G250
vcftools --vcf SimulationResults/Simulation1250_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G300
vcftools --vcf SimulationResults/Simulation1250_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G350
vcftools --vcf SimulationResults/Simulation1250_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G400
vcftools --vcf SimulationResults/Simulation1250_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G450
vcftools --vcf SimulationResults/Simulation1250_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G501
vcftools --vcf SimulationResults/Simulation1250_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G550
vcftools --vcf SimulationResults/Simulation1250_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G600
vcftools --vcf SimulationResults/Simulation1250_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G650
vcftools --vcf SimulationResults/Simulation1250_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G700
vcftools --vcf SimulationResults/Simulation1250_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G750
vcftools --vcf SimulationResults/Simulation1250_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G800
vcftools --vcf SimulationResults/Simulation1250_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G850
vcftools --vcf SimulationResults/Simulation1250_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G900
vcftools --vcf SimulationResults/Simulation1250_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G950
vcftools --vcf SimulationResults/Simulation1250_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait1250_G1000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait2_250.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation2250_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G0
vcftools --vcf SimulationResults/Simulation2250_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G2
vcftools --vcf SimulationResults/Simulation2250_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G50
vcftools --vcf SimulationResults/Simulation2250_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G100
vcftools --vcf SimulationResults/Simulation2250_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G150
vcftools --vcf SimulationResults/Simulation2250_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G200
vcftools --vcf SimulationResults/Simulation2250_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G250
vcftools --vcf SimulationResults/Simulation2250_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G300
vcftools --vcf SimulationResults/Simulation2250_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G350
vcftools --vcf SimulationResults/Simulation2250_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G400
vcftools --vcf SimulationResults/Simulation2250_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G450
vcftools --vcf SimulationResults/Simulation2250_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G501
vcftools --vcf SimulationResults/Simulation2250_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G550
vcftools --vcf SimulationResults/Simulation2250_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G600
vcftools --vcf SimulationResults/Simulation2250_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G650
vcftools --vcf SimulationResults/Simulation2250_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G700
vcftools --vcf SimulationResults/Simulation2250_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G750
vcftools --vcf SimulationResults/Simulation2250_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G800
vcftools --vcf SimulationResults/Simulation2250_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G850
vcftools --vcf SimulationResults/Simulation2250_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G900
vcftools --vcf SimulationResults/Simulation2250_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G950
vcftools --vcf SimulationResults/Simulation2250_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait2250_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation2250_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G0
vcftools --vcf SimulationResults/Simulation2250_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G2
vcftools --vcf SimulationResults/Simulation2250_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G50
vcftools --vcf SimulationResults/Simulation2250_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G100
vcftools --vcf SimulationResults/Simulation2250_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G150
vcftools --vcf SimulationResults/Simulation2250_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G200
vcftools --vcf SimulationResults/Simulation2250_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G250
vcftools --vcf SimulationResults/Simulation2250_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G300
vcftools --vcf SimulationResults/Simulation2250_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G350
vcftools --vcf SimulationResults/Simulation2250_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G400
vcftools --vcf SimulationResults/Simulation2250_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G450
vcftools --vcf SimulationResults/Simulation2250_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G501
vcftools --vcf SimulationResults/Simulation2250_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G550
vcftools --vcf SimulationResults/Simulation2250_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G600
vcftools --vcf SimulationResults/Simulation2250_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G650
vcftools --vcf SimulationResults/Simulation2250_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G700
vcftools --vcf SimulationResults/Simulation2250_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G750
vcftools --vcf SimulationResults/Simulation2250_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G800
vcftools --vcf SimulationResults/Simulation2250_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G850
vcftools --vcf SimulationResults/Simulation2250_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G900
vcftools --vcf SimulationResults/Simulation2250_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G950
vcftools --vcf SimulationResults/Simulation2250_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait2250_G1000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3_250.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation3250_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G0
vcftools --vcf SimulationResults/Simulation3250_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G2
vcftools --vcf SimulationResults/Simulation3250_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G50
vcftools --vcf SimulationResults/Simulation3250_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G100
vcftools --vcf SimulationResults/Simulation3250_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G150
vcftools --vcf SimulationResults/Simulation3250_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G200
vcftools --vcf SimulationResults/Simulation3250_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G250
vcftools --vcf SimulationResults/Simulation3250_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G300
vcftools --vcf SimulationResults/Simulation3250_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G350
vcftools --vcf SimulationResults/Simulation3250_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G400
vcftools --vcf SimulationResults/Simulation3250_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G450
vcftools --vcf SimulationResults/Simulation3250_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G501
vcftools --vcf SimulationResults/Simulation3250_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G550
vcftools --vcf SimulationResults/Simulation3250_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G600
vcftools --vcf SimulationResults/Simulation3250_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G650
vcftools --vcf SimulationResults/Simulation3250_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G700
vcftools --vcf SimulationResults/Simulation3250_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G750
vcftools --vcf SimulationResults/Simulation3250_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G800
vcftools --vcf SimulationResults/Simulation3250_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G850
vcftools --vcf SimulationResults/Simulation3250_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G900
vcftools --vcf SimulationResults/Simulation3250_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G950
vcftools --vcf SimulationResults/Simulation3250_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait3250_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation3250_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G0
vcftools --vcf SimulationResults/Simulation3250_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G2
vcftools --vcf SimulationResults/Simulation3250_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G50
vcftools --vcf SimulationResults/Simulation3250_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G100
vcftools --vcf SimulationResults/Simulation3250_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G150
vcftools --vcf SimulationResults/Simulation3250_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G200
vcftools --vcf SimulationResults/Simulation3250_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G250
vcftools --vcf SimulationResults/Simulation3250_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G300
vcftools --vcf SimulationResults/Simulation3250_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G350
vcftools --vcf SimulationResults/Simulation3250_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G400
vcftools --vcf SimulationResults/Simulation3250_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G450
vcftools --vcf SimulationResults/Simulation3250_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G501
vcftools --vcf SimulationResults/Simulation3250_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G550
vcftools --vcf SimulationResults/Simulation3250_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G600
vcftools --vcf SimulationResults/Simulation3250_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G650
vcftools --vcf SimulationResults/Simulation3250_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G700
vcftools --vcf SimulationResults/Simulation3250_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G750
vcftools --vcf SimulationResults/Simulation3250_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G800
vcftools --vcf SimulationResults/Simulation3250_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G850
vcftools --vcf SimulationResults/Simulation3250_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G900
vcftools --vcf SimulationResults/Simulation3250_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G950
vcftools --vcf SimulationResults/Simulation3250_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait3250_G1000




###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4_250.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation4250_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G0
vcftools --vcf SimulationResults/Simulation4250_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G2
vcftools --vcf SimulationResults/Simulation4250_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G50
vcftools --vcf SimulationResults/Simulation4250_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G100
vcftools --vcf SimulationResults/Simulation4250_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G150
vcftools --vcf SimulationResults/Simulation4250_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G200
vcftools --vcf SimulationResults/Simulation4250_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G250
vcftools --vcf SimulationResults/Simulation4250_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G300
vcftools --vcf SimulationResults/Simulation4250_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G350
vcftools --vcf SimulationResults/Simulation4250_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G400
vcftools --vcf SimulationResults/Simulation4250_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G450
vcftools --vcf SimulationResults/Simulation4250_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G501
vcftools --vcf SimulationResults/Simulation4250_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G550
vcftools --vcf SimulationResults/Simulation4250_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G600
vcftools --vcf SimulationResults/Simulation4250_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G650
vcftools --vcf SimulationResults/Simulation4250_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G700
vcftools --vcf SimulationResults/Simulation4250_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G750
vcftools --vcf SimulationResults/Simulation4250_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G800
vcftools --vcf SimulationResults/Simulation4250_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G850
vcftools --vcf SimulationResults/Simulation4250_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G900
vcftools --vcf SimulationResults/Simulation4250_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G950
vcftools --vcf SimulationResults/Simulation4250_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait4250_G1000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation4250_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G0
vcftools --vcf SimulationResults/Simulation4250_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G2
vcftools --vcf SimulationResults/Simulation4250_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G50
vcftools --vcf SimulationResults/Simulation4250_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G100
vcftools --vcf SimulationResults/Simulation4250_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G150
vcftools --vcf SimulationResults/Simulation4250_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G200
vcftools --vcf SimulationResults/Simulation4250_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G250
vcftools --vcf SimulationResults/Simulation4250_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G300
vcftools --vcf SimulationResults/Simulation4250_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G350
vcftools --vcf SimulationResults/Simulation4250_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G400
vcftools --vcf SimulationResults/Simulation4250_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G450
vcftools --vcf SimulationResults/Simulation4250_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G501
vcftools --vcf SimulationResults/Simulation4250_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G550
vcftools --vcf SimulationResults/Simulation4250_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G600
vcftools --vcf SimulationResults/Simulation4250_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G650
vcftools --vcf SimulationResults/Simulation4250_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G700
vcftools --vcf SimulationResults/Simulation4250_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G750
vcftools --vcf SimulationResults/Simulation4250_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G800
vcftools --vcf SimulationResults/Simulation4250_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G850
vcftools --vcf SimulationResults/Simulation4250_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G900
vcftools --vcf SimulationResults/Simulation4250_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G950
vcftools --vcf SimulationResults/Simulation4250_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait4250_G1000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5_250.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation5250_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G0
vcftools --vcf SimulationResults/Simulation5250_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G2
vcftools --vcf SimulationResults/Simulation5250_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G50
vcftools --vcf SimulationResults/Simulation5250_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G100
vcftools --vcf SimulationResults/Simulation5250_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G150
vcftools --vcf SimulationResults/Simulation5250_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G200
vcftools --vcf SimulationResults/Simulation5250_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G250
vcftools --vcf SimulationResults/Simulation5250_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G300
vcftools --vcf SimulationResults/Simulation5250_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G350
vcftools --vcf SimulationResults/Simulation5250_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G400
vcftools --vcf SimulationResults/Simulation5250_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G450
vcftools --vcf SimulationResults/Simulation5250_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G501
vcftools --vcf SimulationResults/Simulation5250_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G550
vcftools --vcf SimulationResults/Simulation5250_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G600
vcftools --vcf SimulationResults/Simulation5250_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G650
vcftools --vcf SimulationResults/Simulation5250_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G700
vcftools --vcf SimulationResults/Simulation5250_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G750
vcftools --vcf SimulationResults/Simulation5250_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G800
vcftools --vcf SimulationResults/Simulation5250_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G850
vcftools --vcf SimulationResults/Simulation5250_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G900
vcftools --vcf SimulationResults/Simulation5250_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G950
vcftools --vcf SimulationResults/Simulation5250_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait5250_G1000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation5250_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G0
vcftools --vcf SimulationResults/Simulation5250_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G2
vcftools --vcf SimulationResults/Simulation5250_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G50
vcftools --vcf SimulationResults/Simulation5250_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G100
vcftools --vcf SimulationResults/Simulation5250_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G150
vcftools --vcf SimulationResults/Simulation5250_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G200
vcftools --vcf SimulationResults/Simulation5250_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G250
vcftools --vcf SimulationResults/Simulation5250_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G300
vcftools --vcf SimulationResults/Simulation5250_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G350
vcftools --vcf SimulationResults/Simulation5250_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G400
vcftools --vcf SimulationResults/Simulation5250_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G450
vcftools --vcf SimulationResults/Simulation5250_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G501
vcftools --vcf SimulationResults/Simulation5250_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G550
vcftools --vcf SimulationResults/Simulation5250_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G600
vcftools --vcf SimulationResults/Simulation5250_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G650
vcftools --vcf SimulationResults/Simulation5250_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G700
vcftools --vcf SimulationResults/Simulation5250_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G750
vcftools --vcf SimulationResults/Simulation5250_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G800
vcftools --vcf SimulationResults/Simulation5250_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G850
vcftools --vcf SimulationResults/Simulation5250_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G900
vcftools --vcf SimulationResults/Simulation5250_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G950
vcftools --vcf SimulationResults/Simulation5250_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait5250_G1000


