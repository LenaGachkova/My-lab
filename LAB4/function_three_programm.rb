def deposit()
  puts "Введите сумму, которую хотите внести:"
  depositSum = gets.to_i
  if depositSum > 0
    $balance = $balance + depositSum
  else puts "Некорректные данные."
  end
  puts "Ваш баланс сейчас: #{$balance}"
end

def withdraw()
  puts "Введите сумму, которую хотите вывести:"
  withdrawSum = gets.to_i
  if (withdrawSum > 0 and withdrawSum <= $balance)
    $balance = $balance - withdrawSum
  else puts "Некорректные данные."
  end
  puts "Ваш баланс сейчас: #{$balance}"
end


def balance()
  puts "Ваш баланс сейчас: #{$balance}"
end
