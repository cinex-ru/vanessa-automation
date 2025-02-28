﻿&НаКлиенте
Перем ФормаОбработкиVA;

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Automation
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Automation.
Перем КонтекстСохраняемый Экспорт;

// Делает отключение модуля
&НаКлиенте
Функция ОтключениеМодуля() Экспорт

	Ванесса = Неопределено;
	Контекст = Неопределено;
	КонтекстСохраняемый = Неопределено;

КонецФункции

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСпрашиваюИмяУченикаЕслиОноНеЗадано()","ЯСпрашиваюИмяУченикаЕслиОноНеЗадано","И я спрашиваю имя ученика если оно не задано","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯОткрываюVanessaAutomationВРежимеОбучения()","ЯОткрываюVanessaAutomationВРежимеОбучения","И я открываю Vanessa Automation в режиме обучения","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПозиционируюВЦентрСтрокуРедактораVAВРежимеОбучения(Парам01)","ЯПозиционируюВЦентрСтрокуРедактораVAВРежимеОбучения","И я позиционирую в центр строку редактора VA в режиме обучения 21","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУстанавливаюТекущуюСтрокуРедактораРежимОбучения(Парам01)","ЯУстанавливаюТекущуюСтрокуРедактораРежимОбучения","И я устанавливаю текущую строку редактора режим обучения 10","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыделяюСтрокиВРедактореСПоВРежимеОбучения(Парам01,Парам02)","ЯВыделяюСтрокиВРедактореСПоВРежимеОбучения","И я выделяю строки в редакторе с 1 по 10 в режиме обучения","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПолучаюДанныеПоФайлуИнтерактивнойСправкиVanessaAutomation(Парам01)","ЯПолучаюДанныеПоФайлуИнтерактивнойСправкиVanessaAutomation","И я получаю данные по файлу интерактивной справки Vanessa Automation ""ИмяФайла""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздаюТекстовыйФайлСФайламиВидеоВНужномПорядкеVanessaAutomation(Парам01, Парам02, Парам03)","ЯСоздаюТекстовыйФайлСФайламиВидеоВНужномПорядкеVanessaAutomation","И я создаю текстовый файл с файлами видео в нужном порядке Vanessa Automation ""C:\Temp\video\temp\VideoFiles.txt"" ""КаталогВидео"" ""ru""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗаписываюСсылкуНаВидеоПоФайлуВФайлVanessaAutomation(Парам01,Парам02,Парам03)","ЯЗаписываюСсылкуНаВидеоПоФайлуВФайлVanessaAutomation","И я записываю ссылку на видео ""СсылкаНаВидео"" по файлу ""ИмяФайлаБезРасширения"" в файл ""ДанныеФайловВПравильномПорядке"" Vanessa Automation","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУстанавливаюЗначениеДополнительногоПараметраVanessaAutomationВРежимеОбучения(Парам01,Парам02)","ЯУстанавливаюЗначениеДополнительногоПараметраVanessaAutomationВРежимеОбучения","И я устанавливаю значение дополнительного параметра Vanessa Automation ""ИмяФайлаДляСравнения"" в режиме обучения ""Значение""","","");


	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Функция выполняется перед началом каждого сценария
Функция ПередНачаломСценария() Экспорт
	
КонецФункции

&НаКлиенте
// Функция выполняется перед окончанием каждого сценария
Функция ПередОкончаниемСценария() Экспорт
	
КонецФункции



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//И я спрашиваю имя ученика если оно не задано
//@ЯСпрашиваюИмяУченикаЕслиОноНеЗадано()
Функция ЯСпрашиваюИмяУченикаЕслиОноНеЗадано() Экспорт
	
	Если КонтекстСохраняемый.Свойство("ИмяУченика") Тогда
		Если ЗначениеЗаполнено(КонтекстСохраняемый.ИмяУченика) Тогда
			Возврат Неопределено;
		КонецЕсли;	 
	КонецЕсли;	 
	
	Ванесса.ВоспроизвестиФразуАсинхронно("Чтобы продолжить укажите ваше имя, пожалуйста.");
	
	Ванесса.ЗапретитьВыполнениеШагов();
	
	ОписаниеОповещения = Новый ОписаниеОповещения("ПослеВводаИмениУченика", ЭтаФорма);
	ПоказатьВводСтроки(ОписаниеОповещения, , "Введите ваше имя");
	
КонецФункции

&НаКлиенте
Функция ПослеВводаИмениУченика(ИмяУченика, ДопПараметры) Экспорт
	
	Если ЗначениеЗаполнено(ИмяУченика) Тогда
		КонтекстСохраняемый.Вставить("ИмяУченика", ИмяУченика);
	Иначе	
		КонтекстСохраняемый.Вставить("ИмяУченика", "Ученик");
	КонецЕсли;	 
	
	Ванесса.ПродолжитьВыполнениеШагов();
	
КонецФункции

&НаКлиенте
//И я открываю Vanessa Automation в режиме обучения
//@ЯОткрываюVanessaAutomationВРежимеОбучения()
Функция ЯОткрываюVanessaAutomationВРежимеОбучения() Экспорт
	
	Если Ванесса.ЗапрещеныСинхронныеВызовы Тогда
		ВызватьИсключение Ванесса.Локализовать("Необходимо разрешить выполнение синхронных вызовов. Достаточно запустить сеанс 1С не из конфигуратора.");
	КонецЕсли;	 
	
	Ванесса.ЗапретитьВыполнениеШагов();
	
	Если Ванесса.Объект.ВерсияПоставки = "single" Тогда
		ПутьКVA = Ванесса.ДополнитьСлешВПуть(Ванесса.Объект.КаталогИнструментов) + "vanessa-automation-single.epf";
	Иначе	
		ПутьКVA = Ванесса.ДополнитьСлешВПуть(Ванесса.Объект.КаталогИнструментов) + "vanessa-automation.epf";
	КонецЕсли;
	
	ПомещаемыйФайл = Новый ОписаниеПередаваемогоФайла(ПутьКVA);
	ПомещаемыеФайлы = Новый Массив;
	ПомещаемыеФайлы.Добавить(ПомещаемыйФайл);
	
	ПараметрыЗавершения = Новый Структура;
	ПараметрыЗавершения.Вставить("ПутьКVA", ПутьКVA);
	ОписаниеОповещения = Новый ОписаниеОповещения("ПослеПомещенияФайлаVA", ЭтаФорма, ПараметрыЗавершения);
	НачатьПомещениеФайлов(ОписаниеОповещения, ПомещаемыеФайлы,, Ложь, ЭтаФорма.УникальныйИдентификатор);
	
КонецФункции

&НаСервереБезКонтекста
Процедура ВключитьСлужебнуюКонстантуИнициализацииРедактора()
	Если Метаданные.Константы.Найти("ИнициализироватьVanessaEditor") <> Неопределено Тогда
		Константы.ИнициализироватьVanessaEditor.Установить(Истина);
	КонецЕсли;	
КонецПроцедуры

&НаКлиенте
Функция ПослеПомещенияФайлаVA(Знач ПомещенныеФайлы, Знач ДополнительныеПараметры) Экспорт
	
	
	Для Каждого ПомещенныйФайл Из ПомещенныеФайлы Цикл
		ДополнительныеПараметрыПодключения = Новый Структура;
		ДополнительныеПараметрыПодключения.Вставить("АдресХранилища",ПомещенныйФайл.Хранение);
		ДополнительныеПараметрыПодключения.Вставить("ИмяФайла",ДополнительныеПараметры.ПутьКVA);
		ИмяОбработки = ПодключитьВнешнююОбработкуСервер(ПомещенныйФайл.Хранение,Ванесса.ЕстьЗащитаОтОпасныхДействий,ДополнительныеПараметрыПодключения);
		
		ВключитьСлужебнуюКонстантуИнициализацииРедактора();
		
		ПодключениеОбработкиПродолжение(ИмяОбработки);
		Возврат Неопределено;
	КонецЦикла;	 
	
	Ванесса.ПродолжитьВыполнениеШагов();
	
КонецФункции

&НаСервереБезКонтекста
Функция ПодключитьВнешнююОбработкуСервер(Знач АдресХранилища,ИспользуетсяЗащитаОтОпасныхДействий,ДополнительныеПараметры = Неопределено) Экспорт
	ИмяОбработки = Неопределено;
	Если ИспользуетсяЗащитаОтОпасныхДействий Тогда
		ОписаниеЗащитыОтОпасныхДействий = Вычислить("Новый ОписаниеЗащитыОтОпасныхДействий");
		ОписаниеЗащитыОтОпасныхДействий.ПредупреждатьОбОпасныхДействиях = Ложь;
		
		Обработка = ПолучитьОбработкуИзФайлаЧерезМетодСоздать(ДополнительныеПараметры,ИмяОбработки);
		Если Обработка = Неопределено Тогда
			Если ТипЗнч(ДополнительныеПараметры) = Тип("Структура") Тогда
				Если ДополнительныеПараметры.Свойство("АдресХранилища") Тогда
					ИмяОбработки = ВнешниеОбработки.Подключить(ДополнительныеПараметры.АдресХранилища, , Ложь, ОписаниеЗащитыОтОпасныхДействий);
				Иначе	
					ИмяОбработки = ВнешниеОбработки.Подключить(АдресХранилища, , Ложь, ОписаниеЗащитыОтОпасныхДействий);
				КонецЕсли;	 
			КонецЕсли;	 
		КонецЕсли;	 
		ПроверитьОбработкуНаВозможностьПодключения(ИмяОбработки);
		
		Возврат ИмяОбработки;
	Иначе	
		Обработка = ПолучитьОбработкуИзФайлаЧерезМетодСоздать(ДополнительныеПараметры,ИмяОбработки);
		Если Обработка = Неопределено Тогда
			Если ДополнительныеПараметры.Свойство("АдресХранилища") Тогда
				ИмяОбработки = ВнешниеОбработки.Подключить(ДополнительныеПараметры.АдресХранилища, , Ложь); 
			Иначе	
				ИмяОбработки = ВнешниеОбработки.Подключить(АдресХранилища, , Ложь); 
			КонецЕсли;	 
			ПроверитьОбработкуНаВозможностьПодключения(ИмяОбработки);
		КонецЕсли;	 
		Возврат ИмяОбработки;
	КонецЕсли;	 
КонецФункции 

&НаСервереБезКонтекста
Функция ПолучитьОбработкуИзФайлаЧерезМетодСоздать(ДополнительныеПараметры,ИмяОбработки)
	Обработка = Неопределено;
	Если ТипЗнч(ДополнительныеПараметры) = Тип("Структура") Тогда
		Если ДополнительныеПараметры.Свойство("ИмяФайла") Тогда
			Файл = Новый Файл(ДополнительныеПараметры.ИмяФайла);
			Если Файл.Существует() Тогда
				Обработка = ВнешниеОбработки.Создать(ДополнительныеПараметры.ИмяФайла, Ложь);
				ИмяОбработки = Обработка.Метаданные().Имя;
			КонецЕсли;	 
		КонецЕсли;	 
	КонецЕсли;	 
	
	Возврат Обработка; 
КонецФункции	 

&НаСервереБезКонтекста
Функция ПроверитьОбработкуНаВозможностьПодключения(ИмяОбработки)
	
	Возврат Неопределено;
	
	Обработка = ВнешниеОбработки.Создать(ИмяОбработки,Ложь);
	Попытка
		ПараметрыОбработки = Обработка.ПараметрыОбработки();
	Исключение
		// значит параметры не указаны
		Возврат Неопределено;
	КонецПопытки;
	
	IgnoreOn82 = Ложь;
	ПараметрыОбработки.Свойство("IgnoreOn82",IgnoreOn82);
	
	Если IgnoreOn82 Тогда
		СистемнаяИнформация = Новый СистемнаяИнформация;
		Если Лев(СистемнаяИнформация.ВерсияПриложения,4) = "8.2." Тогда
			ИмяОбработки = Неопределено;
		Иначе
			Попытка
				ТекущийРежимСовместимости = Вычислить("Метаданные.РежимСовместимости");
				РежимыСовместимости = Метаданные.СвойстваОбъектов.РежимСовместимости;
			Исключение
				Возврат Неопределено;
			КонецПопытки;
			
			Если ТекущийРежимСовместимости = РежимыСовместимости.Версия8_1 Тогда
				ИмяОбработки = Неопределено;
			ИначеЕсли ТекущийРежимСовместимости = РежимыСовместимости.Версия8_2_13 Тогда
				ИмяОбработки = Неопределено;
			ИначеЕсли ТекущийРежимСовместимости = РежимыСовместимости.Версия8_2_16 Тогда
				ИмяОбработки = Неопределено;
			КонецЕсли;	 

		КонецЕсли;	 
	КонецЕсли;	 
КонецФункции

&НаКлиенте
Функция ОжиданиеОткрытияФормыVA()
	
	Если ФормаОбработкиVA.СработалиВсеАсинхронныеОбработчикиФормыПриОткрытии = Истина Тогда
		Если Найти(ФормаОбработкиVA.Заголовок, Ванесса.Локализовать("Режим обучения")) = 0 Тогда
			ФормаОбработкиVA.Заголовок = ФормаОбработкиVA.Заголовок + " " + Ванесса.Локализовать("Режим обучения");
		КонецЕсли;
		ФормаОбработкиVA.ЗапрашиватьПодтверждениеПриЗакрытии = "Нет";
		ФормаОбработкиVA.Объект.ИспользоватьРедакторVanessaEditor = Истина;
		ФормаОбработкиVA.Объект.ПодключатьГорячуюКлавишуДляПолученияСправкиОбЭлементе = Ложь;
		ФормаОбработкиVA.Объект.DebugLog = Ложь;
		ФормаОбработкиVA.СтрокаДляПоискаВнутриФичи = "";
		ФормаОбработкиVA.Объект.ТемаРедактораVanessaEditor = Ванесса.Объект.ТемаРедактораVanessaEditor;
		Если ФормаОбработкиVA.Объект.ЯзыкГенератораGherkin <> "ru" Тогда
			ФормаОбработкиVA.Объект.ЯзыкГенератораGherkin = "ru";
			ФормаОбработкиVA.ЯзыкГенератораGherkinПриИзмененииОбработчикЭкспорт();
		КонецЕсли;
		
		Если Найти(Ванесса.Объект.КаталогФич, "features_en") > 0 Тогда
			ФормаОбработкиVA.Объект.ЯзыкГенератораGherkin = "en";
			ФормаОбработкиVA.ЯзыкГенератораGherkinПриИзмененииОбработчикЭкспорт();
		КонецЕсли;	
		
		Оповестить("ОткрытаФормаVAВРежимеОбучения", ФормаОбработкиVA);
		Ванесса.ПродолжитьВыполнениеШагов();
		ФормаОбработкиVA.ОбработкаДляСеансаВрежимеОбучения();
		ФормаОбработкиVA.ЗакрытьВсеВкладкиРедактора();
		ФормаОбработкиVA.ОчиститьОкноСообщений();
		ФормаОбработкиVA.ПоказатьЧастьКнопокКоманднойПанелиРедактораВРежимеОбучения();
		ФормаОбработкиVA.СкрытьТаблоПеременных();
		ФормаОбработкиVA.ЗакрытьФормуИзвестныхШаговЕслиОнаОткрывалась();
		ФормаОбработкиVA.ЗакрытьФормуРедактораТаблицЕслиОнаОткрывалась();
		ФормаОбработкиVA.ЗакрытьФормуСозданияТестовыхДанных();
		ФормаОбработкиVA.ЗакрытьГруппыКоторыеОткрываютсяВРежимеСамотестирования();
		ФормаОбработкиVA.Элементы.ПроверкаРаботыVanessaAutomationВРежимеTestClient.Видимость = Ложь;
		ФормаОбработкиVA.Элементы.СтраницыСервис.ТекущаяСтраница = ФормаОбработкиVA.Элементы.СтраницаСервисОсновные;
		ФормаОбработкиVA.СкрытьЭлементыКоторыеМоглиБытьПоказаныПриРаботеИнтерактивнойСправки();
		ФормаОбработкиVA = Неопределено;
		Возврат Неопределено;
	КонецЕсли;	 
	
	ПодключитьОбработчикОжидания("ОжиданиеОткрытияФормыVA", 1, Истина);
	
КонецФункции 

&НаКлиенте
Функция ПодключениеОбработкиПродолжение(ИмяОбработки)
	ФормаОбработкиVA = ПолучитьФорму("ВнешняяОбработка." + ИмяОбработки + ".Форма.УправляемаяФорма",,,"Обучение");
	ФормаОбработкиVA.Объект.ЗагрузкаФичПриОткрытии = "Не загружать";
	ФормаОбработкиVA.Объект.ИспользоватьРедакторVanessaEditor = Истина;
	ФормаОбработкиVA.Объект.ДополнительныеПараметры = Новый Структура;
	ФормаОбработкиVA.Объект.ДополнительныеПараметры.Вставить("ЗагрузитьНастройкуКаталогФич", Ложь);
	ФормаОбработкиVA.Объект.ДополнительныеПараметры.Вставить("ВЭтомСеансеИдётОбучение", Истина);
	ФормаОбработкиVA.Открыть();
	
	ПодключитьОбработчикОжидания("ОжиданиеОткрытияФормыVA",1, Истина);
	
КонецФункции 

&НаКлиенте
//И я позиционирую в центр строку редактора VA в режиме обучения 21
//@ЯПозиционируюВЦентрСтрокуРедактораVAВРежимеОбучения(Парам01)
Функция ЯПозиционируюВЦентрСтрокуРедактораVAВРежимеОбучения(НомерСтроки) Экспорт
	
	ЭкземплярVanessaEditor = КонтекстСохраняемый.ФормаVAВРежимеОбучения.ПолучитьVanessaEditor();
	ЭкземплярVanessaEditor.revealLineInCenter(НомерСтроки, "");
	
КонецФункции

&НаКлиенте
//И я устанавливаю текущую строку редактора режим обучения 10
//@ЯУстанавливаюТекущуюСтрокуРедактораРежимОбучения(Парам01)
Функция ЯУстанавливаюТекущуюСтрокуРедактораРежимОбучения(НомерСтроки) Экспорт
	ЭкземплярVanessaEditor = КонтекстСохраняемый.ФормаVAВРежимеОбучения.ПолучитьVanessaEditor();
	ЭкземплярVanessaEditor.setPosition(Число(НомерСтроки), 1, "");
КонецФункции

&НаКлиенте
//И я выделяю строки в редакторе с 1 по 10 в режиме обучения
//@ЯВыделяюСтрокиВРедактореСПоВРежимеОбучения(Парам01,Парам02)
Функция ЯВыделяюСтрокиВРедактореСПоВРежимеОбучения(НомСтр1, НомСтр2) Экспорт
	ЭкземплярVanessaEditor = КонтекстСохраняемый.ФормаVAВРежимеОбучения.ПолучитьVanessaEditor();
	ЭкземплярVanessaEditor.setSelection(НомСтр1, 1, НомСтр2+1, 1);
КонецФункции

&НаКлиенте
//И я получаю данные по файлу интерактивной справки Vanessa Automation "ИмяФайла"
//@ЯПолучаюДанныеПоФайлуИнтерактивнойСправкиVanessaAutomation(Парам01)
Функция ЯПолучаюДанныеПоФайлуИнтерактивнойСправкиVanessaAutomation(Знач ИмяФайла) Экспорт
	
	Если Прав(НРег(ИмяФайла), 4) = ".mp4" Тогда
		ИмяФайла = Лев(ИмяФайла, СтрДлина(ИмяФайла) - 4);
	КонецЕсли;	
	
	ИмяФайлаДокументации = Ванесса.Объект.КаталогИнструментов + "\training\List_of_lessons_ru.md";
	
	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяФайлаДокументации, "UTF-8");
	ТекстФайла = Текст.Прочитать();
	Текст.Закрыть();
	
	ИмяПлейлиста = "";
	Нашли = Ложь;
	МассивСтрок = Ванесса._СтрРазделить(ТекстФайла, Символы.ПС);
	Для Каждого Стр Из МассивСтрок Цикл
		
		Если Найти(НРег(Стр), "#") > 0 И Найти(НРег(Стр), "глава") > 0 Тогда
			ИмяПлейлиста = Стр;
			Продолжить;
		КонецЕсли;	
		
		Если Найти(Стр, ИмяФайла) > 0 Тогда
			Нашли = Истина;
			//Сообщить(Стр);
			Прервать;
		КонецЕсли;	
	КонецЦикла;	 
	
	Если НЕ Нашли Тогда
		ВызватьИсключение "Строка " + ИмяФайла + " не найдена в файле " + ИмяФайлаДокументации;
	КонецЕсли;	
	
	Стр = СокрЛП(Стр);
	
	СтрокаПоиска = "![]";
	Поз = Найти(Стр, СтрокаПоиска);
	Если Поз = 0 Тогда
		ВызватьИсключение "Не найдены строка " + СтрокаПоиска + " в строке: " + Стр;
	КонецЕсли;
	
	ИмяУрока = СокрЛП(Лев(Стр, Поз-1));
	ИмяПлейлиста = СокрЛП(СтрЗаменить(ИмяПлейлиста, "#", ""));
	
	Контекст.Вставить("ИмяУрока", ИмяУрока);
	Контекст.Вставить("ИмяПлейлиста", ИмяПлейлиста);
	//Сообщить(ИмяУрока);
	
КонецФункции

&НаКлиенте
//И я создаю текстовый файл с файлами видео в нужном порядке Vanessa Automation "C:\Temp\video\temp\VideoFiles.txt"
//@ЯСоздаюТекстовыйФайлСФайламиВидеоВНужномПорядкеVanessaAutomation(Парам01, Парам02, Парам03)
Функция ЯСоздаюТекстовыйФайлСФайламиВидеоВНужномПорядкеVanessaAutomation(ИмяФайлаРезультат, КаталогВидео, ЯзыкИнструкций) Экспорт
	Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайлаРезультат) Тогда
		Ванесса.СообщитьПользователю("Файл " + ИмяФайлаРезультат + " уже существует.");
		Возврат Неопределено;
	КонецЕсли;	
	
	ИмяКаталог_training = Ванесса.ДополнитьСлешВПуть(Ванесса.Объект.КаталогИнструментов) + "training\features";
	Если ЯзыкИнструкций <> "ru" Тогда
		ИмяКаталог_training = ИмяКаталог_training + "_" + ЯзыкИнструкций;
	КонецЕсли;	
	
	ИмяФайлаMD = Ванесса.ДополнитьСлешВПуть(Ванесса.Объект.КаталогИнструментов) + "training\List_of_lessons_" + ЯзыкИнструкций + ".md";
	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяФайлаMD, "UTF-8");
	ТекстФайла = Текст.Прочитать();
	Текст.Закрыть();

	ИмяПлейлиста = "";  
	НомерВПлейлисте = 0;
	СтароеИмяПлейлиста = "";
	
	МассивФайлов = Новый Массив; 
	
	ОбщийНомер = 0;
	
	ДанныеИерархииУрока = Новый Массив;
	
	МассивСтрок = Ванесса._СтрРазделить(ТекстФайла, Символы.ПС);
	Для Каждого Стр Из МассивСтрок Цикл
		
		УдалитьИзИерархииУрокаУстаревшиеСтроки(Стр, ДанныеИерархииУрока);
		
		ЭтоСтрокаГлавы = Ложь;
		Если    (ЯзыкИнструкций = "ru" И Найти(НРег(Стр), "#") > 0 И Найти(НРег(Стр), "глава"))
			ИЛИ (ЯзыкИнструкций = "en" И Найти(НРег(Стр), "#") > 0 И Найти(НРег(Стр), "chapter"))
			Тогда
			ИмяПлейлиста = Стр;
			ИмяПлейлиста = СокрЛП(СтрЗаменить(ИмяПлейлиста, "#", ""));
			ДанныеИерархииУрока = Новый Массив;
			ДанныеИерархииУрока.Добавить(Стр);
			ЭтоСтрокаГлавы = Истина;
		КонецЕсли;
		
		Если Найти(Стр, "[Запустить урок]") = 0 Тогда
			Если НЕ ЭтоСтрокаГлавы Тогда
				ДобавитьДанныеИерархииУрока(Стр, ДанныеИерархииУрока);
			КонецЕсли;	
			Продолжить;
		КонецЕсли;
		
		СтрокаПоиска = "![]";
		Поз = Найти(Стр, СтрокаПоиска);
		Если Поз = 0 Тогда
			ВызватьИсключение "Не найдены строка " + СтрокаПоиска + " в строке: " + Стр;
		КонецЕсли;
		
		ИмяУрока = СокрЛП(Лев(Стр, Поз-1));
		Если Лев(ИмяУрока, 2) = "1." Тогда
			ИмяУрока = СокрЛП(Сред(ИмяУрока, 3));
		ИначеЕсли Лев(ИмяУрока, 1) = "-" Тогда
			ИмяУрока = СокрЛП(Сред(ИмяУрока, 2));
		ИначеЕсли Лев(ИмяУрока, 1) = "*" Тогда
			ИмяУрока = СокрЛП(Сред(ИмяУрока, 2));
		КонецЕсли;
		
		ИмяУрока = СокрЛП(ИмяУрока);
		
		Поз = Найти(Стр, "[Запустить урок]");
		ПраваяЧасть = Сред(Стр, Поз + СтрДлина("[Запустить урок]"));
		ПраваяЧасть = СтрЗаменить(ПраваяЧасть, "(", "");
		ИмяФайлаБезРасширения = СокрЛП(СтрЗаменить(ПраваяЧасть, ")", ""));
		
		СписокКаталогов = Новый СписокЗначений;
		СписокФайлов    = Новый СписокЗначений;   
		ИмяФайлаФичи = ИмяФайлаБезРасширения + ".feature";
		Ванесса.НайтиФайлыКомандаСистемы(ИмяКаталог_training, СписокКаталогов, СписокФайлов, Истина, ИмяФайлаФичи);
		Если СписокФайлов.Количество() = 0 Тогда
			ВызватьИсключение "Не найден файл: " + ИмяФайлаФичи;
		КонецЕсли;
		Если СписокФайлов.Количество() > 1 Тогда
			ВызватьИсключение "Найдено несколько файлов: " + ИмяФайлаФичи;
		КонецЕсли;
		
		ИмяФайлаФичиПолное = СписокФайлов[0].Значение.ПолноеИмя;
		
		Текст = Новый ЧтениеТекста;
		Текст.Открыть(ИмяФайлаФичиПолное, "UTF-8");
		ТекстФайлаФичи = Текст.Прочитать();
		Текст.Закрыть();
		
		Гиперссылки = Новый Массив;
		Описание = "";
		
		МассивСтрокФичи = Ванесса._СтрРазделить(ТекстФайлаФичи, Символы.ПС);
		Для Каждого СтрокаФичи Из МассивСтрокФичи Цикл
			Если Найти(НРег(СтрокаФичи), НРег("загружаю фичи в VA в режиме обучения")) > 0 Тогда
				СтрокаФичиОригинал = СтрокаФичи;
				СтрокаФичи = СтрЗаменить(СтрокаФичи, "'", """");
				Поз = Найти(СтрокаФичи, """");
				СтрокаФичи = Сред(СтрокаФичи, Поз + 1);
				Поз = Найти(СтрокаФичи, """");
				СтрокаФичи = Лев(СтрокаФичи, Поз - 1);
				
				Если НЕ ЗначениеЗаполнено(СтрокаФичи) Тогда
					ВызватьИсключение "Не был получен параметр шага, в котом находилось имя файла примера. " + СтрокаФичиОригинал;
				КонецЕсли;	
				
				ИмяФайлаПримера = СтрЗаменить(СтрокаФичи, "$КаталогИнструментов$", Ванесса.Объект.КаталогИнструментов);
				
				Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайлаПримера) Тогда
					ВызватьИсключение "Файл " + ИмяФайлаПримера + " не существует.";
				КонецЕсли;
				
				Текст = Новый ЧтениеТекста;
				Текст.Открыть(ИмяФайлаПримера, "UTF-8");
				ТекстФайлаПримера = Текст.Прочитать();
				Текст.Закрыть();
				
				МассивСтрокПримера = Ванесса._СтрРазделить(ТекстФайлаПримера, Символы.ПС);
				Для Каждого СтрокаПримера Из МассивСтрокПримера Цикл
					СтрокаПримера = СокрЛП(СтрокаПримера);
					Если Лев(СтрокаПримера, 2) = "//" Тогда
						СтрокаПримера = СокрЛП(Сред(СтрокаПримера, 3));
					КонецЕсли;	
					Если Найти(СтрокаПримера, "http") > 0 Тогда
						Гиперссылки.Добавить(СтрокаПримера);
					КонецЕсли;	
				КонецЦикла;	
			ИначеЕсли Найти(НРег(СтрокаФичи), НРег("В этом уроке я")) > 0 ИЛИ Найти(НРег(СтрокаФичи), НРег("In this lesson")) > 0 Тогда
				Описание = СокрЛП(СтрокаФичи);
				Если Лев(Описание, 1) = "*" Тогда
					Описание = СокрЛП(Сред(Описание, 2));
				КонецЕсли;	
				
				Если ЯзыкИнструкций = "ru" Тогда
					Описание = СокрЛП(СтрЗаменить(Описание, "Привет!", ""));
					Поз = Найти(НРег(Описание), НРег("Давай откроем второй экземпляр"));
				Иначе	
					Описание = СокрЛП(СтрЗаменить(Описание, "Hi!", ""));
					Поз = Найти(НРег(Описание), НРег("Let's open the second copy"));
				КонецЕсли;
				
				Если Поз > 0 Тогда
					Описание = СокрЛП(Лев(Описание, Поз - 1));
				КонецЕсли;	
				
			КонецЕсли;	
		КонецЦикла;	    
		
		СписокКаталогов = Новый СписокЗначений;
		СписокФайлов    = Новый СписокЗначений;   
		ИмяФайлаВидео = ИмяФайлаБезРасширения + ".mp4";
		Ванесса.НайтиФайлыКомандаСистемы(КаталогВидео, СписокКаталогов, СписокФайлов, Истина, ИмяФайлаВидео);
		Если СписокФайлов.Количество() = 0 Тогда
			ВызватьИсключение "Не найден файл: " + ИмяФайлаВидео;
		КонецЕсли;
		Если СписокФайлов.Количество() > 1 Тогда
			ВызватьИсключение "Найдено несколько файлов: " + ИмяФайлаВидео;
		КонецЕсли;
		
		ПолноеИмяФайлаВидео = СписокФайлов[0].Значение.ПолноеИмя;
		
		СтроитьТриУровняИерархии = СтроитьТриУровняИерархии(ДанныеИерархииУрока);
		
		ИмяПлейлиста = ИмяПлейлистаИзДанныхИерархии(ДанныеИерархииУрока, СтроитьТриУровняИерархии);
		ДопСтрокиДляОписания = Новый Массив;
		ИмяУрока = ДополнитьИмяУрокаСогласноДаннымИерархии(ИмяУрока, ДанныеИерархииУрока, СтроитьТриУровняИерархии, ДопСтрокиДляОписания);
		
		Если СтароеИмяПлейлиста <> ИмяПлейлиста Тогда
			НомерВПлейлисте = 0;
			СтароеИмяПлейлиста = ИмяПлейлиста;
		КонецЕсли;	
		НомерВПлейлисте = НомерВПлейлисте + 1;
		
		ОбщийНомер = ОбщийНомер + 1;
		
		ГиперссылкиСтрокой = Ванесса._СтрСоединить(Гиперссылки, Символы.ПС);
		Если ЗначениеЗаполнено(ГиперссылкиСтрокой) Тогда
			Описание = Описание + Символы.ПС + ГиперссылкиСтрокой;
		КонецЕсли;
		
		ИмяУрокаСНомером = Ванесса.ДобавитьНулей(НомерВПлейлисте, 2) + ". " + ИмяУрока;
		Если СтрДлина(ИмяУрокаСНомером) > 100 И Контекст.Свойство("ЭтоСборкаВидео") И Контекст.ЭтоСборкаВидео Тогда
			ИмяУрокаСНомером = Лев(ИмяУрокаСНомером, 100);
			Если ДопСтрокиДляОписания.Количество() > 0 Тогда
				СтрокаДопОписания = Ванесса._СтрСоединить(ДопСтрокиДляОписания);
				Описание = СокрЛП(СтрокаДопОписания + Символы.ПС + Описание);
			КонецЕсли;	
		КонецЕсли;	
		
		Если ЯзыкИнструкций <> "ru" Тогда
			Если Ванесса.ВСтрокеЕстьРусскиеБуквы(ИмяПлейлиста) Тогда
				ВызватьИсключение "Найдены русские буквы в имени плейлиста: " + ИмяПлейлиста;
			КонецЕсли;	
			Если Ванесса.ВСтрокеЕстьРусскиеБуквы(ИмяУрока) Тогда
				ВызватьИсключение "Найдены русские буквы в имени урока: " + ИмяУрока;
			КонецЕсли;	
			Если Ванесса.ВСтрокеЕстьРусскиеБуквы(ИмяУрокаСНомером) Тогда
				ВызватьИсключение "Найдены русские буквы в имени урока: " + ИмяУрокаСНомером;
			КонецЕсли;	
			Если Ванесса.ВСтрокеЕстьРусскиеБуквы(Описание) Тогда
				ВызватьИсключение "Найдены русские буквы в описании: " + Описание;
			КонецЕсли;	
		КонецЕсли;	
		
		ДанныеФайла = Новый Структура;
		ДанныеФайла.Вставить("ИмяПлейлиста", ИмяПлейлиста);
		ДанныеФайла.Вставить("ПолноеИмя", ИмяФайлаФичиПолное);
		ДанныеФайла.Вставить("ИмяФайлаБезРасширения", ИмяФайлаБезРасширения);
		ДанныеФайла.Вставить("Гиперссылки", Гиперссылки);
		ДанныеФайла.Вставить("ГиперссылкиСтрокой", ГиперссылкиСтрокой);
		ДанныеФайла.Вставить("НомерВПлейлисте", НомерВПлейлисте);
		ДанныеФайла.Вставить("ИмяУрока", ИмяУрока);
		ДанныеФайла.Вставить("ИмяУрокаСНомером", ИмяУрокаСНомером);
		ДанныеФайла.Вставить("ИмяФайлаВидео", ПолноеИмяФайлаВидео);
		ДанныеФайла.Вставить("Описание", Описание);
		ДанныеФайла.Вставить("ФайлОбработан", Ложь);
		ДанныеФайла.Вставить("ОбщийНомер", ОбщийНомер);
		ДанныеФайла.Вставить("СсылкаИнтернет", "");
		
		МассивФайлов.Добавить(ДанныеФайла);
		
	КонецЦикла;	

	ЗаписьJson = Вычислить("Новый ЗаписьJson()");
	ЗаписьJson.ОткрытьФайл(ИмяФайлаРезультат);
	ЗаписатьJSON(ЗаписьJson, МассивФайлов); 
	ЗаписьJson.Закрыть();

КонецФункции  

&НаКлиенте
Функция СтроитьТриУровняИерархии(ДанныеИерархииУрока)
	
	Для Каждого Стр Из ДанныеИерархииУрока Цикл
		Если Найти(Стр, "Закладка ""Сервис""") > 0 ИЛИ Найти(Стр, "Tab ""Service""") > 0 Тогда
			Возврат Истина;
		КонецЕсли;	       
	КонецЦикла;	
	
	Возврат Ложь;
	
КонецФункции	

&НаКлиенте
Функция ДополнитьИмяУрокаСогласноДаннымИерархии(Знач Стр, ДанныеИерархииУрока, СтроитьТриУровняИерархии, ДопСтрокиДляОписания)
	
	Если ДанныеИерархииУрока.Количество() <= 2 Тогда
		Возврат Стр;
	КонецЕсли;	
	
	НачСчетчик = 2;
	Если СтроитьТриУровняИерархии Тогда
		НачСчетчик = 3;
	КонецЕсли;	
	
	НовСтр = "";
	Для Сч = НачСчетчик По ДанныеИерархииУрока.Количество() - 1 Цикл
		ТекСтр = ДанныеИерархииУрока[Сч];
		ТекСтр = УбратьСпецсимволыИзОписания(ТекСтр);
		Если Прав(ТекСтр, 1) <> "." Тогда
			ТекСтр = ТекСтр + ".";
		КонецЕсли;	
		НовСтр = НовСтр + " " + ТекСтр;
		
		Если СтрДлина(НовСтр) > 100 Тогда
			ДопСтрокиДляОписания.Добавить(ТекСтр); 
		КонецЕсли;	
		
	КонецЦикла;	

	Если Прав(Стр, 1) <> "." Тогда
		Стр = Стр + ".";
	КонецЕсли;	
	
	НовСтр = СокрЛП(СокрЛП(НовСтр) + " " + СокрЛП(Стр));
	Если СтрДлина(НовСтр) > 100 Тогда
		ДопСтрокиДляОписания.Добавить(СокрЛП(Стр)); 
	КонецЕсли;	
	
	Возврат НовСтр;
	
КонецФункции	

&НаКлиенте
Функция ИмяПлейлистаИзДанныхИерархии(ДанныеИерархииУрока, СтроитьТриУровняИерархии)
	Стр1 = ДанныеИерархииУрока[0];
	Стр1 = УбратьСпецсимволыИзОписания(Стр1);
	Если Прав(Стр1, 1) <> "." Тогда
		Стр1 = Стр1 + ".";
	КонецЕсли;	
	
	Если ДанныеИерархииУрока.Количество() > 1 Тогда
		Стр2 = ДанныеИерархииУрока[1];
		Стр2 = УбратьСпецсимволыИзОписания(Стр2);
		Если Прав(Стр2, 1) <> "." Тогда
			Стр2 = Стр2 + ".";
		КонецЕсли;
		
		Стр1 = Стр1 + " " + Стр2;
		
	КонецЕсли;
	
	Если СтроитьТриУровняИерархии И ДанныеИерархииУрока.Количество() > 2 Тогда
		Стр3 = ДанныеИерархииУрока[2];
		Стр3 = УбратьСпецсимволыИзОписания(Стр3);
		Если Прав(Стр3, 1) <> "." Тогда
			Стр3 = Стр3 + ".";
		КонецЕсли;
		
		Стр1 = Стр1 + " " + Стр3;
	КонецЕсли;	
	
	Возврат Стр1;
	
КонецФункции	

&НаКлиенте
Функция УбратьСпецсимволыИзОписания(Знач Стр)
	Стр = СокрЛП(Стр);
	Стр = СокрЛП(СтрЗаменить(Стр, "#", ""));
	Стр = СокрЛП(СтрЗаменить(Стр, "*", ""));
	
	Если Лев(Стр, 2) = "- " Тогда
		Стр = СокрЛП(Сред(Стр, 3));
	КонецЕсли;	
	
	Если Найти(НРег(Стр), "глава") = 0 И Найти(НРег(Стр), "chapter") = 0 Тогда
		Стр = СтрЗаменить(Стр, "1.", "");
		Стр = СтрЗаменить(Стр, "2.", "");
		Стр = СтрЗаменить(Стр, "3.", "");
		Стр = СтрЗаменить(Стр, "4.", "");
		Стр = СтрЗаменить(Стр, "5.", "");
		Стр = СтрЗаменить(Стр, "6.", "");
		Стр = СтрЗаменить(Стр, "7.", "");
		Стр = СтрЗаменить(Стр, "8.", "");
		Стр = СтрЗаменить(Стр, "9.", "");
	КонецЕсли;	
	
	Стр = СокрЛП(Стр);
	
	Возврат Стр;
КонецФункции	

&НаКлиенте
Процедура ДобавитьДанныеИерархииУрока(Стр, ДанныеИерархииУрока)
	
	Если НЕ ЗначениеЗаполнено(Стр) Тогда
		Возврат;
	КонецЕсли;	
	
	Если ДанныеИерархииУрока.Количество() > 0 Тогда
		ПредыдущееЗначение = ДанныеИерархииУрока[ДанныеИерархииУрока.Количество() - 1];
		РазмерОтступаПредыдущееЗначение = РазмерОтступаСлеваУСтроки(ПредыдущееЗначение);
		ТекРазмерОтступа = РазмерОтступаСлеваУСтроки(Стр);
		Если ТекРазмерОтступа > РазмерОтступаПредыдущееЗначение Тогда
			ДанныеИерархииУрока.Добавить(Стр);
		ИначеЕсли ТекРазмерОтступа = РазмерОтступаПредыдущееЗначение Тогда
			ДанныеИерархииУрока[ДанныеИерархииУрока.Количество() - 1] = Стр;
		КонецЕсли;
		
	КонецЕсли;	
	
КонецПроцедуры

&НаКлиенте
Процедура УдалитьИзИерархииУрокаУстаревшиеСтроки(Стр, ДанныеИерархииУрока)
	
	Если НЕ ЗначениеЗаполнено(Стр) Тогда
		Возврат;
	КонецЕсли;	
	
	Если ДанныеИерархииУрока.Количество() = 0 Тогда
		Возврат;
	КонецЕсли;	
	
	ТекРазмерОтступа = РазмерОтступаСлеваУСтроки(Стр);

	МассивИДДляУдаления = Новый Массив; 
	Для Сч = 0 По ДанныеИерархииУрока.Количество() - 1 Цикл
		Если ТекРазмерОтступа <= РазмерОтступаСлеваУСтроки(ДанныеИерархииУрока[Сч]) Тогда
			МассивИДДляУдаления.Добавить(Сч);
		КонецЕсли;	
	КонецЦикла;	
	
	Для Сч = 0 По МассивИДДляУдаления.Количество()-1 Цикл
		Ид = МассивИДДляУдаления[МассивИДДляУдаления.Количество()-1-Сч];
		ДанныеИерархииУрока.Удалить(Ид);
	КонецЦикла;	

КонецПроцедуры

&НаКлиенте
Функция РазмерОтступаСлеваУСтроки(Знач Стр)
	Возврат СтрДлина(Стр) - СтрДлина(СокрЛ(Стр));
КонецФункции	

&НаКлиенте
//И я записываю ссылку на видео "СсылкаНаВидео" по файлу "ИмяФайлаБезРасширения" в файл "ДанныеФайловВПравильномПорядке" Vanessa Automation
//@ЯЗаписываюСсылкуНаВидеоПоФайлуВФайлVanessaAutomation(Парам01,Парам02,Парам03)
Функция ЯЗаписываюСсылкуНаВидеоПоФайлуВФайлVanessaAutomation(СсылкаНаВидео, ИмяФайлаБезРасширения, ИмяФайла) Экспорт
	ЧтениеJSON = Новый ЧтениеJSON();
	ЧтениеJSON.ОткрытьФайл(ИмяФайла);
	ДанныеФайлов = ПрочитатьJSON(ЧтениеJSON);
	ЧтениеJSON.Закрыть();
	
	Нашли = Ложь;
	Для Каждого Элем Из ДанныеФайлов Цикл
		Если Элем.ИмяФайлаБезРасширения = ИмяФайлаБезРасширения И НЕ Элем.ФайлОбработан Тогда
			Элем.СсылкаИнтернет = СсылкаНаВидео;
			Элем.ФайлОбработан = Истина;
			Нашли = Истина;
			Прервать;
		КонецЕсли;	
	КонецЦикла;      
	
	Если НЕ Нашли Тогда
		ВызватьИсключение "В файле " + ИмяФайла + " не найдены данные по " + ИмяФайлаБезРасширения;
	КонецЕсли;	
	
	Ванесса.УдалитьФайлыКомандаСистемы(ИмяФайла);
	
	ЗаписьJson = Вычислить("Новый ЗаписьJson()");
	ЗаписьJson.ОткрытьФайл(ИмяФайла);
	ЗаписатьJSON(ЗаписьJson, ДанныеФайлов); 
	ЗаписьJson.Закрыть();
	
КонецФункции

&НаКлиенте
//И я устанавливаю значение дополнительного параметра Vanessa Automation "ИмяФайлаДляСравнения" в режиме обучения "Значение"
//@ЯУстанавливаюЗначениеДополнительногоПараметраVanessaAutomationВРежимеОбучения(Парам01,Парам02)
Функция ЯУстанавливаюЗначениеДополнительногоПараметраVanessaAutomationВРежимеОбучения(Имя, Значение) Экспорт
	
	Если ТипЗнч(КонтекстСохраняемый.ФормаVAВРежимеОбучения.Объект.ДополнительныеПараметры) <> Тип("Структура") Тогда
		КонтекстСохраняемый.ФормаVAВРежимеОбучения.Объект.ДополнительныеПараметры = Новый Структура;
	КонецЕсли;	
	
	КонтекстСохраняемый.ФормаVAВРежимеОбучения.Объект.ДополнительныеПараметры.Вставить(Имя, Значение);
	
КонецФункции
