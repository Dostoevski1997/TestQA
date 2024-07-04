﻿#language: ru

@tree

Функционал: Создание документа Поступления товаров2

Как Менеджер по закупкам я хочу
создание документа поступления товаров
чтобы поставаить товар на учет   

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий
// создание 
Сценарий: создание документа поступления товаров2
И В командном интерфейсе я выбираю "Закупки" "Поступления товаров"
Тогда открылось окно "Поступления товаров"
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно "Поступление товара (создание)"
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
И из выпадающего списка с именем 'Склад' я выбираю точное значение "Малый"
И из выпадающего списка с именем 'Валюта' я выбираю точное значение "Рубли"
И я нажимаю кнопку выбора у поля с именем 'Поставщик'
Тогда открылось окно "Контрагенты"
И я нажимаю на кнопку с именем 'ФормаСписок'
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000012" | "Мосхлеб ОАО"  |
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Поступление товара (создание) *"
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
Тогда открылось окно "Товары"
И я нажимаю на кнопку с именем 'ФормаСписок'
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000032" | "Торт "        |
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Поступление товара (создание) *"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "5,00"
И я перехожу к следующему реквизиту
И в таблице 'Товары' я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна "Поступление товара (создание) *" в течение 20 секунд