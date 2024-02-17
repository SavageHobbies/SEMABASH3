bash


Copy code
#!/bin/bash

# Set notes file path
notes_file="$HOME/notes.txt" 

# Check if notes file exists, create if not
if [ ! -f "$notes_file" ]; then
  touch "$notes_file"
fi

# Function to add a note
add_note() {

  # Display message
  echo "Enter your note to be saved:"
    
  # Read note input
  read note
    
  # Append note to file 
  echo "$(date +'%d %b %Y %H:%M') - $note" >> "$notes_file"
    
  echo "Note added successfully!"
}

# Main logic
while true; do

  # Display options  
  echo "1. Add new note"
  echo "2. View all notes"
  echo "3. Exit note taker"
  
  # Read choice  
  read choice

  # Take action as per choice  
  case $choice in
    1) add_note;;
    2) cat "$notes_file";; 
    3) break;;
    *) echo "Invalid choice";;
  esac
  
  # Extra newline  
  echo ""
  
done

echo "Exiting note taker..."
To use it, simply save this as a note-taker.sh script, make it executable with chmod +x note-taker.sh and then run it with ./note-taker.sh.

It will allow you to add timestamped notes, view all notes, and keeps them persisted in a notes.txt file in your home folder.