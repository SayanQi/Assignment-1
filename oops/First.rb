# write a program to create a class with data members and initialize using constructor. Add another instance method that will return the member data.

class First

    # define constructor
    def initialize(name)
        @name = name
    end

    # define a method that return instance var
    def name
        @name
    end

end

obj = First.new("sayan")

puts ( obj.name )
