def search(fileName,resultFile)
  puts "Введите возраст:"
  studentAge = gets.to_i
  i = 0
  if File.exist?(fileName)
    while (i < stringCounter(fileName) and studentAge != -1)
    file = File.open(resultFile, 'w')
    File.foreach(fileName) do |string|
      if string.include?(studentAge.to_s)
        file.puts(string)
        puts "Студент найден."
        i += 1
      end
    end
    puts "Введите возраст:"
    studentAge = gets.to_i
    end
    if File.zero?(file)
      puts "Нет студентов."
    end
    file.close
  else puts "Файл не найден."
  end
end

def stringCounter(fileName)
  list = []
  File.foreach(fileName) {|string| list.push(string)}

  return list.length
end

def outputAll(fileName)
  if File.exist?(fileName)
    File.foreach(fileName).with_index {|string, index|
      puts "#{index}: #{string}"}
  else puts "Файл не найден."
  end
end
