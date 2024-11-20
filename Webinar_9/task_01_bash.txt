#!/bin/bash

# Проверяем, что передан аргумент (имя файла для проверки)
if [ "$#" -ne 1 ]; then
    echo "Использование: $0 имя_файла"
    exit 1
fi

# Проверяем наличие файла
if [ -e "$1" ]; then
    echo "Файл '$1' существует."
else
    echo "Файл '$1' не найден."
fi

# Создаем список всех файлов в текущей директории
echo "Список файлов в текущей директории с указанием их типа:"
for file in *; do
    if [ -f "$file" ]; then
        type="Файл"
    elif [ -d "$file" ]; then
        type="Каталог"
    else
        type="Другой тип"
    fi
    echo "$file - $type"
done

# Используем цикл for для вывода информации о каждом файле
echo -e "\nИнформация о каждом файле:"
for file in *; do
    permissions=$(ls -l "$file" | awk '{print $1}')
    echo "$file - Права доступа: $permissions"
done