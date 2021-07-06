

class Employee

    attr_reader :name, :title, :salary, :employee

    def initialize (name, title, salary, employee=nil)
        @name= name
        @title= title
        @salary=salary
        @employee=employee
    end

    def bonus(multi)
        bonus=(salary)*multi
    end

end

class Manager<Employee

    attr_accessor :employee
    

    def initialize(name, title, salary, employee)
        
        super(name, title, salary, employee)
    end

   
    def bonus(multi)
        sal = employee.my_flatten
        sal.sum * multi
    end

    def self.my_flatten
        sal = []
        employee.each do el
            if el.employee.is a?(Array)
                sal.concat(el.my_flatten)
            else
                sal << el.salary
            end
        end
        sal
    end

  
    
 
    # def emp_collect
    #     # sal=[]
    #     # self.each do |emp|
    #     #     return emp.salary if emp.employee.nil?
    #     #     sal + emp.salary + emp_collect(emp)
    #     # end
    #     # sal
    # end


end


e1 = Employee.new("shawna", "ta", 12000)
e2 = Employee.new("david", "ta", 10000)
ta_m = Manager.new("darren", "ta manager", 1000000, [e1,e2])
founder = Manager.new("ned", "founder", 1000000, [ta_m])



founder.bonus(5) # => 500_000
ta_m.bonus(4) # => 88_000
e2.bonus(3) # => 30_000