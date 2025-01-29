
#!/bin/bash

# Array of menu options
declare -a menu=("Option 1: Backup" "Option 2: Restart" "Option 3: Exit")

# Display menu options
echo "Select an option:"
select option in "${menu[@]}"
do
   case $REPLY in
      1)
         echo "You selected: Backup"
         # Add backup operation here
         ;;

      2)
         echo "You selected: Restart"
         # Add restart operation here
         ;;

      3)
         echo "Exiting..."
         break
         ;;

      *)
         echo "Invalid option. Please select a valid option from the menu."
         ;;
   esac
done
