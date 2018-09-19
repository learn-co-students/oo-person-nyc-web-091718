require 'pry'

class Person
  attr_accessor :clean, :happiness, :bank_account, :hygiene
  attr_reader :name

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
    @happiness
  end

  def hygiene
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
    @hygiene
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    self.hygiene
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.hygiene
    self.happiness += 2
    self.happiness
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    friend.happiness
    self.happiness += 3
    self.happiness
    # binding.pry
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (person, topic)
    if topic == "politics"
      self.happiness -= 2
      self.happiness
      person.happiness -= 2
      person.happiness
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      self.happiness
      person.happiness += 1
      person.happiness
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
