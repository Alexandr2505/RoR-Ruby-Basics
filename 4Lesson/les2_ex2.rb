require 'yaml'
class Animal
  attr_accessor :name

  def initialize(names)

    @name = names
    @breed = "Cat"
    @life = 12
    @mood = 120
    @hungry = 120
    @sleepy = 220
    @t = Time.new
  end

  def feed
    puts "Вы кормите #{@name}"
    @hungry += 25
    $life = 155
  end

  def putToBed
    puts "Вы укладываете #{@name} спать."
    3.times {if @sleepy <= 90
        time_is_coming
      end}

      if @sleepy <= 90
        puts "#{@breed} : #{@name} крепко спит."
        @sleepy += 80
        @hungry -= 5
        puts "#{@breed} : #{@name} медленно просыпается."
      end
    if @sleepy > 90
      puts "#{@breed}: #{@name} не хочет спать. Он бодр!"
    end
  end

   def walk
    puts "Вы выгуливаете #{@name}"
    @mood += 15
    @hungry -= 10
    @sleepy -= 5
    time_is_coming
  end

  def toss
    puts "Вы играете с  #{@name}" 
    puts 'Он радуеться, как маленкий ребёнок!'
    @mood += 20
    @hungry -=  15
    @sleepy -= 5
    time_is_coming
  end

  def wash
    puts "#{@name} моется."
    puts 'Он радуеться -- чистоте.'
    @mood += 5
    @sleepy -= 5
    time_is_coming
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

  private

  def time_is_coming # проходит некоторое время
      @hungry -= rand(6)
      @sleepy -= rand(6)
      @mood -= rand(4) 
      if @t + 10 < Time.new
        a = rand(2)
          if a == 0
            puts "Небеса помогают нам, показания #{@name} стали лучше"
            @hungry += rand(14)
            @sleepy += rand(14)
            @mood += rand(9) 
          else 
            puts "Небеса против нас, показания #{@name} стали хуже"
            @hungry -= rand(6)
            @sleepy -= rand(6)
            @mood -= rand(4)
          end
      end     
  end

end