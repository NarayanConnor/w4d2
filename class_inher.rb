

class Employee

    attr_reader :name, :title, :salary, :boss

    def initialize (name, title, salary, boss)
        @name= name
        @title= title
        @salary=salary
        @boss=boss
    end

    def bonus(multi)
        bonus=(salary)*multi
    end

end

class Manager<Employee

    attr_writer :employees

    def initialize(name, title, salary, boss=nil)
        @employees=[]
        super(name, title, salary, boss)
    end

   
    def bonus(multi)
        # bonus = (total salary of all sub-employees) * multiplier
    end

end

founder = Manager.new("ned", "founder", 1000000)
to_m = Manager.new("darren", "ta manager", 1000000, founder)
e1 = Employee.new("shawna", "ta", 12000, ta_m)
e2 = Employee.new("david", "ta", 10000, ta_m)

ned.bonus(5) # => 500_000
darren.bonus(4) # => 88_000
david.bonus(3) # => 30_000