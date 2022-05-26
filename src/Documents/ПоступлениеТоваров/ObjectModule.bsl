Процедура ОбработкаПроведения(Отказ,Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	//Данный фрагмент построен конструктором.
	//При повторном использовании конструктора, внесенные вручную данные будут утеряны!

	// регистр ОстаткиТоваров
	Движения.ОстаткиТоваров.Записывать = Истина;
	Для Каждого ТекСтрокаТовары из Товары Цикл
		Движение = Движения.ОстаткиТоваров.Добавить();
		Движение.Период = Дата;
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Номенклатура = ТекСтрокаТовары.Номенклатура;
		Движение.Количество = ТекСтрокаТовары.Количество;
		Движение.Сумма = ТекСтрокаТовары.Сумма;
	КонецЦикла;

	// регистр Закупки
	Движения.Закупки.Записывать = Истина;
	Для Каждого ТекСтрокаТовары из Товары Цикл
		Движение = Движения.Закупки.Добавить();
		Движение.Период = Дата;
		Движение.Номенклатру = ТекСтрокаТовары.Номенклатура;
		Движение.Контрагент = Контрагент;
		Движение.Количество = ТекСтрокаТовары.Количество;
		Движение.Сумма = ТекСтрокаТовары.Сумма;
	КонецЦикла;

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры