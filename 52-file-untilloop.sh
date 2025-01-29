
#!/bin/bash

# Example of an until loop waiting for a file to be created

echo "Waiting for 'myfile.txt' to be created..."

until [ -f "myfile.txt" ]
do
    echo "File not found. Checking again in 2 seconds..."
    sleep 2
done

echo "File 'myfile.txt' has been created!"