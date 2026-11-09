#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=salon --quiet --no-align --tuples-only -c"

# Display salon welcome message
echo -e "~~~~~ MY SALON ~~~~~\n"
echo -e "Welcome to My Salon, how can I help you?\n"

# Build the numbered service menu
MENU_RESULT=""

while IFS='|' read -r id name
do
    MENU_RESULT+="$id) $name\n"
done < <($PSQL "SELECT service_id, name FROM services ORDER BY service_id;")

# Display services
echo -e "$MENU_RESULT"

# Ask for a service ID
while true
do
    read SERVICE_ID_SELECTED

    # Validate the service ID
    if [[ "$SERVICE_ID_SELECTED" =~ ^[0-9]+$ ]] &&
       [[ -n $($PSQL "SELECT service_id FROM services WHERE service_id=$SERVICE_ID_SELECTED;") ]]
    then
        break
    else
        echo -e "\nI could not find that service. What would you like today?"
        echo -e "$MENU_RESULT"
    fi
done

# Get selected service name
SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED;")

# Ask for customer phone number
echo -e "\nWhat's your phone number?"
read CUSTOMER_PHONE

# Check whether the customer exists
CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE';")

# Register a new customer if they don't exist
if [[ -z "$CUSTOMER_ID" ]]
then
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME

    # Insert new customer
    $PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME');"

    # Retrieve the new customer ID
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE';")
else
    # Retrieve existing customer's name
    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE customer_id=$CUSTOMER_ID;")
fi

# Ask for appointment time
echo -e "\nWhat time would you like your $SERVICE_NAME, $CUSTOMER_NAME?"
read SERVICE_TIME

# Insert appointment into database
$PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME');"

# Display appointment confirmation
echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."