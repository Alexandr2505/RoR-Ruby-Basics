require 'yaml'

class Animal


  def feed
    stat_save = YAML.load( File.read("animal.yaml"))
    @name = stat_save[0]["name"]
    @hungry = stat_save[0] ["hungry"]
    puts "Вы кормите #{@name}"
    @hungry += 25
    status = ["hungry" => @hungry]
    File.open("animal.yaml", "w") { |file| file.write(status.to_yaml) }
    puts @hungry
  end

  def putToBed
    puts "Вы укладываете #{@name} спать."
      if @sleepy <= 90
            stat_save = YAML.load( File.read("animal.yaml"))
            @name = stat_save[0]["name"]
            @hungry = stat_save[0] ["hungry"]
            puts "#{@name} крепко спит."
            @sleepy += 80
            @hungry -= 5
            puts "#{@name} медленно просыпается."
            File.open("animal.yaml", "w") { |file| file.write(status.to_yaml) }
            puts @hungry
      end
    if @sleepy > 90
       stat_save = YAML.load( File.read("animal.yaml"))
       @name = stat_save[0]["name"]
       @hungry = stat_save[0] ["hungry"]
       puts "Вы кормите #{@name}"
       puts "#{@name} не хочет спать. Он бодр!"
    end
  end

   def walk
    stat_save = YAML.load( File.read("animal.yaml"))
    @name = stat_save[0]["name"]
    @hungry = stat_save[0] ["hungry"]
    puts "Вы кормите #{@name}"
    puts "Вы выгуливаете #{@name}"
    @mood += 15
    @hungry -= 10
    @sleepy -= 5
    File.open("animal.yaml", "w") { |file| file.write(status.to_yaml) }
    puts @hungry
  end

  def toss
    stat_save = YAML.load( File.read("animal.yaml"))
    @name = stat_save[0]["name"]
    @hungry = stat_save[0] ["hungry"]
    puts "Вы кормите #{@name}"
    puts "Вы играете с #{@name}" 
    puts 'Он радуеться, как маленкий ребёнок!'
    @mood += 20
    @hungry -=  15
    @sleepy -= 5
    File.open("animal.yaml", "w") { |file| file.write(status.to_yaml) }
    puts @hungry
  end

  def wash
    stat_save = YAML.load( File.read("animal.yaml"))
    @name = stat_save[0]["name"]
    @hungry = stat_save[0] ["hungry"]
    puts "Вы кормите #{@name}"
    puts "#{@name} моется."
    puts 'Он радуеться -- чистоте.'
    @mood += 5
    @sleepy -= 5
    File.open("animal.yaml", "w") { |file| file.write(status.to_yaml) }
    puts @hungry
  end

  def help
    puts "1 - При кормлении пополняются жизни(life+ ), и уменшаеться голод(@hungry+) и улучшается настроение(@mood+)"
    puts "2 - При убаюкивании увиличевается голод ( @hungry-), но питомец висипаеться(@sleepy+)"
    puts "3 - На прогулке увиличевается голод (@hungry- ) и сондивость(@sleepy-), но увиличевается настроение(@mood+)"
    puts "4 - При мытье увиличевается сондивость(@sleepy-) но увиличевается настроение(@mood+)"
    puts "5 - В игре увиличевается голод (@hungry- ) и сондивость(sleepy-), но увиличевается настроение(@mood)"
    puts "6 - Выход из програмы"
    puts "В начале написать имя - только на англисийском"
  end

end