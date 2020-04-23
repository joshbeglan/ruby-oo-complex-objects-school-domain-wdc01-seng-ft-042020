# code here!

class School
    
    attr_accessor :roster, :name

    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def add_student(name, grade)
        roster[grade] = [] unless roster[grade]
        roster[grade] << name
    end

    def grade(num)
        roster[num]
    end

    def sort
        sorted = {}
        roster.each {|key, values| sorted[key] = values.sort}
        sorted
    end

 end