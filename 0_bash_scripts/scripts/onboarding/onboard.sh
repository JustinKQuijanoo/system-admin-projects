#!/bin/bash

echo ""

domain="hydrohomie.org"

read -p "Enter the First Name: " f_name

read -p "Enter the Last Name: " l_name

email_address="$f_name.$l_name@$domain" 

echo "First Name: $f_name"
echo "Last Name: $l_name"
echo "Email Address: $email_address"

echo "Domain: $domain"


