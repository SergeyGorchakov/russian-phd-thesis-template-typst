#import "../lib.typ": *

#part_count.step() // Обновление счетчика разделов 
= Оформление различных элементов <ch1>

== Форматирование текста <ch1:sec1>

Мы можем сделать *жирный текст* и _курсив_. 

== Ссылки <ch1:sec2>
Сошлёмся на библиографию. Одна ссылка: @Sokolov[с.~54];.
Две ссылки: @Sokolov @Sychev.

Сошлёмся на разделы: @ch1, @ch2:sec1, @ch1:sec2.

Сошлёмся на приложения: @app:A, @app:B.

Сошлёмся на формулу: @eq:equation1.

Сошлёмся на изображение: @fig:typst. 

Сошлемся на определение : @typst. Все определения задаются в файле `common\glossary.typ`. 

Также можно вставлять сокращения @si, @ацп и ссылки на символы: @pi. 

А также ссылку на символы в уравнении: 

$ #gls("pi") #gls("a") $
#print-eq-sym("pi","a")

И при повторном использовании: @si, @ацп. 

Определения для списка сокращений и условных обозначений находятся в файлах `common/acronyms.typ` и `common/symbols.typ`.

== Формулы <ch1:sec3>

=== Нумерованные одиночные формулы <ch1:sec3:sub1>

Вот так может выглядеть формула, которую необходимо вставить в~строку по~тексту: $x approx sin x$ при $x -> 0$.

А вот так выглядит нумерованная отдельностоящая формула c подстрочными и надстрочными индексами:

$ (x_1+x_2)^2 = x_1^2 + 2 x_1 x_2 + x_2^2 $ <eq:equation1>

Формула с неопределенным интегралом:

$ integral f(alpha+x)= sum beta $

Подробнее можно прочитать здесь: https://typst.app/docs/reference/math/equation 