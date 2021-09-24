###### SIMULATION 1 - DOMINANCE COEFFICIENT 0.0 

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait1_20.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files 
vcftools --vcf SimulationResults/Simulation120_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G0
vcftools --vcf SimulationResults/Simulation120_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G2
vcftools --vcf SimulationResults/Simulation120_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G50
vcftools --vcf SimulationResults/Simulation120_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G100
vcftools --vcf SimulationResults/Simulation120_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G150
vcftools --vcf SimulationResults/Simulation120_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G200
vcftools --vcf SimulationResults/Simulation120_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G250
vcftools --vcf SimulationResults/Simulation120_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G300
vcftools --vcf SimulationResults/Simulation120_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G350
vcftools --vcf SimulationResults/Simulation120_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G400
vcftools --vcf SimulationResults/Simulation120_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G450
vcftools --vcf SimulationResults/Simulation120_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G501
vcftools --vcf SimulationResults/Simulation120_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G550
vcftools --vcf SimulationResults/Simulation120_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G600
vcftools --vcf SimulationResults/Simulation120_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G650
vcftools --vcf SimulationResults/Simulation120_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G700
vcftools --vcf SimulationResults/Simulation120_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G750
vcftools --vcf SimulationResults/Simulation120_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G800
vcftools --vcf SimulationResults/Simulation120_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G850
vcftools --vcf SimulationResults/Simulation120_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G900
vcftools --vcf SimulationResults/Simulation120_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G950
vcftools --vcf SimulationResults/Simulation120_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait120_G1000

## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation120_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G0
vcftools --vcf SimulationResults/Simulation120_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G2
vcftools --vcf SimulationResults/Simulation120_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G50
vcftools --vcf SimulationResults/Simulation120_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G100
vcftools --vcf SimulationResults/Simulation120_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G150
vcftools --vcf SimulationResults/Simulation120_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G200
vcftools --vcf SimulationResults/Simulation120_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G250
vcftools --vcf SimulationResults/Simulation120_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G300
vcftools --vcf SimulationResults/Simulation120_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G350
vcftools --vcf SimulationResults/Simulation120_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G400
vcftools --vcf SimulationResults/Simulation120_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G450
vcftools --vcf SimulationResults/Simulation120_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G501
vcftools --vcf SimulationResults/Simulation120_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G550
vcftools --vcf SimulationResults/Simulation120_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G600
vcftools --vcf SimulationResults/Simulation120_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G650
vcftools --vcf SimulationResults/Simulation120_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G700
vcftools --vcf SimulationResults/Simulation120_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G750
vcftools --vcf SimulationResults/Simulation120_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G800
vcftools --vcf SimulationResults/Simulation120_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G850
vcftools --vcf SimulationResults/Simulation120_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G900
vcftools --vcf SimulationResults/Simulation120_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G950
vcftools --vcf SimulationResults/Simulation120_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait120_G1000


###### SIMULATION 2 - DOMINANCE COEFFICIENT 0.125 


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait2_20.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation220_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G0
vcftools --vcf SimulationResults/Simulation220_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G2
vcftools --vcf SimulationResults/Simulation220_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G50
vcftools --vcf SimulationResults/Simulation220_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G100
vcftools --vcf SimulationResults/Simulation220_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G150
vcftools --vcf SimulationResults/Simulation220_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G200
vcftools --vcf SimulationResults/Simulation220_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G250
vcftools --vcf SimulationResults/Simulation220_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G300
vcftools --vcf SimulationResults/Simulation220_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G350
vcftools --vcf SimulationResults/Simulation220_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G400
vcftools --vcf SimulationResults/Simulation220_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G450
vcftools --vcf SimulationResults/Simulation220_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G501
vcftools --vcf SimulationResults/Simulation220_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G550
vcftools --vcf SimulationResults/Simulation220_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G600
vcftools --vcf SimulationResults/Simulation220_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G650
vcftools --vcf SimulationResults/Simulation220_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G700
vcftools --vcf SimulationResults/Simulation220_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G750
vcftools --vcf SimulationResults/Simulation220_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G800
vcftools --vcf SimulationResults/Simulation220_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G850
vcftools --vcf SimulationResults/Simulation220_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G900
vcftools --vcf SimulationResults/Simulation220_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G950
vcftools --vcf SimulationResults/Simulation220_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait220_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation220_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G0
vcftools --vcf SimulationResults/Simulation220_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G2
vcftools --vcf SimulationResults/Simulation220_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G50
vcftools --vcf SimulationResults/Simulation220_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G100
vcftools --vcf SimulationResults/Simulation220_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G150
vcftools --vcf SimulationResults/Simulation220_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G200
vcftools --vcf SimulationResults/Simulation220_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G250
vcftools --vcf SimulationResults/Simulation220_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G300
vcftools --vcf SimulationResults/Simulation220_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G350
vcftools --vcf SimulationResults/Simulation220_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G400
vcftools --vcf SimulationResults/Simulation220_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G450
vcftools --vcf SimulationResults/Simulation220_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G501
vcftools --vcf SimulationResults/Simulation220_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G550
vcftools --vcf SimulationResults/Simulation220_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G600
vcftools --vcf SimulationResults/Simulation220_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G650
vcftools --vcf SimulationResults/Simulation220_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G700
vcftools --vcf SimulationResults/Simulation220_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G750
vcftools --vcf SimulationResults/Simulation220_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G800
vcftools --vcf SimulationResults/Simulation220_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G850
vcftools --vcf SimulationResults/Simulation220_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G900
vcftools --vcf SimulationResults/Simulation220_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G950
vcftools --vcf SimulationResults/Simulation220_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait220_G1000




###### SIMULATION 3 - DOMINANCE COEFFICIENT 0.25


# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait3_20.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation320_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G0
vcftools --vcf SimulationResults/Simulation320_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G2
vcftools --vcf SimulationResults/Simulation320_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G50
vcftools --vcf SimulationResults/Simulation320_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G100
vcftools --vcf SimulationResults/Simulation320_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G150
vcftools --vcf SimulationResults/Simulation320_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G200
vcftools --vcf SimulationResults/Simulation320_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G250
vcftools --vcf SimulationResults/Simulation320_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G300
vcftools --vcf SimulationResults/Simulation320_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G350
vcftools --vcf SimulationResults/Simulation320_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G400
vcftools --vcf SimulationResults/Simulation320_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G450
vcftools --vcf SimulationResults/Simulation320_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G501
vcftools --vcf SimulationResults/Simulation320_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G550
vcftools --vcf SimulationResults/Simulation320_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G600
vcftools --vcf SimulationResults/Simulation320_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G650
vcftools --vcf SimulationResults/Simulation320_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G700
vcftools --vcf SimulationResults/Simulation320_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G750
vcftools --vcf SimulationResults/Simulation320_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G800
vcftools --vcf SimulationResults/Simulation320_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G850
vcftools --vcf SimulationResults/Simulation320_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G900
vcftools --vcf SimulationResults/Simulation320_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G950
vcftools --vcf SimulationResults/Simulation320_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait320_G1000


## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation320_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G0
vcftools --vcf SimulationResults/Simulation320_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G2
vcftools --vcf SimulationResults/Simulation320_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G50
vcftools --vcf SimulationResults/Simulation320_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G100
vcftools --vcf SimulationResults/Simulation320_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G150
vcftools --vcf SimulationResults/Simulation320_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G200
vcftools --vcf SimulationResults/Simulation320_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G250
vcftools --vcf SimulationResults/Simulation320_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G300
vcftools --vcf SimulationResults/Simulation320_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G350
vcftools --vcf SimulationResults/Simulation320_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G400
vcftools --vcf SimulationResults/Simulation320_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G450
vcftools --vcf SimulationResults/Simulation320_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G501
vcftools --vcf SimulationResults/Simulation320_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G550
vcftools --vcf SimulationResults/Simulation320_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G600
vcftools --vcf SimulationResults/Simulation320_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G650
vcftools --vcf SimulationResults/Simulation320_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G700
vcftools --vcf SimulationResults/Simulation320_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G750
vcftools --vcf SimulationResults/Simulation320_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G800
vcftools --vcf SimulationResults/Simulation320_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G850
vcftools --vcf SimulationResults/Simulation320_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G900
vcftools --vcf SimulationResults/Simulation320_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G950
vcftools --vcf SimulationResults/Simulation320_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait320_G1000




###### SIMULATION 4 - DOMINANCE COEFFICIENT 0.375

# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait4_20.txt all


## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation420_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G0
vcftools --vcf SimulationResults/Simulation420_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G2
vcftools --vcf SimulationResults/Simulation420_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G50
vcftools --vcf SimulationResults/Simulation420_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G100
vcftools --vcf SimulationResults/Simulation420_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G150
vcftools --vcf SimulationResults/Simulation420_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G200
vcftools --vcf SimulationResults/Simulation420_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G250
vcftools --vcf SimulationResults/Simulation420_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G300
vcftools --vcf SimulationResults/Simulation420_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G350
vcftools --vcf SimulationResults/Simulation420_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G400
vcftools --vcf SimulationResults/Simulation420_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G450
vcftools --vcf SimulationResults/Simulation420_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G501
vcftools --vcf SimulationResults/Simulation420_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G550
vcftools --vcf SimulationResults/Simulation420_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G600
vcftools --vcf SimulationResults/Simulation420_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G650
vcftools --vcf SimulationResults/Simulation420_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G700
vcftools --vcf SimulationResults/Simulation420_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G750
vcftools --vcf SimulationResults/Simulation420_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G800
vcftools --vcf SimulationResults/Simulation420_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G850
vcftools --vcf SimulationResults/Simulation420_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G900
vcftools --vcf SimulationResults/Simulation420_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G950
vcftools --vcf SimulationResults/Simulation420_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait420_G1000



## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation420_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G0
vcftools --vcf SimulationResults/Simulation420_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G2
vcftools --vcf SimulationResults/Simulation420_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G50
vcftools --vcf SimulationResults/Simulation420_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G100
vcftools --vcf SimulationResults/Simulation420_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G150
vcftools --vcf SimulationResults/Simulation420_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G200
vcftools --vcf SimulationResults/Simulation420_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G250
vcftools --vcf SimulationResults/Simulation420_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G300
vcftools --vcf SimulationResults/Simulation420_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G350
vcftools --vcf SimulationResults/Simulation420_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G400
vcftools --vcf SimulationResults/Simulation420_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G450
vcftools --vcf SimulationResults/Simulation420_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G501
vcftools --vcf SimulationResults/Simulation420_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G550
vcftools --vcf SimulationResults/Simulation420_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G600
vcftools --vcf SimulationResults/Simulation420_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G650
vcftools --vcf SimulationResults/Simulation420_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G700
vcftools --vcf SimulationResults/Simulation420_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G750
vcftools --vcf SimulationResults/Simulation420_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G800
vcftools --vcf SimulationResults/Simulation420_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G850
vcftools --vcf SimulationResults/Simulation420_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G900
vcftools --vcf SimulationResults/Simulation420_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G950
vcftools --vcf SimulationResults/Simulation420_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait420_G1000





###### SIMULATION 5 - DOMINANCE COEFFICIENT 0.5 



# Run forward time simulation 
## Change directory below as needed
bin/SimBit f Dominance_Simulations/Dominance_Trait5_20.txt all

## Obtain heterozygosity, measuring with inbreeding coefficient F, from all specified generations from vcf files
vcftools --vcf SimulationResults/Simulation520_celegans_G0.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G0
vcftools --vcf SimulationResults/Simulation520_celegans_G2.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G2
vcftools --vcf SimulationResults/Simulation520_celegans_G50.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G50
vcftools --vcf SimulationResults/Simulation520_celegans_G100.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G100
vcftools --vcf SimulationResults/Simulation520_celegans_G150.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G150
vcftools --vcf SimulationResults/Simulation520_celegans_G200.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G200
vcftools --vcf SimulationResults/Simulation520_celegans_G250.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G250
vcftools --vcf SimulationResults/Simulation520_celegans_G300.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G300
vcftools --vcf SimulationResults/Simulation520_celegans_G350.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G350
vcftools --vcf SimulationResults/Simulation520_celegans_G400.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G400
vcftools --vcf SimulationResults/Simulation520_celegans_G450.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G450
vcftools --vcf SimulationResults/Simulation520_celegans_G501.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G501
vcftools --vcf SimulationResults/Simulation520_celegans_G550.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G550
vcftools --vcf SimulationResults/Simulation520_celegans_G600.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G600
vcftools --vcf SimulationResults/Simulation520_celegans_G650.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G650
vcftools --vcf SimulationResults/Simulation520_celegans_G700.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G700
vcftools --vcf SimulationResults/Simulation520_celegans_G750.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G750
vcftools --vcf SimulationResults/Simulation520_celegans_G800.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G800
vcftools --vcf SimulationResults/Simulation520_celegans_G850.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G850
vcftools --vcf SimulationResults/Simulation520_celegans_G900.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G900
vcftools --vcf SimulationResults/Simulation520_celegans_G950.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G950
vcftools --vcf SimulationResults/Simulation520_celegans_G1000.T1vcf --het --out SimulationResults/heterozygosity/output_heterozygosity_Trait520_G1000




## Obtain site nucleotide diversity estimates from vcf files 
vcftools --vcf SimulationResults/Simulation520_celegans_G0.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G0
vcftools --vcf SimulationResults/Simulation520_celegans_G2.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G2
vcftools --vcf SimulationResults/Simulation520_celegans_G50.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G50
vcftools --vcf SimulationResults/Simulation520_celegans_G100.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G100
vcftools --vcf SimulationResults/Simulation520_celegans_G150.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G150
vcftools --vcf SimulationResults/Simulation520_celegans_G200.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G200
vcftools --vcf SimulationResults/Simulation520_celegans_G250.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G250
vcftools --vcf SimulationResults/Simulation520_celegans_G300.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G300
vcftools --vcf SimulationResults/Simulation520_celegans_G350.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G350
vcftools --vcf SimulationResults/Simulation520_celegans_G400.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G400
vcftools --vcf SimulationResults/Simulation520_celegans_G450.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G450
vcftools --vcf SimulationResults/Simulation520_celegans_G501.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G501
vcftools --vcf SimulationResults/Simulation520_celegans_G550.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G550
vcftools --vcf SimulationResults/Simulation520_celegans_G600.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G600
vcftools --vcf SimulationResults/Simulation520_celegans_G650.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G650
vcftools --vcf SimulationResults/Simulation520_celegans_G700.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G700
vcftools --vcf SimulationResults/Simulation520_celegans_G750.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G750
vcftools --vcf SimulationResults/Simulation520_celegans_G800.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G800
vcftools --vcf SimulationResults/Simulation520_celegans_G850.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G850
vcftools --vcf SimulationResults/Simulation520_celegans_G900.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G900
vcftools --vcf SimulationResults/Simulation520_celegans_G950.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G950
vcftools --vcf SimulationResults/Simulation520_celegans_G1000.T1vcf --site-pi --out SimulationResults/PI/output_pi_Trait520_G1000



