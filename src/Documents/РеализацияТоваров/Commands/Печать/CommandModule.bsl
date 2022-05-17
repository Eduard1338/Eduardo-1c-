
// Обработчик команды печати.
//
// Параметры:
//	ПараметрКоманды - Произвольный - содержит ссылку на объект, для которого вызвана команда печати.
//	ПараметрыВыполненияКоманды - ПараметрыВыполненияКоманды - параметры выполнения команды.
&НаКлиенте
Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
	//{{_КОНСТРУКТОР_ПЕЧАТИ(Печать)
	ТабДок = Новый ТабличныйДокумент;
	Печать(ТабДок, ПараметрКоманды);

	ТабДок.ОтображатьСетку = Ложь;
	ТабДок.Защита = Ложь;
	ТабДок.ТолькоПросмотр = Ложь;
	ТабДок.ОтображатьЗаголовки = Ложь;
	ТабДок.Показать();
	//}}
КонецПроцедуры

// Обработчик команды печати на сервере.
//
// Параметры:
//	ТабДок - ТабличныйДокумент - табличный документ для заполнения и печати.
//	ПараметрКоманды - Произвольный - содержит ссылку на объект, для которого вызвана команда печати.
&НаСервере
Процедура Печать(ТабДок, ПараметрКоманды)
	Документы.РеализацияТоваров.Печать(ТабДок, ПараметрКоманды);
КонецПроцедуры
