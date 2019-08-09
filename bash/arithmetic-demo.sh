#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number
#asking user input
read -p "Please enter first number: " firstnumber
read -p "Please enetr second number: " secondnumber
#finding sum
sum=$((firstnumber + secondnumber))
#subtraction
subtract=$((firstnumber - secondnumber))
#division
dividend=$((firstnumber / secondnumber))
#multiplication
multiply=$((firstnumber * secondnumber))
#modulus
modulus=$((firstnumber % secondnumber))
#finding the power
power=$((firstnumber**secondnumber))


fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnumber/$secondnumber}")
#required result
cat <<EOF

$firstnumber plus $secondnumber is $sum
$firstnumber subtracting  $secondnumber is $subtract
$firstnumber divided by $secondnumber is $dividend with remainder $modulus.
  - More precisely, it is $fpdividend
$firstnumber multiply by $secondnumber is $multiply
The $firstnumber  raised to the power of the $secondnumber  is $power

EOF
