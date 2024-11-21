#!/bin/bash

# Указываем директорию, файлы которой будут скопированы
source_dir="../../source_dir"

# Создаем директорию для сохранения резервных копий
backup_dir="/../../backup_directory"
mkdir -p $backup_dir

# Создаем имя файла для логов операций
log_file="/../../backup.log"

# Получаем текущую дату
current_date=$(date +"%Y-%m-%d")

# Копируем файлы с добавлением текущей даты к именам
cp -r $source_dir/* $backup_dir/backup_$current_date

# Подсчитываем количество скопированных файлов
files_copied=$(find $backup_dir -type f | wc -l)

# Записываем информацию в лог файл
echo "$(date) - Backup completed. $files_copied files copied." >> $log_file

# Выводим сообщение об успешном завершении
echo "Backup completed. $files_copied files copied."