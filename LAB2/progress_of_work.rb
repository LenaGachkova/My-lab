puts ("Это первое задание по лабараторной работе №2")
def greeting(name, surName, age)
  if age<18
    return "Привет, #{name} #{surName}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано."
  else
    return "Привет, #{name} #{surName}. Самое время заняться делом."
  end
end

puts ("--Первый эксперемент--")
puts greeting("Иван ", "Иванов", 19)
puts ("--Второй эксперемент--")
puts greeting("Лена ", "Соколова", 6)
puts ("--Третий эксперемент--")
puts greeting("Алексей ", "Соловьев", 18)

#----------------------------------------
puts ("Это второе задание по лабараторной работе №2")
def foobar(a, b)
  sum = a + b
  if a == 20 or b == 20
    if a == 20
        return ("Второе число: " + b.to_s)
    else
        return ("Второе число: " + a.to_s)
    end
  else
    return ("Сумма чисел: " + sum.to_s)
  end
end

puts ("--Первый эксперемент--")
puts foobar(2, 2)
puts ("--Второй эксперемент--")
puts foobar(20, 4)
puts ("--Третий эксперемент--")
puts foobar(20, 45)
