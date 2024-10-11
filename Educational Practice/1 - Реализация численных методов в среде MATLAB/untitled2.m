clear all
clc
x = 0;
while( x < 1.2 || x > 3.9) 
x = read_num();%функция, котороя проверяет корректность введенного числа
end
disp('Рассчёт функцией Ньютона: ')
newNewton(x);%функция, которая рассчитывает значение Y по Ньютону
disp('Встроенная функция Matlab: ')
build_in(x);%функция, которая рассчитывает значение Y по встроенной функции Матлаба

read_num.m:
function [out] = read_num()
out = input ('Введите число x, которое находится от 1.2 до 3.9: ', 's');
while( isnan(str2double(out)))
disp ('Вы ввели не число, нужно ввести число от 1.2 до 3.9');
out = input('Введите число от 1.2 до 3.9:','s');
end    
   out = str2double(out);
end

