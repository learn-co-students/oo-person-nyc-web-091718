# your code goes here
require 'pry'

class Person
attr_reader :name
attr_accessor :bank_account, :happiness, :hygiene

 def initialize(name) #(bank_account=25)
   @name = name
   @bank_account = 25
 #  if happiness >= 0 && happiness <= 10
 #    @happiness = happiness
 #  end
 #  if happiness < 0
 #    @happiness = 0
 #  end
 #  if @happiness > 10
 #    @happiness = 10
 #  end
   @hygiene = 8
   # if self.happiness < 0
   #   @happiness = 0
   # elsif self.happiness > 10
   #   @happiness = 10
   # else
   #   @happiness = self.happiness
   @happiness = 8

#    @happiness = self.happiness
 #  @bank_account = 25
 end


 def happiness=(happiness)
   if happiness < 0
     @happiness = 0
   elsif happiness > 10
     @happiness = 10
   else
     @happiness = happiness
   end
 end


 def hygiene=(hygiene)
   if hygiene < 0
     @hygiene = 0
   elsif hygiene > 10
     @hygiene = 10
   else
     @hygiene = hygiene
   end
 end

 def clean?
   if @hygiene > 7
     true
   else
     false
   end
 end


 def happy?
   if @happiness > 7
     true
   else
     false
   end
 end
 #
 # en
 def get_paid(salary_amount)
   @bank_account += salary_amount
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


 def start_conversation(friend, topic)
   if topic == "politics"
     self.happiness -= 2
     friend.happiness -= 2
     "blah blah partisan blah lobbyist"
   elsif topic == "weather"
     self.happiness += 1
     friend.happiness += 1
     "blah blah sun blah rain"
   else "blah blah blah blah blah"
   end
 end

 # def happiness(happiness_points = :sunglasses:
 #
 #   # if happiness_points < 0
 #   #   happiness_points = 0
 #   # end
 #   # if happiness_points > 10
 #   #   happiness_points = 10
 #   # end
 #   happiness_points
 # #  binding.pry
 # end

 # def hygiene
 #
 # end

end

#binding.pry
