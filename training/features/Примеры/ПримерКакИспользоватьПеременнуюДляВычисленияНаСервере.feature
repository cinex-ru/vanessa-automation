﻿# language: ru

Функциональность: Демонстрация как использовать служебные переменные

Сценарий: Демонстрация как использовать служебные переменные

	* Первый вариант
		И я запоминаю содержимое файла "C:\Temp\Untitled-2.xml" в переменную "ИмяПеременной1"
		И Я запоминаю значение выражения 'СтрЗаменить($ИмяПеременной1$, """", """""")' в переменную "ИмяПеременной1"
		И Я запоминаю значение выражения 'СтрЗаменить($ИмяПеременной1$, Символы.ПС, Символы.ПС + "|")' в переменную "ИмяПеременной1"
		И я выполняю код встроенного языка на сервере
		"""bsl
			Сообщить("$ИмяПеременной1$");
		"""


	* Второй вариант
		И я запоминаю содержимое файла "C:\Temp\Untitled-2.xml" в переменную "ИмяПеременной2"
		И я выполняю код встроенного языка
		"""bsl
			Ванесса.Объект.ЗначениеНаСервере = Контекст.ИмяПеременной2;
		"""
		И я выполняю код встроенного языка на сервере
		"""bsl
			Сообщить(Объект.ЗначениеНаСервере);
		"""
		И я выполняю код встроенного языка
		"""bsl
			Контекст.ИмяПеременной2 = Ванесса.Объект.ЗначениеНаСервере;
		"""
