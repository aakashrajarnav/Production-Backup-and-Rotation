#!/bin/bash

<<usage
Creates function for system information
- RAM used
- Storage used
- Top Processes
usage

check_memory() {
	free -h | awk 'NR==2 {print $7}'
}

check_storage() {
	df -h | awk 'NR==2 {print $4}'
}

check_most_mem_consuming_processes(){
	ps aux --sort=-%mem | awk 'NR==2 {print $1,$2,$4}'
}

show_details() {
	echo "============== SYSTEM DETAILS ==================="
	echo "Available memory"
	check_memory
	echo "Available Storage"
	check_storage
	echo "Most memory intensive processes"
	check_most_mem_consuming_processes
}

show_details

