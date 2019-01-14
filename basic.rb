# Our One class Question
class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end
# Our six methods
def  enter()
    print "> "
end
def back(name)
    print"Back to the #{name} menu"
    puts("\n")
end  
def the_level(what_level)
    puts "Your Level is #{what_level}"
end
def changed_level(what_level)
    puts "Your level has been changed into #{what_level} level"
end
def same_level(what_level)
    puts "You are already in the #{what_level} mode"
end
def run_test(questions,i)
    answer = ""
    score = 0
    i = i.to_i
    for question in questions
        puts "The question ##{i + 1}"
        puts question.prompt
        enter()
        answer = gets.chomp()
        if answer == question.answer
            score += 1
        end
        i += 1
    end
    puts ("You got " + score.to_s + "/" + questions.length().to_s)
end