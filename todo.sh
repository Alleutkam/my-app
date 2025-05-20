#!/bin/bash

DATA_FILE="/data/todo_list.txt"

if [ ! -f "$DATA_FILE" ]; then
    echo "Ошибка: Файл с данными не найден!" >&2
    exit 1
fi


add_task() {
    echo "$1" >> "$DATA_FILE"
    echo "Добавлена задача: $1"
}

list_tasks() {
    if [ ! -s "$DATA_FILE" ]; then
        echo "Не найдено ни одного задания."
        return
    fi
    
    echo "Менеджер списка дел:"
    cat -n "$DATA_FILE"
}

delete_task() {
    if [ ! -s "$DATA_FILE" ]; then
        echo "Нет задач для удаления."
        return
    fi
    
    list_tasks
    
    read -p "Введите номер задачи для удаления: " task_num
    if [[ ! "$task_num" =~ ^[0-9]+$ ]]; then
        echo "Неверный номер задачи."
        return
    fi
    
    sed -i "${task_num}d" "$DATA_FILE"
    echo "Задача $task_num удалена."
}


while true; do
    echo
    echo "Менеджер списка дел"
    echo "1. Добавить задачу"
    echo "2. Перечислите задачи"
    echo "3. Удалить задачу"
    echo "4. Выход"
    read -p "Выберите нужный вариант (1-4): " choice
    
    case $choice in
        1)
            read -p "Введите описание задачи: " task
            add_task "$task"
            ;;
        2)
            list_tasks
            ;;
        3)
            delete_task
            ;;
        4)
            echo "До свидания!"
            exit 0
            ;;
        *)
            echo "Недопустимый параметр. Пожалуйста, попробуйте снова."
            ;;
    esac
done
