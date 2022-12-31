# Set the URL of the file
url="https://raw.githubusercontent.com/mayaxcn/china-ip-list/master/chnroute.txt"

# Download the file and store the contents in a variable
ip_list=$(curl -s "$url")

# Split the data into separate lines
ip_list=$(echo "$ip_list" | tr ' ' '\n')

# Convert the list of IP addresses into the desired format
payload=$(echo "$ip_list" | awk '{print "  - '\''" $1 "'\''"}')

# Save the result to a file
echo "payload:" > chnroute.yml
echo "$payload" >> chnroute.yml
