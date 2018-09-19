
class Person
 attr_reader :name, :happiness, :hygiene
 attr_accessor :balance

 def initialize(name)
   @name = name
   @balance = 25
   @happiness = 8
   @hygiene = 8
 end

 def bank_account
   @balance
 end

 def bank_account=(amount)
   @balance += amount
 end

 def happiness=(happy_points)
   #binding.pry
   if happy_points <= 10 && happy_points > 0
     @happiness = happy_points
   elsif happy_points > 10
     @happiness = 10
   elsif happy_points < 0
     @happiness = 0
   end
 end

 def hygiene=(unstank)
   if unstank <= 10 && unstank > 0
     @hygiene = unstank
   elsif unstank > 10
     @hygiene = 10
   elsif unstank < 0
     @hygiene = 0
   end
 end

 def happy?
   if @happiness > 7
     true
   else
     false
   end
 end

 def clean?
   if @hygiene > 7
     true
   else
     false
   end
 end

 def get_paid(salary)
   self.bank_account=(salary)
   "all about the benjamins"

 end

 def take_bath
   self.hygiene=(@hygiene + 4)
   "♪ Rub-a-dub just relaxing in the tub ♫"

 end

 def work_out
   self.hygiene=(@hygiene - 3)
   self.happiness=(@happiness + 2)
   "♪ another one bites the dust ♫"
 end

 def call_friend(friend)
   self.happiness=(self.happiness + 3)
   friend.happiness=(friend.happiness + 3)
   "Hi #{friend.name}! It's #{self.name}. How are you?"
 end

 def start_conversation(person, topic)
   if topic == "politics"
     self.happiness=(self.happiness - 2)
     person.happiness=(person.happiness - 2)
     "blah blah partisan blah lobbyist"
   elsif topic == "weather"
     self.happiness=(self.happiness + 1)
     person.happiness=(person.happiness + 1)
     "blah blah sun blah rain"
   else
     "blah blah blah blah blah"
   end
 end


end
