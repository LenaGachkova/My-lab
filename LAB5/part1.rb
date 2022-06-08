class CashMachine
    def initialize
      @balance = 100
      @stateMenu = '0'
      @bank_account = 'balance.txt'
    end

    def bankAccount()
      if File.exist?(@bank_account)
        File.foreach(@bank_account) { |string| @balance = string.to_i }
      else puts 'Файл не найден'
      end
      puts "Ваш баланс: #{@balance}"
    end

    def menu
      puts "Выберите действие:\n(Q) Выход из программы\n(D) Внести\n(W) Вывести\n(B) Баланс\nВаш выбор: "
      @stateMenu = gets.chomp
    end

    def init
      menu
      while (@stateMenu != 'Q') && (@stateMenu != 'q')
        case @stateMenu
        when 'D', 'd'
          deposit
          menu
        when 'W', 'w'
          withdraw
          menu
        when 'B', 'b'
          balance
          menu
        else
          puts 'Недопустимый пункт меню.'
        end
      end
      puts 'Done!'
    end

    def deposit
      puts 'Введите сумму, которую вы хотите внести:'
      depositSum = gets.to_i
      if depositSum > 0
        @balance += depositSum
      else puts 'Некорректные данные.'
      end
      puts "Ваш баланс: #{@balance}"
    end

    def withdraw
      puts 'Введите сумму, которую хотите вывести:'
      withdrawSum = gets.to_i
      if (withdrawSum > 0) && (withdrawSum <= @balance)
        @balance -= withdrawSum
      else puts 'Некорректные данные.'
      end
      puts "Ваш баланс сейчас: #{@balance}"
    end

    def balance
      puts "Ваш баланс сейчас: #{@balance}"
    end
  end

  bankAccount = CashMachine.new()
  bankAccount.bankAccount()
  bankAccount.init
