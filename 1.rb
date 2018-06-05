#Сумма степеней "e" чисел от 1 до n

def count(n, e)
	result = 0
	for i in (1..n)
		result += i**e
	end
	return result
end


#Пользовательский ввод
n, e = ARGV[0].to_i, ARGV[1].to_i

#Вывод
puts(count(n, e))