#!/bin/bash
read -p "Enter what you want: (create or remove) " choice
if [[ $choice == "create" ]]; then
	for i in {1..90}
	do
		mkdir -p day$i
	done
elif [[ $choice == "remove" ]]; then
	for i in {1..90}
	do
		rm -r day$i
	done
else
	echo "Invalid choice"
fi
