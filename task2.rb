#Шифр Цезаря
#Функция кодировки символа
def swap(letter, k, mass)
	let_index = (mass.index(letter).to_i + k) % 26
	result = mass[let_index]
	return result
end

#Пользовательский ввод
input_string = ARGV[0]
step = ARGV[1].to_i

#Переменные
result = ""
length = input_string.size
lower = ("a".."z").to_a
upper = ("A".."Z").to_a

#Начало
for i in (0...length)
	if lower.index(input_string[i])
		result += swap(input_string[i], step, lower)
	else
		result += swap(input_string[i], step, upper)
	end
end

#Вывод результата
puts(result)

