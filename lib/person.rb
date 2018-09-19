# your code goes here
require 'pry'

class Person

attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account
def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene  = 8
end

def clamp (value)
  if value> 10
    10
  elsif value < 0
    0
  else
    value
  end
end

def happiness=(new_happiness)
  @happiness = clamp(new_happiness)
end

def hygiene=(new_hygiene)
  @hygiene = clamp(new_hygiene)
end

def happy?
  @happiness > 7
end

def clean?
  @hygiene > 7
end

def get_paid(salary)
  @bank_account += salary
  "all about the benjamins"
end

def take_bath
  self.hygiene += 4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.hygiene -= 3
  self.happiness += 2
  "♪ another one bites the dust ♫"
end

def call_friend(friend)
  friend.happiness += 3
  self.happiness += 3
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
end # end of person
