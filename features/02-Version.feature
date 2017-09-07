# language: ru

Функциональность: Сравнение строковых версий
    Как ведущий разработчик
    Я хочу единый подход к алгоритмам работы со строками с программистами в команде
    Чтобы не тратить время на обсуждения базовых алголритмов

Контекст:
    Дано существует внешняя обработка 1С с названием "СравнениеСтроковыхВерсий.epf"
    И в обработке "СравнениеСтроковыхВерсий.epf" существут строковый реквизит формы "ЛеваяВерсия" 
    И для строкового реквизита "ЛеваяВерсия" определен формат строки "*.*.*.*"
    И в обработке "СравнениеСтроковыхВерсий.epf" существут строковый реквизит формы "ПраваяВерсия" 
    И для строкового реквизита "ПраваяВерсия" определен формат строки "*.*.*.*"
    И в обработке "СравнениеСтроковыхВерсий.epf" существут кнопка "Сравнить версии"

Структура сценария: Сравнеение строковых версий по примерам значений
    Допустим я открыл обработку "СравнениеСтроковыхВерсий.epf"
    Когда я указываю значение реквизита "ЛеваяВерсия" равным <ЗначениеЛевойВерсии>
    И я указываю значение реквизита "ПраваяВерсия" равным <ЗначениеПравойВерсии>
    Тогда в окне сообщений появляется рузультат сравнения <СтроковоеПредставлениеСравнения>

Примеры:
   	 | ЗначениеЛевойВерсии  | ЗначениеПравойВерсии |  СтроковоеПредставлениеСравнения |
	 | 8.2.13.41            | 8.02.13.41           |  Версии равны                    |
	 | 8.3.1.154            | 8.3.0.154            |  Левая версия больше             |
	 | 8.4.1.1              | 8.4.1.0              |  Правая версия больше            |