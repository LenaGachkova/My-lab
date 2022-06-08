#-----Этот метод выводит всё содержимое текстового файла-----
def read_text()
  file = File.open("Ferst_test.txt")
  file_data = file.read
end

puts ("-----Это первый метод. Он выводит всё содержимое текстового файла-----")
puts ("\n")
puts read_text()
puts ("\n")

#-----Этот метод находит в файле конкретную строку и выводит её-----

def find_string(id)
  if File.exist?("Ferst_test.txt")
    File.foreach("Ferst_test.txt").with_index do |string, index|
      if index.eql? id
        return "Вот строка, которую вы запрашивали: #{string}"
      end
  end
else return "Ничего не найдено."
end
end

puts ("-----Это второй метод. Он выводит строку по индексу----- ")
puts ("\n")
puts find_string(0)
puts find_string(1)
puts find_string(2)
puts ("\n")

#-----Этот метод находит в файле все строки, в которых указан паттерн-----

def where(pat)
  list = []
  if File.exist?("Ferst_test.txt")
    File.foreach("Ferst_test.txt").with_index do |string|
      if string.include?(pat)
        list.push(string)
      end
    end
    list.each.with_index { |val, index|
      puts "строка: #{index} - #{val}"}
    else puts "Ничего не найдено."
end
end

puts ("-----Это третий метод. Он выводит строку по заданному паттерну----- ")
puts ("\n")
where("код")
where("ТРПО")

#-----Этот метод обновляет конкретную строку в файле-----

def update(line, id, str)
  if File.exist?("Ferst_test.txt")
    file = File.open(line, 'w')
    File.foreach("Ferst_test.txt").with_index do |string, index|
    file.puts (id == index ? str : string)
  end
  file.close
File.write("Ferst_test.txt", File.read(line))
File.deleted(line) if File.exist?(line)
else puts "Ничего не найдено."
end
end

puts ("-----Это четвертый метод. Он обновляет конкретную строку в файле----- ")
puts ("\n")
update(1, 1, "Поменяли.")
