#!/bin/bash
# script to set up experimental directory structure

log_file="setup_log.txt"

echo "Experiment setup started: $(date)" > $log_file

for species in cubane ethane methane
do
    mkdir $species
    echo "Created $species directory" >> $log_file

    for temperature in 25 30 37 40
    do
        mkdir $species/$temperature
        touch $species/$temperature/experiment.sh
        echo "  - Created $species/$temperature/" >> $log_file
    done
done

echo "Setup completed: $(date)" >> $log_file
echo "Setup complete! Check $log_file for details."
