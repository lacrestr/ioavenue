require "./person.rb"

class Voter < Person
    attr_accessr politics
    
    def initialize(name, politics)
        super(name)
        @politics = politics
end

