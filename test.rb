# Notre test
score = 0
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
class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end
def  enter()
    print "> "
end
EASY_QUESTION_1 = "What is the first book in the bible?\n(a)Genesis\t(b)Exode\t(c)Psalm\t(d)Proverbs"
EASY_QUESTION_2 = "Who is the first killer in the bible?\n(a)Adam\t(b)Abraham\t(c)Abel\t(d)Isaac"
EASY_QUESTION_3 = "What is the true name of Israel?\n(a)Esau\t(b)Ephraim\t(c)Joseph\t(d)Jacob"
EASY_QUESTION_4 = "What is the name of the father of King Solomon?\n(a)King David\t(b)King Saul\t(c)Daniel\t(d)Jese"
EASY_QUESTION_5 = "Who is the dreamer that becomes a pharaon's right hand?\n(a)Benjamin\t(b)Simeon\t(c)Reuben\t(d)Joseph"
EASY_QUESTION_6 = "Who deliever Israel from Egypt?\t(a)Abraham\t(b)David\t(c)Moses\(d)Aaron"
EASY_QUESTION_7 = "What?\n(a)\t(b)\t(c)\t(d)"
EASY_QUESTION_8 = "Who?\n(a)\t(b)\t(c)\t(d)"
EASY_QUESTION_9 = "what?\n(a)\t(b)\t(c)\t(d)"
EASY_QUESTION_10 = "where?\n(a)\t(b)\t(c)\t(d)"
EASY_QUESTION_11 = "what?\n(a)\t(b)\t(c)\t(d)"
EASY_QUESTION_12 = "when?\n(a)\t(b)\t(c)\t(d)"
EASY_QUESTION_13 = "what\n(a)\t(b)\t(c)\t(d)"
EASY_QUESTION_14 = "who?\n(a)\t(b)\t(c)\t(d)"
EASY_QUESTION_15 = "what?\n(a)\t(b)\t(c)\t(d)"

easy_questions = [
    Question.new(EASY_QUESTION_1, "a"),
    Question.new(EASY_QUESTION_2, "c"),
    Question.new(EASY_QUESTION_3, "d"),
    Question.new(EASY_QUESTION_4, "a"),
    Question.new(EASY_QUESTION_5, "d"),
    Question.new(EASY_QUESTION_6, "c"),
    Question.new(EASY_QUESTION_7, "a"),
    Question.new(EASY_QUESTION_8, "c"),
    Question.new(EASY_QUESTION_9, "d"),
    Question.new(EASY_QUESTION_10, "a"),
    Question.new(EASY_QUESTION_11, "d"),
    Question.new(EASY_QUESTION_12, "c"),
    Question.new(EASY_QUESTION_13, "a"),
    Question.new(EASY_QUESTION_14, "c"),
    Question.new(EASY_QUESTION_15, "d")
]
run_test(easy_questions, 0)
puts "#{score}"
run_test(easy_questions, 0)