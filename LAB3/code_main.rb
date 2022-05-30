#---Метод, который выводит цифру 2, если переданное слово заканчивается на "CS"
#---в противном случае выводит слово наоборот.

def end_CS(word)
  word_drow = ""
  if word[word.size()-1]=="S" and word[word.size()-2]=="C"
    return (2**(word.size()-1))
  else return word.reverse
  end
end

puts('Первый эксперемент. Ввод слова "wordCS". Ожидаемый вывод: 32')
puts('Вывод:')
puts end_CS("wordCS")
puts('Второй эксперемент. Ввод слова "Котофей". Ожидаемый вывод: йефотоК')
puts('Вывод:')
puts end_CS("Котофей")

#______________________________________________________________________________
#---Метод, который выводит массив покемонов. Должен содержать следующие запросы:
#---Сколько покемонов добавить?
#---Указанное на предыдущем этапе число раз, спросит имя и цвет каждого покемона.
#---Выведет в консоль массив, содержащий хеши покемонов в формате:
#---[{ name: 'Pikachu', color: 'Yellow' }, … n times{}]

puts ('')
def pokemon()
  puts ('Введите количество Покемонов: ')
  arr = Array.new
  quantity = gets.to_i
  index = 0
  while index < quantity do
    puts ('Введите имя Покемона: ')
    name_pokemon = gets.chomp()
    puts ('Введите цвет Покемона: ')
    color_pokemon = gets.chomp()
    index += 1
    arr.push({name: name_pokemon, color: color_pokemon})
  end
  arr.each {|hash| puts hash}
end

pokemon()
