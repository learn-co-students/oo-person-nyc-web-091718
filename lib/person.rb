# your code goes here
class Person
  attr_accessor :bank_account  #:happiness, :hygiene
  attr_reader :name, :happiness, :hygiene

  def happiness= (happiness)
    @happiness = happiness

    if happiness > 10
      @happiness = 10
    end

    if happiness < 0
      @happiness = 0
    end
  end

  def hygiene= (hygiene)
    @hygiene = hygiene

    if hygiene > 10
      @hygiene = 10
    end

    if hygiene < 0
      @hygiene = 0
    end
  end

  def initialize(name)
    @name = name
    @bank_account = 25
    self.happiness = 8
    self.hygiene = 8
  end #end initialize

  def clean?
    # question? if it's true then return the result on the left, otherwise return result on the right of the :
    # this shortened stmt is only good for 1 if-else pair
    self.hygiene > 7 ? true : false
  end #end clean?

  def happy?
    self.happiness > 7 ? true : false
  end #end happy?

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end #end get_paid

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end #end take_bath

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end #work_out

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end #end call_friend

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
    end #end if
  end #end start_conversation

end #end Person class
