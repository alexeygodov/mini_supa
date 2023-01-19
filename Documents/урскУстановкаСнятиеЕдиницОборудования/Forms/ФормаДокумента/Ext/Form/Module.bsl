﻿#Область ОбработчикиСобытийЭлементовШапкиФормы
&НаСервере
Процедура УстановитьЗначениеТехническогоМеста() 
	Запрос = Новый Запрос;
	Запрос.Текст = 
	 "ВЫБРАТЬ
	 |	урскЕдиницыОборудованияНаТехническихМестахСрезПоследних.ТехническоеМесто КАК ТехническоеМесто
	 |ИЗ
	 |	РегистрСведений.урскЕдиницыОборудованияНаТехническихМестах.СрезПоследних(, ЕдиницыОборудования = &ЕдиницыОборудования) КАК урскЕдиницыОборудованияНаТехническихМестахСрезПоследних";
	Запрос.УстановитьПараметр("ЕдиницыОборудования", Объект.ЕдиницаОборудования);
	Выборка = Запрос.Выполнить().Выбрать();
	Пока Выборка.Следующий() Цикл
		ТехническоеМесто = Выборка.ТехническоеМесто;
	КонецЦикла;
	
КонецПроцедуры 

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	УстановитьЗначениеТехническогоМеста() ;
КонецПроцедуры

#КонецОбласти

