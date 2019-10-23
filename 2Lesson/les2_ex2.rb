class Animal
  def initialize (name)
    puts "Введите вид  питомца"
    breed =  gets.chomp

    @name = name
    @breed = breed
    @life = 10
    @mood = 100
    @hungry = 100
    @sleepy = 200

    puts breed + " :" + name + ' родился.'
  end

  def feed
    puts 'Вы кормите ' + @name
    @hungry = @hungry + 25
    time_is_coming
    choose
  end

  def putToBed
    puts 'Вы укладываете ' + @name + ' спать.'
    3.times do
      if @sleepy <= 90
        time_is_coming
      end
    end
      if @sleepy <= 90
        puts @breed + " :" + @name + ' крепко спит.'
        @sleepy = @sleepy + 80
        @hungry = @hungry - 5
        puts @breed + " :" + @name + ' медленно просыпается.'
        choose
      end
    if @sleepy > 90
      puts @breed + ": " + @name + ' не хочет спать. Он бодр!'
      choose
    end
  end

   def walk
    puts 'Вы выгуливаете ' + @name
    @mood = @mood + 15
    @hungry = @hungry - 10
    @sleepy = @sleepy - 5
    time_is_coming
    time_is_coming
    choose
  end

  def toss
    puts 'Вы играете с ' + @breed + " " + @name 
    puts 'Он радуеться, как маленкий ребёнок!'
    @mood = @mood + 20
    @hungry = @hungry - 15
    @sleepy = @sleepy - 5
    time_is_coming
    choose
  end

  def wash
    puts @breed + " " + @name + ' моется.'
    puts 'Он радуеться -- чистоте.'
    @mood = @mood + 5
    @sleepy = @sleepy - 5
    time_is_coming
    choose
  end

  def check
    hungry? 
    lifes?
    sleepy?
    moody?
  end

  def help
    puts "1 - При кормлении пополняются жизни(life+ ), и уменшаеться голод(@hungry+) и улучшается настроение(@mood+)"
    puts "2 - При убаюкивании увиличевается голод ( @hungry-), но питомец висипаеться(@sleepy+)"
    puts "3 - На прогулке увиличевается голод (@hungry- ) и сондивость(@sleepy-), но увиличевается настроение(@mood+)"
    puts "4 - При мытье увиличевается сондивость(@sleepy-) но увиличевается настроение(@mood+)"
    puts "5 - В игре увиличевается голод (@hungry- ) и сондивость(sleepy-), но увиличевается настроение(@mood)"
    puts "6 - Выход из програмы"
    puts "* Если долго не выбтрать вариант, то при следующем выборе случаеться неожиданость(изменение характеристик)"
    puts "В начале написать имя и вид животного (папугай, кот и т.д.) - только на англисийском"
  end

  def choose
    puts
    puts
    puts "Выберите действие:"
    puts "Кормить - 1"
    puts "Убаюкивать - 2"
    puts "Гулять - 3"
    puts "Играть - 4"
    puts "Мыть - 5"
    puts "Выйти из програмы - 6"
    puts "Инструкция - 7"
    puts

    puts "Количество жизней ", @life
    puts "Уровень счастья ", @mood


    @t = Time.new
    x = gets.chomp 
      case x.to_i
      when 1
        check
        feed
      when 2
        check
        putToBed
      when 3
        check
        walk
      when 4
        check
        toss
      when 5
        check
        wash
      when 6
        abort "Вы вышли из програмы"
      when 7
        help
      else
        puts "Неправильный выбор, введите число от 1 до 6"
        choose
      end

    end

  private

  def time_is_coming # проходит некоторое время
      @hungry = @hungry - rand(6)
      @sleepy = @sleepy - rand(6)
      @mood = @mood - rand(4) 
      if @t + 10 < Time.new
        a = rand(2)
          if a == 0 then
            puts "Небеса помогают нам, показания "  + @name + " стали лучше"
            @hungry = @hungry + rand(14)
            @sleepy = @sleepy + rand(14)
            @mood = @mood + rand(9) 
          else 
            puts "Небеса против нас, показания "  + @name + " стали хуже"
            @hungry = @hungry - rand(6)
            @sleepy = @sleepy - rand(6)
            @mood = @mood - rand(4)
          end
      end
      
  end  

  def hungry?  
    if @hungry <= 40 then
      @life = @life - 1
      @mood = @mood - 15
      puts"Твой питомец, голоден "
      choose
  end
  
  def sleepy? 
    if @sleepy <= 40 then
      @life = @life - 1
      @mood = @mood - 15
      puts"Твой питомец, хочет спать "
      choose
    end
  end

  def moody? 
    if @mood <= 40 then
      @life = @life - 3
      puts"Твой питомец, грустит "
      choose
    end
  end

  def lifes? 
    if @life <= 0 then
      puts "Питомец умер!"
      exit
    end
  end
end

end


  puts "Введите имя питомца"
  name = gets.chomp

  pet = Animal.new name
  pet.choose
