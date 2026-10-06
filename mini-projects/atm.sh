#!/bin/bash

balance=1000

# Functions 

show_menu() {
	echo "===================="
        echo "Simple ATM"
        echo "Please Insert Your Card."
        echo "===================="
	echo "1.Check balance"
	echo "2. Deposit Money"
	echo "3. Withdraw Money"
        echo "4. Exit"

}

display_balance() {
	echo "Your current balance is: $balance"
}

check_balance() {
	display_balance
}

deposit() {
	echo "Enter your amount"
	read amount
	if [ $amount -gt 0 ]; then
		balance=$((balance + amount))
		echo "Transaction Successful"
                display_balance
	else
		echo "Enter valid amount"
                fi
}

withdraw() {
	echo "Enter withdrawal amount:"
	read amount
                if [ $amount -le $balance ]; then
                        balance=$((balance - amount))
                        echo "Transaction Successful!"
                        display_balance
                else
                echo "Insufficient balance"
                fi
}

exit_atm() {
	echo "Exit"
	running=0
}

running=1
while [ $running -eq 1 ]
do
    show_menu
    echo "Enter your choice:"
    read choice


case $choice in
	1) check_balance ;;
	2) deposit ;;
	3) withdraw ;;
	4) exit_atm ;;
	*) echo "Invalid Choice!"
	   ;;
esac

done

echo "========================================"
echo "Thanks for using the simple ATM"
echo "Have a nice day!"
echo "========================================"
     
