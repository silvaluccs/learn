require 'date'

class PersonalChef
  def make_toast(color)
    puts "Make your toast! #{color}!"
    return self
  end

  def make_milkshake(flavor)
    puts "Make your milkshake! #{flavor}!"
    return self
  end

  def make_eggs(quantity)
    quantity.times do
      puts "Make an egg"
    end
    puts "Made #{quantity} eggs!"
    return self
  end

  def good_morning
    today = Date.today.strftime("%A")
    day_of_year = Date.today.yday.to_s
    year = Date.today.year.to_s
    puts "Good morning! Today is #{today}, the #{day_of_year} day of the year #{year}."
    return self
  end

  def gameplan(meals)
    meals.each do |meal|
      puts "we're having #{meal}!"
    end
    all_meals = meals.join(", ")
    puts "This week we are having: #{all_meals}."
    return self
  end

  def invetory
    produces = {"apples" => 4, "bananas" => 6, "carrots" => 10}
    produces.each do |item, quantity|
      puts "You have #{quantity} #{item}."
    end

    return self
  end

  def water_status(minutes)
    if minutes < 7
      puts "The water is not boiling yet."
    elsif minutes == 7
      puts "It's just barely boiling"
    elsif minutes == 8
      puts "It's boiling!"
    else
      puts "Hot! Hot! Hot!"
    end
    return self
  end

  def countdown(counter)
    while counter > 0
      puts "The counter is #{counter}"
      counter = counter - 1
    end
    return self
  end

    

end

class Butler

  def open_front_dor
    puts "Opening the front door!"
  end

  def open_dor(door)
    puts "Opening the #{door} door!"
  end
    

end


