require_relative "function_two_program"

$stateMenu
def menu()
  puts "Выберите действие:\n(0) Выход из программы\n(1) Вывод исходных данных\n(2) Входные данные\n(3) Выходные данные\nВаш выбор: "
  $stateMenu = gets.to_i
end
menu()
$fileName = '2_test.txt'
$resultFile = 'result.txt'
while $stateMenu != 0 do
  case $stateMenu
    when 1
      outputAll($fileName)
      menu()
    when 2
      search($fileName, $resultFile)
      menu()
    when 3
      outputAll($resultFile)
      menu()
  else
    puts "Недопустимый пункт."
  end
end

puts "Конец."
