class Bootcamp
    attr_accessor :name, :slogan, :student_capacity, :teachers, :students, :grades
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |hash, key| hash[key] = [] } # Default array for each key
    end

    def hire(arg)
        self.teachers << arg
    end

    def enroll(arg)
        return false if @students.size >= @student_capacity
        @students << arg
        return true 
    end

    def enrolled?(arg)
        return true if self.students.include?(arg)
        return false
    end

    def student_to_teacher_ratio()
        return self.students.size / self.teachers.size
    end

    def add_grade(name, value)
        if @students.include?(name)
            #self.grades[student]
            @grades[name] << value
            return true
        else 
            return false
        end
    end

    def num_grades(name)
        return @grades[name].length
    end

    def average_grade(name)
        if !self.students.include?(name) || self.grades[name].empty?
            return nil
        end
        return (self.grades[name].sum) / self.grades[name].length
    end
end