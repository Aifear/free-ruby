#Сложение временных промежутков

def hour(hours)
	case hours
		when 0
			return ""
		when 1
			return (hours.to_s + " час ")
		when 2,3,4
			return (hours.to_s + " часа ")
		else
			return (hours.to_s + " часов ")
		end
end

def min(minutes)
	case minutes
		when 0
			return ""
		when 1
			return (minutes.to_s + " минута ")
		when 2,3,4
			return (minutes.to_s + " минуты ")
		else
			return (minutes.to_s + " минут ")
		end
end

def sec(seconds)
	case seconds
		when 0
			return ""
		when 1
			return (seconds.to_s + " секунда ")
		when 2,3,4
			return (seconds.to_s + " секунды ")
		else
			return (seconds.to_s + " секунд ")
		end
end


#Пользовательский ввод
t1, t2 = ARGV[0].to_i, ARGV[1].to_i

#Подсчеты
time = t1 + t2

hours = time / 3600
time -= hours * 3600

minutes = time / 60
time -= minutes * 60

seconds = time

#Вывод
puts(hour(hours) + min(minutes) + sec(seconds))