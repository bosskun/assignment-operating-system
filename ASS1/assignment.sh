#!/bin/sh

red=$'\e[1;31m'
grn=$'\e[1;32m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'
redbg=$'\e[101m'
underline=$'\e[4m'
blink=$'\e[5m'
endblink=$'\e[25m'
invert=$'\e[7m'
endinvert=$'\e[27m'
lightred=$'\e[101m'
cynbg=$'\e[46m'
greenbg=$'\e[42m'
bluebg=$'\e[44m'
dark=$'\e[100m'
yellow=$'\e[43m'
magbg=$'\e[45m'

dateTimes() {
    DAYNAME=$(date +"%a")
    DAY=$(date +"%d")
    MONTH=$(date +"%b")
    YEAR=$(echo `date +%Y`)
    CURYEAR=$((`date +%Y` + 543 ))
    echo ""
    echo ""
    echo   "    _______ ____  _____     __     __ "
    echo   "    |__   _/ __ \|  __ \   /\\ \   / / "
    echo   "      | | | |  | | |  | | /  \\ \_/ / "
    echo   "      | | | |  | | |  | |/ /\ \\   / " 
    echo   "      | | | |__| | |__| / ____ \| | "  
    echo   "      |_|  \____/|_____/_/    \_|_| "  
                                    
    echo   "     ******************************"
    echo   "     ******************************"
    echo   "     ** Today is ${DAYNAME} ${DAY} ${MONTH} ${YEAR} **"
    echo   "     ** Today is ${DAYNAME} ${DAY} ${MONTH} ${CURYEAR} **"
    echo   "     ******************************"
    echo   "     ******************************"
    echo ""
    read -p "Press [Enter] key to continue"
    clear
}

moveUpFiles() {
    cd ~
    echo "Input path to move file one Level if your want exit please x below"
    read dir1
    if [ $dir1 == "x" ]
    then
        echo "Exit program"
        read -p "Press [Enter] key to continue"
        clear
    else
        mv -v $dir1/* $dir1/..
        echo $redbg"Successful to move up file one level!"$end
        read -p "Press [Enter] key to continue"
        clear
    fi
}

gameRandomNumber() {
    echo $blu"This is Number Guessing Game !"$end
    echo "**************************************"
    echo "choose your number $red"$underline"below here"$end
    randonNum=$(( $RANDOM % 100 + 1 ))
    while True :
    do
        read inputNumber

        if [ $inputNumber -eq $randonNum ]
        then
            clear
             echo   "   __________    _  ____________  ___  ___________"
             echo   "  / ____/ __ \/ | /  / ____/ __ \/   |/_  __/ ___/"
             echo   " / /   / / / /  |/ / / __/ /_/ / / | | / /  \__ " 
             echo   "/ /___/ /_/ / /|  / /_/ / _, _/ ___  |/ /  ___/ /" 
             echo   "\____/\____/_/ |_/\____/_/ |_/_/  |_ /_/  /____/"  
            read -p "Press [Enter] key to continue"
            clear
            break;
        elif [ $inputNumber -gt $randonNum ]
        then
            echo $cynbg"Hint"$end ": Your number is "$lightred"greter than"$end "random number"
        elif [ $inputNumber -lt $randonNum ]
        then
            echo $yellow"Hint"$end ": Your number is "$magbg"less than"$end "random number"
        else
            echo $lightred"Bad syntax"$end
        fi
    done
}

menuShow() {
    echo " *------------------------------------* "
    echo " |          $blink$dark Menu Description $end$endblink        | "
    echo " |------------------------------------| "
    echo " |   1.   Show Current Date           | "
    echo " |   2.   Move file one level         | "
    echo " |   3.   Number Guessing Game        | "
    echo " |   4.   $redbg Exit $end                      | " 
    echo " *------------------------------------* "

}

clear
echo ""
echo ""
echo $bluebg" Welcome To Bash (Shell Script) Group 9 "$end
echo ""
menuShow
echo ""
while :
do
    echo $mag"Input your choice below here: " $end
    read case_input
    case $case_input in
    1)
        clear
        dateTimes
        menuShow
        ;;
    2)
        clear
        moveUpFiles
        menuShow
        ;;
    3)
        clear
        gameRandomNumber
        menuShow
        ;;    
    4)
        break
    ;;
    *)
        echo "Please Select menu again"
        ;;
        esac
    done
clear
echo "See you"

