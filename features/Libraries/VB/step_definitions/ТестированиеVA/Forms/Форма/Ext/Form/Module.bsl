﻿//начало текста модуля
&НаКлиенте
Перем Ванесса;

&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

// Делает отключение модуля
&НаКлиенте
Функция ОтключениеМодуля() Экспорт

	Ванесса = Неопределено;
	Контекст = Неопределено;
	КонтекстСохраняемый = Неопределено;

КонецФункции

&НаКлиенте
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюМетодШагСТекстомИОнНеВызываетИсключение(ТабПарам)","ЯВыполняюМетодШагСТекстомИОнНеВызываетИсключение","И я выполняю метод шаг с текстом и он не вызывает исключение","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюМетодШагСТекстомИОнВызываетИсключение(ТабПарам)","ЯВыполняюМетодШагСТекстомИОнВызываетИсключение","И я выполняю метод шаг с текстом и он вызывает исключение","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПомещаюВБуферОбменаСтроку(Парам01)","ЯПомещаюВБуферОбменаСтроку","И я помещаю в буфер обмена строку 'Нужная строка'","Помещает строку в буфер обмена.","Прочее.Буфер обмена");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВФайлеИнструкцииНетСтроки(Парам01,Парам02)","ВФайлеИнструкцииНетСтроки","И в Файле инструкции ""Instr_ФичаДляПроверкиОтчетаHTML.HTML"" нет строки  ""я выполняю простой шаг контекста""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВФайлеИнструкцииЕстьСтрока(Парам01,Парам02)","ВФайлеИнструкцииЕстьСтрока","И в Файле инструкции ""Instr_ФичаДляПроверкиОтчетаHTML.HTML"" есть строка ""Другой текст первого шага""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВФормеVAСинонимЭлементовНеравенЗаголовкуЭлементов()","ВФормеVAСинонимЭлементовНеравенЗаголовкуЭлементов","И в форме VA синоним элементов неравен заголовку элементов","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВФормеVAВЗаголовкеЭлементовНетРусскихБукв()","ВФормеVAВЗаголовкеЭлементовНетРусскихБукв","И в форме VA в заголовке элементов нет русских букв","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯИспользуюСлужебноеУсловиеСТаблицейТогда(ТабПарам)","ЯИспользуюСлужебноеУсловиеСТаблицейТогда","И я использую служебное условие с таблицей Тогда","","","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюПростойШаг()","ЯВыполняюПростойШаг","Когда я выполняю простой шаг");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюЕщёПростойШаг()","ЯВыполняюЕщёПростойШаг","И я выполняю ещё простой шаг");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапускаюVanessaAutomationДляТестаВыводаТекстаВКонсоль(Парам01, Парам02, Парам03)","ЯЗапускаюVanessaAutomationДляТестаВыводаТекстаВКонсоль","И я запускаю Vanessa Automation для теста вывода текста в консоль ""ИмяФайлаФлага"" ""ИмяФайлаВывода"" ""ИмяJson""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ШагVAПроверяющийТипПараметра(Парам01,Парам02)","ШагVAПроверяющийТипПараметра","И шаг VA проверяющий тип параметра ""1"" ""Строка""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ШагVAПроверяющийТипПараметровВТаблице(ТабПарам1,ТабПарам2,ТабПарам3)","ШагVAПроверяющийТипПараметровВТаблице","И шаг VA проверяющий тип параметров в таблице","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ШагVAПринимающийТриМногострочныеСтроки(Парам01,Парам02,Парам03)","ШагVAПринимающийТриМногострочныеСтроки","И шаг VA принимающий три многострочные строки","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ШагVAСПараметромСтрокаИТаблицей(Парам01,ТабПарам)","ШагVAСПараметромСтрокаИТаблицей","И шаг VA с параметром строка ""парам01"" и таблицей","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ИсключениеВАсинхронномШагеVA()","ИсключениеВАсинхронномШагеVA","И исключениев асинхронном шаге VA","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВКаталогеАллюрПоявилсяФайлXml(Парам01)","ВКаталогеАллюрПоявилсяФайлXml","И в каталоге аллюр появился 1 файл xml","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВКаталогеАллюрПоявилсяФайлjson(Парам01)","ВКаталогеАллюрПоявилсяФайлjson","И в каталоге аллюр появился 1 файл json","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВКаталогеФайловОшибокВJsonФорматеПоявилсяФайлJson(Парам01)","ВКаталогеФайловОшибокВJsonФорматеПоявилсяФайлJson","И в каталоге файлов ошибок в json формате появился 1 файл json","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВКаталогеСкриншотовПоявилосьФайла(Парам01)","ВКаталогеСкриншотовПоявилосьФайла","И в каталоге скриншотов появилось 2 файла","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВПолеКаталогОтчетаJUnitЯУказываюПутьКОтносительномуКаталогу(Парам01)","ВПолеКаталогОтчетаJUnitЯУказываюПутьКОтносительномуКаталогу","И     в поле каталог отчета jUnit я указываю путь к относительному каталогу ""tools\jUnit""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВКаталогеJUnitПоявилсяФайлXml(Парам01)","ВКаталогеJUnitПоявилсяФайлXml","И в каталоге jUnit появился 1 файл xml");

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУстанавливаюФлагНастройкиVanessaAutomation(Парам01)","ЯУстанавливаюФлагНастройкиVanessaAutomation","И я устанавливаю флаг настройки Vanessa Automation ""ИмяФлага""","Устанавливает флаг настройки Vanessa Automation.","Прочее.Настройки Vanessa Automation");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСнимаюФлагНастройкиVanessaAutomation(Парам01)","ЯСнимаюФлагНастройкиVanessaAutomation","И я снимаю флаг настройки Vanessa Automation ""ИмяФлага""","Снимает флаг настройки Vanessa Automation.","Прочее.Настройки Vanessa Automation");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУстанавливаюНастройкуVanessaAutomation(Парам01,Парам02)","ЯУстанавливаюНастройкуVanessaAutomation","И я устанавливаю настройку Vanessa Automation ""ИмяНастройки"" ""Значение""","Устанавливает настройку Vanessa Automation в нужное значение. Параметр шага должен быть типа ""Строка"" или ""Число"".","Прочее.Настройки Vanessa Automation");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюЗначениеНастройкиVanessaAutomationВ(Парам01, Парам02)","ЯЗапоминаюЗначениеНастройкиVanessaAutomationВ","И я запоминаю значение настройки Vanessa Automation ""ИмяНастройки"" в ""ИмяПеременной""","Сохраняет значение настройки Vanessa Automation в переменную.","Прочее.Настройки Vanessa Automation");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПроверяюЧтоНетКонфликтовИдентификаторовЭлементовВОсновнойФорме()","ЯПроверяюЧтоНетКонфликтовИдентификаторовЭлементовВОсновнойФорме","И я проверяю, что нет конфликтов идентификаторов элементов в основной форме","","");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ДелаюСообщениеПоПереданномуПараметруДляТестаVanessaAutomation(Парам01)","ДелаюСообщениеПоПереданномуПараметруДляТестаVanessaAutomation","И делаю сообщение по переданному параметру для теста Vanessa Automation ""Парам""","","");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюЗаголовокЭлементаФормыVanessaAutomationСИменемВПеременную(Парам01,Парам02)","ЯЗапоминаюЗаголовокЭлементаФормыVanessaAutomationСИменемВПеременную","И я запоминаю заголовок элемента формы Vanessa Automation с именем ""ИмяЭлемента"" в переменную ""ИмяПеременной""","","");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВывожуТаблицуGherkinВОкноСообщенийПользователя(ТабПарам)","ЯВывожуТаблицуGherkinВОкноСообщенийПользователя","И я вывожу таблицу Gherkin в окно сообщений пользователя","","");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗагружаюФичаФайлыВVAВРежимеОбучения(Парам01)","ЯЗагружаюФичаФайлыВVAВРежимеОбучения","И я загружаю фича файлы в VA в режиме обучения ""$КаталогИнструментов$\features\Core\Allure\Issue-34-ОтчетAllure.feature""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗагружаюФайлМаркдаунВVAВРежимеОбучения(Парам01)","ЯЗагружаюФайлМаркдаунВVAВРежимеОбучения","И я загружаю файл маркдаун в VA в режиме обучения ""$КаталогИнструментов$\docs\index.md""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУстанавливаюОпциюVAВРежимеОбучения(Парам01,Парам02)","ЯУстанавливаюОпциюVAВРежимеОбучения","И я устанавливаю опцию VA в режиме обучения ""ПроверкаСинтаксисаВРедакторе"" ""Ложь""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯОткрываюФайлНастроекVAВРежимеОбучения()","ЯОткрываюФайлНастроекVAВРежимеОбучения","И я открываю файл настроек VA в режиме обучения ""$КаталогИнструментов$\features\Core\ErrorDetails""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯОткрываюФайлСравнениеНастроекVAВРежимеОбучения()","ЯОткрываюФайлСравнениеНастроекVAВРежимеОбучения","И я открываю файл сравнение настроек VA в режиме обучения","","");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯОтключаюПоказСтрокПодсценариевВРедактореVAВРежимеОбучения()","ЯОтключаюПоказСтрокПодсценариевВРедактореVAВРежимеОбучения","И я отключаю показ строк подсценариев в редакторе VA в режиме обучения","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"СлужебноеУсловиеВКотороеПередаётсяТаблицаВыполненоТогда(ТабПарам)","СлужебноеУсловиеВКотороеПередаётсяТаблицаВыполненоТогда","Если служебное условие в которое передаётся таблица выполнено Тогда","","","Условие");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУстанавливаюВТаблицеVAВРежимеОбученияВКолонке(Парам01,Парам02,Парам03)","ЯУстанавливаюВТаблицеVAВРежимеОбученияВКолонке","И я устанавливаю в таблице VA ""ИмяТаблицы"" в режиме обучения в колонке ""ИмяКолонки"" ""Значение""","","");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСкрываюЧастьКнопокКоманднойПанелиРедактораВРежимеОбучения()","ЯСкрываюЧастьКнопокКоманднойПанелиРедактораВРежимеОбучения","И я скрываю часть кнопок командной панели редактора в режиме обучения","","");
	
	Возврат ВсеТесты;
КонецФункции

&НаКлиенте
Функция ПередНачаломСценария() Экспорт
КонецФункции

&НаКлиенте
Функция ПередОкончаниемСценария() Экспорт
	//безусловное закрытие формы если она осталась
	Попытка
	    ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
		ОткрытаяФормаVanessaBehavoir.Закрыть();
	Исключение
		
	КонецПопытки;
КонецФункции




&НаКлиенте
//И я выполняю метод шаг с текстом и он не вызывает исключение
//@ЯВыполняюМетодШагСТекстомИОнНеВызываетИсключение(ТабПарам)
Функция ЯВыполняюМетодШагСТекстомИОнНеВызываетИсключение(ТабПарам) Экспорт
	Стр = "";
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Стр = Стр + СтрокаТабПарам.Кол1 + Символы.ПС;
	КонецЦикла;	 
	
	Попытка
		Ванесса.Шаг(Стр);
	Исключение
		ТекстСообщения = "При выполнении Ванесса.Шаг() было вызвано исключение, хотя его не должно было быть. %1 %2";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Символы.ПС + Стр);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",Символы.ПС + ОписаниеОшибки());
		ВызватьИсключение ТекстСообщения;
	КонецПопытки;
КонецФункции

&НаКлиенте
//И я выполняю метод шаг с текстом и он вызывает исключение
//@ЯВыполняюМетодШагСТекстомИОнВызываетИсключение(ТабПарам)
Функция ЯВыполняюМетодШагСТекстомИОнВызываетИсключение(ТабПарам) Экспорт
	Стр = "";
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Стр = Стр + СтрокаТабПарам.Кол1 + Символы.ПС;
	КонецЦикла;	 
	
	БылоИсключение = Ложь;
	Попытка
		Ванесса.Шаг(Стр);
	Исключение
		БылоИсключение = Истина;
	КонецПопытки;
	
	Если НЕ БылоИсключение Тогда
		ТекстСообщения = "При выполнении Ванесса.Шаг() было вызвано исключение, хотя его не должно было быть. %1 %2";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Символы.ПС + Стр);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",Символы.ПС + ОписаниеОшибки());
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецФункции

&НаКлиенте
//И я помещаю в буфер обмена строку 'Вывод произвольной информации в лог с помощью шага'
//@ЯПомещаюВБуферОбменаСтроку(Парам01)
Функция ЯПомещаюВБуферОбменаСтроку(Знач Стр) Экспорт
	Стр = Ванесса.ПолучитьКорректныйТекстДляВставкиВПоле(Стр);
	
	Если Ванесса.Объект.ИспользоватьКомпонентуVanessaExt Тогда
		Ванесса.ПоместитьВБуферОбменаVA(Стр);
		Возврат Неопределено;
	КонецЕсли;	 
	
	ИмяВременногоФайла = ПолучитьИмяВременногоФайла("txt");
	ЗТ = Новый ЗаписьТекста(ИмяВременногоФайла,"UTF-8",,Истина); 
	ЗТ.Записать(Стр); 
	ЗТ.Закрыть();
	 
	СтрокаКоманды = "clip < ""%1""";
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%1",ИмяВременногоФайла);
	Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(СтрокаКоманды);
КонецФункции

&НаКлиенте
//И в Файле инструкции "Instr_ФичаДляПроверкиОтчетаHTML.HTML" нет строки "я выполняю простой шаг контекста"
//@ВФайлеИнструкцииНетСтроки(Парам01,Парам02)
Функция ВФайлеИнструкцииНетСтроки(ИмяФайла,СтрокаПоиска) Экспорт
	Если Контекст.Свойство("КаталогHTML") Тогда
		ИмяФайла = Контекст.КаталогHTML + "\" + ИмяФайла;
	ИначеЕсли Контекст.Свойство("КаталогMarkdown") Тогда	
		ИмяФайла = Контекст.КаталогMarkdown + "\" + ИмяФайла;
	Иначе
		ВызватьИсключение "Не получилось определить файл для проверки.";
	КонецЕсли;	 
	
	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяФайла,"UTF-8");
	
	Пока Истина Цикл
		Стр = Текст.ПрочитатьСтроку();
		Если Стр = Неопределено Тогда
			Прервать;
		КонецЕсли;	 
		
		Поз = Найти(Стр,СтрокаПоиска);
		Если Поз > 0 Тогда
			ТекстСообщения = "В файле <%1> найдена строка <%2>";
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяФайла);
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",СтрокаПоиска);
			ВызватьИсключение ТекстСообщения;
		КонецЕсли;	 
	КонецЦикла;	
	
	Текст.Закрыть();
	
КонецФункции

&НаКлиенте
//И в Файле инструкции "Instr_ФичаДляПроверкиОтчетаHTML.HTML" есть строка "Другой текст первого шага"
//@ВФайлеИнструкцииЕстьСтрока(Парам01,Парам02)
Функция ВФайлеИнструкцииЕстьСтрока(ИмяФайла,СтрокаПоиска) Экспорт
	Если Контекст.Свойство("КаталогHTML") Тогда
		ИмяФайла = Контекст.КаталогHTML + "\" + ИмяФайла;
	ИначеЕсли Контекст.Свойство("КаталогMarkdown") Тогда	
		ИмяФайла = Контекст.КаталогMarkdown + "\" + ИмяФайла;
	Иначе
		ВызватьИсключение "Не получилось определить файл для проверки.";
	КонецЕсли;	 
	
	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяФайла,"UTF-8");
	
	Стр = Текст.Прочитать();
	Поз = Найти(Стр,СтрокаПоиска);
	Если Поз = 0 Тогда
		ТекстСообщения = "В файле <%1> не найдена строка <%2>";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяФайла);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",СтрокаПоиска);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Текст.Закрыть();
КонецФункции

&НаКлиенте
//И в текущей форме синоним элементов неравен заголовку элементов
//@ВФормеVAСинонимЭлементовНеравенЗаголовкуЭлементов()
Функция ВФормеVAСинонимЭлементовНеравенЗаголовкуЭлементов() Экспорт
	СтрокаОшибки = "";
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	ЭлементыОкна = АктивноеОкно.НайтиОбъекты();
	Для Каждого Элем Из ЭлементыОкна Цикл
		Если ТипЗнч(Элем) = Тип("ТестируемаяФорма") Тогда
			Продолжить;
		КонецЕсли;	 
		
		Если Элем.Имя = "Перезагрузить" Тогда
			Продолжить;
		ИначеЕсли Элем.Имя = "Статистика" Тогда
			Продолжить;
		ИначеЕсли Прав(Элем.Имя, 18) = "СостояниеПросмотра" Тогда
			Продолжить;
		ИначеЕсли Прав(Элем.Имя, 12) = "СтрокаПоиска" Тогда
			Продолжить;
		КонецЕсли;	 
		
		Если Элем.Имя = Элем.ТекстЗаголовка Тогда
			СтрокаОшибки = СтрокаОшибки + "Имя=" + Элем.Имя + "; Заголовок=" + Элем.ТекстЗаголовка + "; Тип=" + ТипЗнч(Элем) + Символы.ПС;
		КонецЕсли;	 
	КонецЦикла;	 
	
	Если НЕ ПустаяСтрока(СтрокаОшибки) Тогда
		ТекстОшибки = Ванесса.Локализовать("Найдены проблемы перевода.");
		ВызватьИсключение ТекстОшибки + Символы.ПС + СтрокаОшибки;
	КонецЕсли;	 
	
КонецФункции

&НаКлиенте
Функция ВСтрокеЕстьРусскиеБуквы(Знач Стр)
	Стр = НРег(Стр);
	
	Если Найти(Стр, "а") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "б") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "в") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "г") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "д") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "е") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ё") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ж") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "з") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "и") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "й") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "к") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "л") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "м") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "н") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "о") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "п") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "р") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "с") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "т") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "у") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ф") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "х") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ц") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ч") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ш") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "щ") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ъ") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ы") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ь") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "э") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "ю") > 0 Тогда
		Возврат Истина;
	ИначеЕсли Найти(Стр, "я") > 0 Тогда
		Возврат Истина;
	КонецЕсли;	 
	
	Возврат Ложь;
КонецФункции	 

&НаКлиенте
//И в форме VA в заголовке элементов нет русских букв
//@ВФормеVAВЗаголовкеЭлементовНетРусскихБукв()
Функция ВФормеVAВЗаголовкеЭлементовНетРусскихБукв() Экспорт
	СтрокаОшибки = "";
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	ЭлементыОкна = АктивноеОкно.НайтиОбъекты();
	Для Каждого Элем Из ЭлементыОкна Цикл
		Если ТипЗнч(Элем) = Тип("ТестируемаяФорма") Тогда
			Продолжить;
		КонецЕсли;	 
		
		Если Прав(Элем.Имя, 18) = "СостояниеПросмотра" Тогда
			Продолжить;
		ИначеЕсли Элем.Имя = "Статистика" Тогда
			Продолжить;
		ИначеЕсли Прав(Элем.Имя, 12) = "СтрокаПоиска" Тогда
			Продолжить;
		ИначеЕсли Найти(Элем.Имя, "МенюЗагрузитьФичи") > 0 Тогда
			Продолжить;
		КонецЕсли;	 
		
		Если ВСтрокеЕстьРусскиеБуквы(Элем.ТекстЗаголовка) Тогда
			СтрокаОшибки = СтрокаОшибки + "Имя=" + Элем.Имя + "; Заголовок=" + Элем.ТекстЗаголовка + "; Тип=" + ТипЗнч(Элем) + Символы.ПС;
		КонецЕсли;	 
		
	КонецЦикла;	 
	
	Если НЕ ПустаяСтрока(СтрокаОшибки) Тогда
		ТекстОшибки = Ванесса.Локализовать("Найдены проблемы перевода.");
		ВызватьИсключение ТекстОшибки + Символы.ПС + СтрокаОшибки;
	КонецЕсли;	 
	
КонецФункции

&НаКлиенте
//И я использую служебное условие с таблицей Тогда
//@ЯИспользуюСлужебноеУсловиеСТаблицейТогда(ТабПарам)
Функция ЯИспользуюСлужебноеУсловиеСТаблицейТогда(ТабПарам) Экспорт
	Для Каждого Элем Из ТабПарам Цикл
		Сообщить(Элем.Кол1);
	КонецЦикла;	 
КонецФункции

&НаКлиенте
//Когда я выполняю простой шаг
//@ЯВыполняюПростойШаг()
Функция ЯВыполняюПростойШаг() Экспорт
	
КонецФункции

&НаКлиенте
//И я выполняю ещё простой шаг
//@ЯВыполняюЕщёПростойШаг()
Функция ЯВыполняюЕщёПростойШаг() Экспорт
	
КонецФункции

&НаКлиенте
//И я запускаю Vanessa Automation для теста вывода текста в консоль
//@ЯЗапускаюVanessaAutomationДляТестаВыводаТекстаВКонсоль()
Функция ЯЗапускаюVanessaAutomationДляТестаВыводаТекстаВКонсоль(ИмяФайлаФлага, ИмяФайлаВывода, ИмяJson) Экспорт
	ТекстКоманды = """%КаталогПрограммы"" /IBConnectionString ""%СтрокаСоединения"" /TestManager /N""%Пользователь"" /Execute ""%ИмяEpf"" /CStartFeaturePlayer;DisableUserSettingsLoader;NoLoadConfig;VBParams=%VBParams";
	ТекстКоманды = СтрЗаменить(ТекстКоманды, "%КаталогПрограммы", КаталогПрограммы() + "1cv8c");
	ТекстКоманды = СтрЗаменить(ТекстКоманды, "%СтрокаСоединения", СтрЗаменить(СтрокаСоединенияИнформационнойБазы(), """", """"""));
	ТекстКоманды = СтрЗаменить(ТекстКоманды, "%Пользователь", ИмяПользователя());
	
	Если Ванесса.Объект.ВерсияПоставки = "standart" Тогда
		ИмяEpf = "vanessa-automation.epf";
	Иначе	
		ИмяEpf = "vanessa-automation-single.epf";
	КонецЕсли;
	
	ТекстКоманды = СтрЗаменить(ТекстКоманды, "%ИмяEpf", Ванесса.Объект.КаталогИнструментов + "/" + ИмяEpf);
	ТекстКоманды = СтрЗаменить(ТекстКоманды, "%VBParams", Ванесса.ПолучитьСостояниеVanessaAutomation().ТекущаяФича.Каталог + ИмяJson);
	ТекстКоманды = СтрЗаменить(ТекстКоманды, "%ИмяФайлаВывода", ИмяФайлаВывода);
	
	//Сообщить(ТекстКоманды);
	ИмяФайлаКоманды = ПолучитьИмяВременногоФайла("txt");
	ЗТ = Новый ЗаписьТекста(ИмяФайлаКоманды,"UTF-8",,Ложь); 
	ЗТ.Записать(ТекстКоманды); 
	ЗТ.Закрыть();
	
	КомандаOneScript = "oscript " + Ванесса.ДополнитьСлешВПуть(Ванесса.Объект.КаталогИнструментов) + "tools\onescript\RunCommandLineFromFileTestConsole.os """ + ИмяФайлаКоманды  + """ ""%ИмяФайлаФлага"" > ""%ИмяФайлаВывода"" 2>&1";
	КомандаOneScript = СтрЗаменить(КомандаOneScript, "%ИмяФайлаВывода", ИмяФайлаВывода);
	КомандаOneScript = СтрЗаменить(КомандаOneScript, "%ИмяФайлаФлага", ИмяФайлаФлага);
	
	Сообщить(КомандаOneScript);
	Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(КомандаOneScript, 0); //не ждём завершения процесса
	
КонецФункции

&НаКлиенте
//И шаг VA проверяющий тип параметра "1" "Строка"
//@ШагVAПроверяющийТипПараметра(Парам01,Парам02)
Функция ШагVAПроверяющийТипПараметра(Парам01,Парам02) Экспорт
	ТипПараметра = Строка(ТипЗнч(Парам01));
	Если НРег(ТипПараметра) <> НРег(Парам02) Тогда
		ВызватьИсключение "Ожидалось " + Парам02 + ", а получен тип " + ТипПараметра;
	КонецЕсли;	 
КонецФункции

&НаКлиенте
Функция ВывестиДанныеТаблицы(ТабПарам)
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Для Каждого Элем Из СтрокаТабПарам Цикл
			Сообщить("" + Элем.Значение + ", Тип=" + Строка(ТипЗнч(Элем.Значение)));
		КонецЦикла;	 
	КонецЦикла;	 
КонецФункции 

&НаКлиенте
//И шаг VA проверяющий тип параметров в таблице
//@ШагVAПроверяющийТипПараметровВТаблице(ТабПарам1,ТабПарам2,ТабПарам3)
Функция ШагVAПроверяющийТипПараметровВТаблице(ТабПарам1,ТабПарам2,ТабПарам3) Экспорт
	ВывестиДанныеТаблицы(ТабПарам1);
	ВывестиДанныеТаблицы(ТабПарам2);
	ВывестиДанныеТаблицы(ТабПарам3);
КонецФункции

&НаКлиенте
Функция ШагVAПринимающийТриМногострочныеСтроки(Знач Стр1, Знач Стр2, Знач Стр3) Экспорт
	Стр1 = СтрЗаменить(Стр1, Символы.ПС, "");
	Стр2 = СтрЗаменить(Стр2, Символы.ПС, "");
	Стр3 = СтрЗаменить(Стр3, Символы.ПС, "");
	
	Сообщить(Стр1);
	Сообщить(Стр2);
	Сообщить(Стр3);
КонецФункции 

&НаКлиенте
//И шаг VA с параметром строка "парам01" и таблицей
//@ШагVAСПараметромСтрокаИТаблицей(Парам01,ТабПарам)
Функция ШагVAСПараметромСтрокаИТаблицей(Парам01,ТабПарам) Экспорт
	Сообщить(Парам01);
	Сообщить(ТабПарам[0].Кол1);
КонецФункции

&НаКлиенте
Функция ИсключениеВАсинхронномШагеVA() Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();
	ПодключитьОбработчикОжидания("ИсключениеВАсинхронномШагеVAТогдаОбработчик", 0.1, Истина);
КонецФункции

&НаКлиенте
Функция ИсключениеВАсинхронномШагеVAТогдаОбработчик()
	Ванесса.ПродолжитьВыполнениеШагов(Истина, "ИсключениеВАсинхронномШагеVAТогдаОбработчик");
КонецФункции 

&НаКлиенте
//И в каталоге аллюр появился 1 файл xml
//@ВКаталогеАллюрПоявилсяФайлXml(Парам01)
Функция ВКаталогеАллюрПоявилсяФайлXml(ДолжноБытьФайлов) Экспорт
	КолФайлов = 0;
	БылФайлAllure = Ложь;
	
	МасссивНайденныхФайлов = Новый Массив;
	
	СписокКаталогов = Новый СписокЗначений;
	СписокФайлов    = Новый СписокЗначений;
	Ванесса.НайтиФайлыКомандаСистемы(Контекст.КаталогAllure,СписокКаталогов,СписокФайлов,Истина);
	Для Каждого ЭлемФайл Из СписокФайлов Цикл
		ПолноеИмя = ЭлемФайл.Значение.ПолноеИмя;
		МасссивНайденныхФайлов.Добавить(ПолноеИмя);
		
		Если Найти(ПолноеИмя,".xml") > 0 Тогда
			Контекст.Вставить("НайденноеИмяФайлаАллюр",ПолноеИмя);
			БылФайлAllure = Истина;
			КолФайлов = КолФайлов + 1;
		КонецЕсли;	 
	КонецЦикла;	 
	
	Если Не БылФайлAllure Тогда
		ТекстСообщения = "В каталоге %1 не найдено ни одного файла xml.";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Контекст.КаталогAllure);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	
	
	Если КолФайлов <> ДолжноБытьФайлов Тогда
		ТекстСообщения = "Найдено %1, а должно быть %2 файлов";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",КолФайлов);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",ДолжноБытьФайлов);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Контекст.Вставить("МасссивНайденныхФайлов",МасссивНайденныхФайлов);
КонецФункции

&НаКлиенте
//И в каталоге аллюр появился 1 файл json
//@ВКаталогеАллюрПоявилсяФайлjson(Парам01)
Функция ВКаталогеАллюрПоявилсяФайлjson(ДолжноБытьФайлов) Экспорт
	КолФайлов = 0;
	БылФайлAllure = Ложь;
	
	МасссивНайденныхФайлов = Новый Массив;
	
	СписокКаталогов = Новый СписокЗначений;
	СписокФайлов    = Новый СписокЗначений;
	Ванесса.НайтиФайлыКомандаСистемы(Контекст.КаталогAllure,СписокКаталогов,СписокФайлов,Истина);
	Для Каждого ЭлемФайл Из СписокФайлов Цикл
		ПолноеИмя = ЭлемФайл.Значение.ПолноеИмя;
		МасссивНайденныхФайлов.Добавить(ПолноеИмя);
		
		Если Найти(ПолноеИмя,".json") > 0 Тогда
			Контекст.Вставить("НайденноеИмяФайлаjson",ПолноеИмя);
			БылФайлAllure = Истина;
			КолФайлов = КолФайлов + 1;
		КонецЕсли;	 
	КонецЦикла;	 
	
	Если Не БылФайлAllure Тогда
		ТекстСообщения = "В каталоге %1 не найдено ни одного файла json.";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Контекст.КаталогAllure);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	
	
	Если КолФайлов <> ДолжноБытьФайлов Тогда
		ТекстСообщения = "Найдено %1, а должно быть %2 файлов";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",КолФайлов);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",ДолжноБытьФайлов);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Контекст.Вставить("МасссивНайденныхФайлов",МасссивНайденныхФайлов);
КонецФункции

&НаКлиенте
//И в каталоге файлов ошибок в json формате появился 1 файл json
//@ВКаталогеФайловОшибокВJsonФорматеПоявилсяФайлJson(Парам01)
Функция ВКаталогеФайловОшибокВJsonФорматеПоявилсяФайлJson(ДолжноБытьФайлов) Экспорт
	КолФайлов = 0;
	БылФайлJson = Ложь;
	
	МасссивНайденныхФайлов = Новый Массив;
	
	СписокКаталогов = Новый СписокЗначений;
	СписокФайлов    = Новый СписокЗначений;
	Ванесса.НайтиФайлыКомандаСистемы(Контекст.КаталогОшибок,СписокКаталогов,СписокФайлов,Истина);
	Для Каждого ЭлемФайл Из СписокФайлов Цикл
		ПолноеИмя = ЭлемФайл.Значение.ПолноеИмя;
		МасссивНайденныхФайлов.Добавить(ПолноеИмя);
		
		Контекст.Вставить("НайденноеИмяОшибкиJson",ПолноеИмя);
		
		Если Найти(НРег(ПолноеИмя),".json") > 0 Тогда
			БылФайлJson = Истина;
			КолФайлов = КолФайлов + 1;
			Прервать;
		КонецЕсли;	 
	КонецЦикла;	 
	
	Если Не БылФайлJson Тогда
		ТекстСообщения = "В каталоге %1 не найдено ни одного файла json.";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Контекст.КаталогОшибок);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	
	
	Если КолФайлов <> ДолжноБытьФайлов Тогда
		ТекстСообщения = "Найдено %1, а должно быть %2 файлов json.";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",КолФайлов);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",ДолжноБытьФайлов);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Контекст.Вставить("МасссивНайденныхФайлов",МасссивНайденныхФайлов);
КонецФункции

&НаКлиенте
//И в каталоге скриншотов появилось 2 файла
//@ВКаталогеСкриншотовПоявилосьФайла(Парам01)
Функция ВКаталогеСкриншотовПоявилосьФайла(ДолжноБытьФайлов) Экспорт
	КолФайлов = 0;
	БылФайл = Ложь;
	
	МасссивНайденныхФайлов = Новый Массив;
	
	СписокКаталогов = Новый СписокЗначений;
	СписокФайлов    = Новый СписокЗначений;
	Ванесса.НайтиФайлыКомандаСистемы(Контекст.КаталогВыгрузкиСкриншотов,СписокКаталогов,СписокФайлов,Истина);
	Для Каждого ЭлемФайл Из СписокФайлов Цикл
		ПолноеИмя = ЭлемФайл.Значение.ПолноеИмя;
		МасссивНайденныхФайлов.Добавить(ПолноеИмя);
		
		Контекст.Вставить("НайденноеИмяОшибкиJson",ПолноеИмя);
		
		Если Найти(НРег(ПолноеИмя),".png") > 0 Тогда
			БылФайл = Истина;
			КолФайлов = КолФайлов + 1;
		КонецЕсли;	 
	КонецЦикла;	 
	
	Если Не БылФайл Тогда
		ТекстСообщения = "В каталоге %1 не найдено ни одного файла скриншотов.";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Контекст.КаталогВыгрузкиСкриншотов);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	
	
	Если КолФайлов <> ДолжноБытьФайлов Тогда
		ТекстСообщения = "Найдено %1, а должно быть %2 файлов скриншотов.";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",КолФайлов);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",ДолжноБытьФайлов);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Контекст.Вставить("МасссивНайденныхФайлов",МасссивНайденныхФайлов);
КонецФункции

&НаКлиенте
//И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
//@ВПолеКаталогОтчетаJUnitЯУказываюПутьКОтносительномуКаталогу(Парам01)
Функция ВПолеКаталогОтчетаJUnitЯУказываюПутьКОтносительномуКаталогу(ЧастьПути) Экспорт
	Каталог = Ванесса.Объект.КаталогИнструментов + "\" + ЧастьПути;
	Контекст.Вставить("КаталогjUnit",Каталог);
	
	Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(Каталог) Тогда
		Ванесса.СоздатьКаталогКомандаСистемы(Каталог);
	Иначе
		Ванесса.УдалитьКаталогКомандаСистемы(Каталог);
		Ванесса.Sleep(1);
		Ванесса.СоздатьКаталогКомандаСистемы(Каталог);
	КонецЕсли;	 
	
	Поле = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("КаталогВыгрузкиJUnit",Истина);
	Поле.ВвестиТекст(Каталог);
КонецФункции

&НаКлиенте
//И в каталоге jUnit появился 1 файл xml
//@ВКаталогеJUnitПоявилсяФайлXml(Парам01)
Функция ВКаталогеJUnitПоявилсяФайлXml(ДолжноБытьФайлов) Экспорт
	КолФайлов = 0;
	БылФайлjUnit = Ложь;
	МасссивНайденныхФайлов = Новый Массив;
	СписокКаталогов = Новый СписокЗначений;
	СписокФайлов    = Новый СписокЗначений;
	Ванесса.НайтиФайлыКомандаСистемы(Контекст.КаталогjUnit,СписокКаталогов,СписокФайлов,Истина);
	Для Каждого ЭлемФайл Из СписокФайлов Цикл
		ПолноеИмя = ЭлемФайл.Значение.ПолноеИмя;
		МасссивНайденныхФайлов.Добавить(ПолноеИмя);
		
		Если Найти(ПолноеИмя,".xml") > 0 Тогда
			Контекст.Вставить("НайденноеИмяФайлаxml",ПолноеИмя);
			БылФайлjUnit = Истина;
			КолФайлов = КолФайлов + 1;
		КонецЕсли;	 
	КонецЦикла;	 
	
	Если Не БылФайлjUnit Тогда
		ТекстСообщения = "В каталоге %1 не найдено ни одного файла xml.";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Контекст.КаталогjUnit);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	
	
	Если КолФайлов <> ДолжноБытьФайлов Тогда
		ТекстСообщения = "Найдено %1, а должно быть %2 файлов";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",КолФайлов);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",ДолжноБытьФайлов);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецФункции



&НаКлиенте
//И я устанавливаю флаг настройки Vanessa Automation "ИмяФлага"
//@ЯУстанавливаюФлагНастройкиVanessaAutomation(Парам01)
Функция ЯУстанавливаюФлагНастройкиVanessaAutomation(ИмяОпции) Экспорт
	Ванесса.Объект[ИмяОпции] = Истина;
КонецФункции

&НаКлиенте
//И я снимаю флаг настройки Vanessa Automation "ИмяФлага"
//@ЯСнимаюФлагНастройкиVanessaAutomation(Парам01)
Функция ЯСнимаюФлагНастройкиVanessaAutomation(ИмяОпции) Экспорт
	Ванесса.Объект[ИмяОпции] = Ложь;
КонецФункции

&НаКлиенте
//И я устанавливаю опцию Vanessa Automation "ИмяФлага" "Значение"
//@ЯУстанавливаюНастройкуVanessaAutomation(Парам01,Парам02)
Функция ЯУстанавливаюНастройкуVanessaAutomation(ИмяОпции, Значение) Экспорт
	Ванесса.Объект[ИмяОпции] = Значение;
КонецФункции

&НаКлиенте
//И я запоминаю значение настройки Vanessa Automation "ИмяНастройки" в "ИмяПеременной"
//@ЯЗапоминаюЗначениеНастройкиVanessaAutomationВ(Парам01, Парам02)
Функция ЯЗапоминаюЗначениеНастройкиVanessaAutomationВ(ИмяОпции, ИмяПеременной) Экспорт
	Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной, Ванесса.Объект[ИмяОпции]);
КонецФункции

&НаКлиенте
//И я проверяю, что нет конфликтов идентификаторов элементов в основной форме
//@ЯПроверяюЧтоНетКонфликтовИдентификаторовЭлементовВОсновнойФорме()
Функция ЯПроверяюЧтоНетКонфликтовИдентификаторовЭлементовВОсновнойФорме() Экспорт
	
	Если Ванесса.Объект.ВерсияПоставки = "single" Тогда
		ИмяФайла = Ванесса.Объект.КаталогИнструментов + "\VanessaAutomationsingle\Forms\УправляемаяФорма\Ext\Form.xml";
		Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайла) Тогда
			//Т.к. Single собранный из скрипта ещё может не содержать исходников
			Возврат Неопределено;
		КонецЕсли;	 
	Иначе	
		ИмяФайла = Ванесса.Объект.КаталогИнструментов + "\VanessaAutomation\Forms\УправляемаяФорма\Ext\Form.xml";
	КонецЕсли;	 
	
	XML = Новый ЧтениеXML;
	XML.ОткрытьФайл(ИмяФайла);
	
	СоответствиеЭлементов = Новый Соответствие;
	СоответствиеКоманд = Новый Соответствие;
	Ошибки = Новый Массив;
	
	МаксИД = 0;
	
	Пока XML.Прочитать() Цикл
		Если XML.ТипУзла = ТипУзлаXML.НачалоЭлемента Тогда
			ЭтоКоманда = Ложь;
			ИмяУзла = XML.Имя;
			Если ИмяУзла = "Column" Тогда
				Продолжить;
			ИначеЕсли ИмяУзла = "Attribute" Тогда
				Продолжить;
			ИначеЕсли ИмяУзла = "Command" Тогда
				ЭтоКоманда = Истина;
			КонецЕсли;	 
			
			Пока XML.ПрочитатьАтрибут() Цикл
				Если XML.Имя = "id" Тогда
					Если ЭтоКоманда Тогда
						Если СоответствиеКоманд[XML.Значение] <> Неопределено Тогда
							Ошибки.Добавить("Ид команды <" + XML.Значение + "> уже встречался.");
						КонецЕсли;	 
					Иначе	
						Если СоответствиеЭлементов[XML.Значение] <> Неопределено Тогда
							Ошибки.Добавить("Ид элемента <" + XML.Значение + "> уже встречался.");
						КонецЕсли;	 
					КонецЕсли;	 
					
					ТекИД = Число(XML.Значение);
					Если ТекИД > МаксИД Тогда
						МаксИД = ТекИД;
					КонецЕсли;	 
					
					Если ЭтоКоманда Тогда
						СоответствиеКоманд.Вставить(XML.Значение, Истина);
					Иначе	
						СоответствиеЭлементов.Вставить(XML.Значение, Истина);
					КонецЕсли;	 
				КонецЕсли;	 
			КонецЦикла;	
		КонецЕсли;	 
	КонецЦикла;	
	
	Если Ошибки.Количество() > 0 Тогда
		Стр = "Были ошибки одинаковых ИД элементов формы:" + Символы.ПС;
		Для Каждого Элем Из Ошибки Цикл
			Стр = Стр + Элем + Символы.ПС;
		КонецЦикла;
		Стр = Стр + "Максимальный ИД = " + МаксИД;
		ВызватьИсключение Стр;
	КонецЕсли;	 
	
КонецФункции

&НаКлиенте
//И делаю сообщение по переданному параметру для теста Vanessa Automation "Парам"
//@ДелаюСообщениеПоПереданномуПараметруДляТестаVanessaAutomation(Парам01)
Функция ДелаюСообщениеПоПереданномуПараметруДляТестаVanessaAutomation(Парам01) Экспорт
	Текст = Ванесса.МногострочнаяСтрокаИзПараметраШага(Парам01);
	Сообщить(Текст);
КонецФункции

&НаКлиенте
//И я запоминаю заголовок элемента формы Vanessa Automation с именем "ИмяЭлемента" в переменную "ИмяПеременной"
//@ЯЗапоминаюЗаголовокЭлементаФормыVanessaAutomationСИменемВПеременную(Парам01,Парам02)
Функция ЯЗапоминаюЗаголовокЭлементаФормыVanessaAutomationСИменемВПеременную(ИмяЭлемента, ИмяПеременной) Экспорт
	Если КонтекстСохраняемый.Свойство("ФормаVAВРежимеОбучения") Тогда
		ИсточникДанных = КонтекстСохраняемый.ФормаVAВРежимеОбучения;
	Иначе	
		ИсточникДанных = Ванесса;
	КонецЕсли;	 
	
	НужныйЗаголовок = ИсточникДанных.Элементы[ИмяЭлемента].Заголовок;
	Если ТипЗнч(ИсточникДанных.Элементы[ИмяЭлемента]) = Тип("КнопкаФормы") Тогда
		Если НЕ ЗначениеЗаполнено(НужныйЗаголовок) Тогда
			ИмяКоманды = ИсточникДанных.Элементы[ИмяЭлемента].ИмяКоманды;
			НужныйЗаголовок = ИсточникДанных.ЗаголовокКоманды(ИмяКоманды);
		КонецЕсли;	 
	КонецЕсли;
	
	Если НЕ ЗначениеЗаполнено(НужныйЗаголовок) Тогда
		НужныйЗаголовок = ИсточникДанных.ЗаголовокЭлементаФормыVAИзДанныхОбъекта(ИмяЭлемента);
	КонецЕсли;	 
	
	Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной, НужныйЗаголовок);
КонецФункции

&НаКлиенте
//И я вывожу таблицу Gherkin в окно сообщений пользователя
//@ЯВывожуТаблицуGherkinВОкноСообщенийПользователя()
Функция ЯВывожуТаблицуGherkinВОкноСообщенийПользователя(ТабПарам) Экспорт
	
	Если ТабПарам.Количество() = 0 Тогда
		Возврат Неопределено;
	КонецЕсли;	 
	
	Сч = 0;
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Сч = Сч + 1;
		СчКолонка = 0;
		Для Каждого ТекКолонка Из ТабПарам[0] Цикл
			СчКолонка = СчКолонка + 1;
			Сообщить("Строка №" + Сч + ". Колонка №" + СчКолонка + ". Значение=" + СтрокаТабПарам[ТекКолонка.Ключ]);
		КонецЦикла;	 
	КонецЦикла;	 
	
КонецФункции

&НаКлиенте
//И я загружаю фича файлы в VA в режиме обучения "$КаталогИнструментов$\features\Core\Allure\Issue-34-ОтчетAllure.feature"
//@ЯЗагружаюФичаФайлыВVAВРежимеОбучения(Парам01)
Функция ЯЗагружаюФичаФайлыВVAВРежимеОбучения(Путь) Экспорт
	Оповестить("ЗагрузкаФичВРежимеОбучения", Путь);
КонецФункции

&НаКлиенте
//И я загружаю файл маркдаун в VA в режиме обучения "$КаталогИнструментов$\docs\index.md"
//@ЯЗагружаюФайлМаркдаунВVAВРежимеОбучения(Парам01)
Функция ЯЗагружаюФайлМаркдаунВVAВРежимеОбучения(Путь) Экспорт
	Оповестить("ЗагрузкаМаркдаунВРежимеОбучения", Путь);
КонецФункции

&НаКлиенте
//И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
//@ЯУстанавливаюОпциюVAВРежимеОбучения(Парам01,Парам02)
Функция ЯУстанавливаюОпциюVAВРежимеОбучения(ИмяОпции, ПереданноеЗначение) Экспорт
	
	Если НРег(ПереданноеЗначение) = "ложь" Тогда
		Значение = Ложь;
	ИначеЕсли НРег(ПереданноеЗначение) = "истина" Тогда
		Значение = Истина;
	Иначе
		Значение = ПереданноеЗначение;
	КонецЕсли;	 
	
	КонтекстСохраняемый.ФормаVAВРежимеОбучения.Объект[ИмяОпции] = Значение;
	
	Если НРег(ИмяОпции) = НРег("ПроверкаСинтаксисаВРедакторе") Тогда
		КонтекстСохраняемый.ФормаVAВРежимеОбучения.ВыполнитьКодВКонтекстеОсновнойФормыVanessaAutomation("VanessaEditorПроверкаСинтаксисаВРедактореОбработчик()");
	КонецЕсли;	 
	
КонецФункции

&НаКлиенте
//И я открываю файл настроек VA в режиме обучения 
//@ЯОткрываюФайлНастроекVAВРежимеОбучения(арам01)
Функция ЯОткрываюФайлНастроекVAВРежимеОбучения() Экспорт
	Оповестить("СохранитьВФайлИОткрытьНастройкиВРедактореРежимОбучения");
КонецФункции

&НаКлиенте
//И я открываю файл сравнение настроек VA в режиме обучения
//@ЯОткрываюФайлСравнениеНастроекVAВРежимеОбучения()
Функция ЯОткрываюФайлСравнениеНастроекVAВРежимеОбучения() Экспорт
	Оповестить("ПоказатьФайлСравненияНастроекРежимОбучения");
КонецФункции

&НаКлиенте
//И я отключаю показ строк подсценариев в редакторе VA в режиме обучения
//@ЯОтключаюПоказСтрокПодсценариевВРедактореVAВРежимеОбучения()
Функция ЯОтключаюПоказСтрокПодсценариевВРедактореVAВРежимеОбучения() Экспорт
	КонтекстСохраняемый.ФормаVAВРежимеОбучения.УстановитьОтображениеСтрокПодсценариевВРедакторе(Ложь);
КонецФункции

&НаКлиенте
//Если служебное условие в которое передаётся таблица выполнено Тогда
//@СлужебноеУсловиеВКотороеПередаётсяТаблицаВыполненоТогда(ТабПарам)
Функция СлужебноеУсловиеВКотороеПередаётсяТаблицаВыполненоТогда(ТабПарам) Экспорт
	Ванесса.УстановитьРезультатУсловия(Истина);
КонецФункции

&НаКлиенте
//И я устанавливаю в таблице VA "ИмяТаблицы" в режиме обучения в колонке "ИмяКолонки" "Значение"
//@ЯУстанавливаюВТаблицеVAВРежимеОбученияВКолонке(Парам01,Парам02,Парам03)
Функция ЯУстанавливаюВТаблицеVAВРежимеОбученияВКолонке(ИмяТаблицы, ИмяКолонки, Значение) Экспорт
	КонтекстСохраняемый.ФормаVAВРежимеОбучения.Элементы[ИмяТаблицы].ТекущиеДанные[ИмяКолонки] = Значение;
КонецФункции

&НаКлиенте
//И я скрываю часть кнопок командной панели редактора в режиме обучения
//@ЯСкрываюЧастьКнопокКоманднойПанелиРедактораВРежимеОбучения()
Функция ЯСкрываюЧастьКнопокКоманднойПанелиРедактораВРежимеОбучения() Экспорт
	Ванесса.СкрытьЧастьКнопокКоманднойПанелиРедактораВРежимеОбучения();
КонецФункции
