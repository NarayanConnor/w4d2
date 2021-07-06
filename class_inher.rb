

class Employee

    attr_reader :name, :title, :salary, :boss

    def initialize ( name, title,salary,boss)
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

    def initialize(emp,bos=nil)
        @employees=[emp]
        @boss=boss
    end

   
    def bonus(multi)
        #bonus = (total salary of all sub-employees) * multiplier
    end        



end