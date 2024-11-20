#!/bin/bash

# Функция для добавления префикса к строке
greet() {
    local name="$1"
    echo "Hello, $name"
}

# Функция для вычисления суммы двух чисел
sum() {
    local num1="$1"
    local num2="$2"
    echo $((num1 + num2))  # Возвращаем сумму
}

read -p "Введите ваше имя: " name

# Вызов функции greet
greeting=$(greet "$name")
echo "$greeting"

read -p "Введите первое число: " num1
read -p "Введите второе число: " num2
# Вызов функции sum
result=$(sum "$num1" "$num2")
echo "Сумма $num1 и $num2 = $result"