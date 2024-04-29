#!/bin/bash

# Create a new file called "address_book.txt".
touch address_book.txt

# Print welcome message to the user.
echo "Welcome to the Address Book!"

# Function to display the menu options to the user.
display_menu() 
{
	echo "----------------------------"
	echo "What would you like to do?\n"
	echo "1. List all contacts."
	echo "2. Search for a contact."
	echo "3. Add a new contact."
	echo "4. Edit a contact."
	echo "5. Remove a contact."
	echo "6. Quit.\n"
}

# Main loop
while true; do

	# Display the menu.
	display_menu
	
	# Get the user's choice.
    read -p "Enter your choice: " user_choice
	echo ""
	
	# Validate the user's choice.
	if ! [ "$user_choice" -ge 1 -a "$user_choice" -le 6 ]; then
		echo "Invalid choice. Please enter a number from 1 to 6.\n"
		continue
	fi
	
	# Switch on the user's choice.
	case $user_choice in
		
	  1)
		# List all contacts in the address book.
		cat address_book.txt
		echo ""
		;;
	  2)
		# Search for a contact in the address book.
		read -p "Enter the name of the contact you want to search for: " search_name
		echo ""
		grep -i "$search_name" address_book.txt
		echo ""
		;;
	  3)
		# Add a new contact to the address book.
		read -p "Enter the name of the new contact: " new_name
		read -p "Enter the email address of the new contact: " new_email
		read -p "Enter the phone number of the new contact: " new_phone
		echo ""
		echo "$new_name | $new_email | $new_phone" >> address_book.txt
		echo "Contact added successfully!\n"
		;;
	  4)
		# Edit a contact in the address book.
		read -p "Enter the name of the contact you want to edit: " edit_name
		echo ""
		grep -i "$edit_name" address_book.txt
		echo ""
		echo "What would you like to change?\n"
		echo "1. Name"
		echo "2. Email address"
		echo "3. Phone number\n"
		read -p "Enter your choice: " edit_choice
		echo ""
		case $edit_choice in
		  1)
			read -p "Enter the new name of the contact: " new_name
			echo ""
			sed -i "s/$edit_name/$new_name/" address_book.txt
			echo "Name changed successfully!\n"
			;;
		  2)
			read -p "Enter the new email address of the contact: " new_email
			echo ""
			sed -i "s/$edit_email/$new_email/" address_book.txt
			echo "Email address changed successfully!\n"
			;;
		  3)
			read -p "Enter the new phone number of the contact: " new_phone
			echo ""
			sed -i "s/$edit_phone/$new_phone/" address_book.txt
			echo "Phone number changed successfully!\n"
			;;
		esac
		;;
	  5)
		# Remove a contact from the address book.
		read -p "Enter the name of the contact you want to remove: " remove_name
		echo ""
		
		if grep -qi "$remove_name" address_book.txt; then
			sed -i "\#$remove_name#d" address_book.txt
			echo "Contact removed successfully!\n"
		else
			echo "Contact not found.\n"
		fi
		;;
	  6)
		# Quit the script.
		echo "Goodbye!\n"
		exit 0
		;;
	esac
done
