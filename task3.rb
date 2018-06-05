#Сложение временных промежутков

#Пользовательский ввод
t1 = ARGV[0].to_i
t2 = ARGV[1].to_i

#Подсчеты
time = t1 + t2

#Часы
hours = time / 3600
time -= hours * 3600

#Минуты
minutes = time / 60
time -= minutes * 60

#Секунды
seconds = time

#Вывод
case hours
	when 1
		print(hours, " час ", minutes, " минут ", seconds, " секунд \n")
	when 2,3,4
		print(hours, " часa ", minutes, " минут ", seconds, " секунд \n")
	else
		print(hours, " часов ", minutes, " минут ", seconds, " секунд \n")
end






