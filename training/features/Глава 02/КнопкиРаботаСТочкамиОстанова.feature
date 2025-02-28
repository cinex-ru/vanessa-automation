﻿# language: ru

@lessons

Функционал: Интерактивная справка. Точки останова.

Сценарий: Точки останова

	* Привет! В этом уроке я расскажу тебе про то, как работать с точками останова. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		И я скрываю часть кнопок командной панели редактора в режиме обучения

	* Загрузим тестовый пример.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features\Примеры\ПримерТочкиОстанова.feature"

	* Чтобы установить точку останова нужно использовать эту команду. Или горячую клавишу эф девять.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorSetBreakPoint" "Установить/убрать точку останова"

	* При этом точка останова будет установлена в текущей строке.
		И я устанавливаю текущую строку редактора режим обучения 10
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorSetBreakPoint' UI Automation

	* В данном случае в строке десять была установлена точка останова
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 10 строку 'В строке установлена точка останова' подсценарий
		
	* Теперь если выполнить сценарий, то его выполнение прервётся на строке десять.	
		И Я запускаю сценарий VA в режиме обучения и жду окончания выполнения

	* При этом были выполнены только эти строки сценария
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 9 строку 'Выполнены только эти строки' подсценарий

	* Повторное выполнение данной команды снимет точку останова, если она была установлена ранее.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorSetBreakPoint" "Установить/убрать точку останова"

	* Продолжим. Иногда нужно посмотреть список установленых точек останова.
	* Для этого нужно нажать на эту кнопку.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorПоказатьСписокТочекОстанова" "Список точек останова"
	* Тогда появится окно, содержащее данный список.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПоказатьСписокТочекОстанова'
		И Пауза 1
		И Я делаю подсветку элемента VA с типом "Table" "Спсисок точек останова"

	* Из этого окна можно сделать переход к выбранной точке останова.
		Если существует элемент UI Automation "ЭтотСеанс" с именем "Перейти" и типом "Button" Тогда
			И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
				| 'Имя/ID'  | 'Тип'    |
				| 'Перейти' | 'Button' |

				| 'Имя'  | 'Значение'                 |
				| 'text' | 'Переход к точке останова' |
			И Пауза 4
			И я делаю клик по элементу формы 'ЭтотСеанс' 'Перейти' 'Button' UI Automation
			И Пауза 1
		Иначе		
			И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
				| 'Имя/ID'     | 'Тип'    |
				| 'Go to line' | 'Button' |

				| 'Имя'  | 'Значение'                 |
				| 'text' | 'Переход к точке останова' |

			И Пауза 4
			И я делаю клик по элементу формы 'ЭтотСеанс' 'Go to line' 'Button' UI Automation
			И Пауза 1
		
	* Также есть возможность удалить все точки останова одним разом, нажав на эту кнопку.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorRemoveBreakPoints" "Удалить все точки останова"
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorRemoveBreakPoints'
		

	* На этом всё, переходи к следующему уроку интерактивной справки.



