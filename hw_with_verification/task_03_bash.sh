#!/bin/bash

# Запрос ввода числа у пользователя
read -p "Введите число: " number

# Проверка, является ли число положительным, отрицательным или нулем
if [ "$number" -gt 0 ]; then
    echo "Число $number является положительным."
    
    # Подсчет от 1 до введенного числа
    count=1
    while [ "$count" -le "$number" ]; do
        echo "$count"
        ((count++))  # Увеличиваем счетчик на 1
    done

elif [ "$number" -lt 0 ]; then
    echo "Число $number является отрицательным."
else
    echo "Вы ввели ноль."
fi