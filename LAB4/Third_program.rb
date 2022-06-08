require_relative 'function_three_programm'

$balance = 100.0
BANK_ACCOUNT = 'balance.txt'
$stateMenu
def bankAccount(fileName)
  if File.exist?(fileName)
    File.foreach(fileName) {|string| $balance = string.to_i}
  else puts "Файл не найден."
  end
  puts "Ваш баланс: #{$balance}"
end

def menu()
  puts "Выбор действия:\n(Q) Выход из программы\n(D) Внести\n(W) Вывести\n(B) Баланс\nВаш выбор: "
  $stateMenu = gets.chomp
end

bankAccount(BANK_ACCOUNT)
menu()
while ($stateMenu != "Q" and $stateMenu != "q") do
  case $stateMenu
    when "D", "d"
      deposit()
      menu()
    when "W", "w"
      withdraw()
      menu()
    when "B", "b"
      balance()
      menu()
  else
    puts "Недопустимый пункт меню."
    break
  end
end

puts "Конец."
