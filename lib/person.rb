
class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    if @happiness >= 10
      @happiness = 10
    elsif @happiness <= 0
      @happiness = 0
    else
      @happiness
    end
  end
#binding.pry
def hygiene
  if @hygiene >= 10
    @hygiene = 10
  elsif @hygiene <= 0
    @hygiene = 0
  else
    @hygiene
  end
end


  def happy?
    if @happiness > 7
      return true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      false
    end
  end

  def get_paid(amount)
    @bank_account += amount
    return "all about the benjamins"
  end

  def take_bath
     @hygiene +=4
     self.hygiene
self.hygiene = @hygiene
     "♪ Rub-a-dub just relaxing in the tub ♫"
   end

  def work_out
    @happiness += 2
    self.happiness = @happiness
    @hygiene -= 3
    self.hygiene = @hygiene
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    @happiness += 3
    self.happiness = @happiness
    person.happiness += 3
    return "Hi #{person.name}! It's #{@name}. How are you?"
  end

  def start_conversation(name, topic)
  if topic == "politics"
    @happiness -= 2
    self.happiness = @happiness
    name.happiness -= 2
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    @happiness += 1
    self.happiness = @happiness
    name.happiness += 1
    return "blah blah sun blah rain"
  else
    return "blah blah blah blah blah"
  end
end



#binding.pry

end #end class
