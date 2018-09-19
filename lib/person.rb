require "pry"

class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(points)
    @happiness = points
    @happiness = 10 if points > 10
    @happiness = 0 if points < 0
  end

  def hygiene=(points)
    @hygiene = points
    @hygiene = 10 if points > 10
    @hygiene = 0 if points < 0
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

# @hygiend > 7 ? true : false

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(paycheck)
    @bank_account += paycheck
     "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
