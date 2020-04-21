# your code goes here
class Person 
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    
    def happiness=(index)
        if index < 0 
            @happiness = 0
        elsif index > 10
            @happiness = 10
        else
            @happiness = index
        end
    end

    def hygiene=(index)
        if index < 0 
            @hygiene = 0
        elsif index > 10
            @hygiene = 10
        else
            @hygiene = index
        end
    end

    def happy? 
        self.happiness > 7 ? true : false
    end

    def clean? 
        self.hygiene > 7 ? true : false
    end

    def get_paid(salary)
        self.bank_account += salary
        return 'all about the benjamins'
    end

    def take_bath
        self.hygiene=(self.hygiene + 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.hygiene=(self.hygiene - 3)
        self.happiness=(self.happiness + 2)
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness=(self.happiness + 3)
        friend.happiness=(friend.happiness + 3)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness=(self.happiness - 2)
            person.happiness=(person.happiness - 2)
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness=(self.happiness + 1)
            person.happiness=(person.happiness + 1)
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end



end