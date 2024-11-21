#!/bin/bash

# Чтение данных из файла input.txt
data=$(cat input.txt)

# Подсчет строк в данных и запись результата в файл output.txt
echo "$data" | wc -l > output.txt

# Перенаправление ошибок выполнения команды ls для несуществующего файла в файл error.log
ls non_existent_file 2> error.log