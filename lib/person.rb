require 'pry'

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
    if @happiness < 0
      @happiness = 0
    elsif @happiness >10
      @happiness = 10
    else
      @happiness
    end
  end

  def hygiene
    if @hygiene < 0
      @hygiene = 0
    elsif @hygiene > 10
      @hygiene = 10
    else
      @hygiene
    end
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  # Accepts salary, adds to back_account, and returns
  # a string
  def get_paid(salary)
    @bank_account += 100
    "all about the benjamins"
  end

  # Increments a person's hygiene_points by four points
  def take_bath
    @hygiene += 4
    self.hygiene = @hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  # Increments happiness_points by two points
  def work_out
    @happiness += 2
    self.happiness = @happiness
    @hygiene -= 3
    self.hygiene = @hygiene
     "♪ another one bites the dust ♫"
  end

  # Increments the caller and callee's happiness by three
  def call_friend(friend)
    @happiness += 3
    self.happiness = @happiness
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    # If topic == "politics", both callee and caller get sadder
    if topic == "politics"
      @happiness -= 2
      self.happiness = @happiness
      person.happiness -= 2
     "blah blah partisan blah lobbyist"
    elsif topic == "weather"
     @happiness += 1
     self.happiness = @happiness
     person.happiness += 1
     "blah blah sun blah rain"
     else
      "blah blah blah blah blah"
    end
  end

end
