# Address Book Script

Welcome to the Address Book Script! This simple Bash script allows you to manage a virtual address book stored in a text file. Whether you need to list all your contacts, search for a specific one, add new contacts, edit existing ones, or remove outdated entries, this script has you covered.

## Introduction

In today's digital age, maintaining a comprehensive list of contacts is essential for personal and professional communication. However, managing this information manually can be cumbersome and prone to errors. That's where the Address Book Script comes in handy.

With this script, you can seamlessly organize your contacts and perform various operations with just a few simple commands. Whether you're adding a new colleague to your professional network, updating a friend's contact information, or removing an outdated entry, the Address Book Script streamlines the process and ensures your address book stays up to date.

## Features

- **List all contacts:** Displays all contacts stored in the address book.
- **Search for a contact:** Searches for a specific contact by name.
- **Add a new contact:** Adds a new contact to the address book.
- **Edit a contact:** Modifies the details of an existing contact.
- **Remove a contact:** Deletes a contact from the address book.
- **Quit:** Exits the script.

## Requirements

To run the Address Book Script, you need:
- A Unix-like operating system with a Bash shell.
- The Sed command-line utility for editing text files.

## How to Use

1. Run the script by executing the `address_book.sh` file.
2. Follow the on-screen menu to perform various operations on the address book.
3. Enter the corresponding number for the desired operation and follow the prompts.

## Example Usage

```Bash
Welcome to the Address Book!
----------------------------
What would you like to do?

1. List all contacts.
2. Search for a contact.
3. Add a new contact.
4. Edit a contact.
5. Remove a contact.
6. Quit.

Enter your choice: 3

Enter the name of the new contact: aaa
Enter the email address of the new contact: aaa@example.com
Enter the phone number of the new contact: 0123456789

Contact added successfully!

----------------------------
What would you like to do?

1. List all contacts.
2. Search for a contact.
3. Add a new contact.
4. Edit a contact.
5. Remove a contact.
6. Quit.

Enter your choice: 1

aaa | aaa@example | 0123456789

----------------------------
What would you like to do?

1. List all contacts.
2. Search for a contact.
3. Add a new contact.
4. Edit a contact.
5. Remove a contact.
6. Quit.

Enter your choice: 6

Goodbye!

```