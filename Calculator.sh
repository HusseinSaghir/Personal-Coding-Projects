echo "Welcome to the whole number calculator. Please enter the first number:"
read first_number

echo "Please enter the second number:"
read second_number

echo "Please enter the operator [a] Add, [m] multiply, [d] divide, [s] subtract:"
read operator


if ! [[ $first_number =~ ^[0-9]+$ ]] || ! [[ $second_number =~ ^[0-9]+$ ]]; then
    echo "You must enter two whole numbers"
    exit 1
fi


operator=$(echo "$operator" | tr '[:upper:]' '[:lower:]')


if [[ "$operator" != "a" && "$operator" != "s" && "$operator" != "m" && "$operator" != "d" ]]; then
    echo "You must enter the correct operator a or s or m or d"
    exit 1
fi


case "$operator" in
    "a")
        result=$((first_number + second_number))
        echo "The sum of the two numbers is $result"
        ;;
    "s")
        result=$((first_number - second_number))
        echo "The difference of the two numbers is $result"
        ;;
    "m")
        result=$((first_number * second_number))
        echo "The product of the two numbers is $result"
        ;;
    "d")
        if [ "$second_number" -eq 0 ]; then
            echo "You cannot divide by zero"
            exit 1
        fi
        quotient=$((first_number / second_number))
        remainder=$((first_number % second_number))
        echo "The quotient is $quotient with a whole number remainder of $remainder"
        ;;
esac