require "./english.rb"
require "./french.rb"
require "./basic.rb"
# Menu in malagasy language
def MG
    # Level by default
    your_level_default = LEVEL[0]
    # language by default
    your_language_default = LANGUE[0]
    # All the questions
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
    intemediate_questions = [
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
    difficult_questions = [
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
    # Momban'ny siteweb
    Momba = {
        "VERSION" => "0.0.1draft1",
        "AUTHOR" => "RajaomalalaSendra",
        "LICENCE" => "MIT Licence",
        "ABOUT" => "This is the first release of the software",
        "OS" => "Ubuntu 18.04 Beaver Linux",
        "LANGUAGE" => "written in ruby 2.5.3",
        "COPYRIGHT" => "January 2019",
        "GAME" => "There are 3 levels
    Easy: 15 questions in the basic knowledge of bible
    Intermediate: 15 questions in the intermediate knowledge of bible
    Difficult: 15 questions in the difficult knowledge of bible"
    }
    puts "Tafiditra amin'ny teny Malagasy ianao"
    while true
        # Menu in the enter
        puts "1.Menu\t2.New Game\t3.Help\t4.Quit"
        enter()
        menu = gets.chomp().to_i
        if menu == 1
            while true
            # The main menu
            puts "Welcome to the Main Menu"
            puts "1.Choose Language\t2.Choose Place\t3.Choose Level\t#.Back To Main Menu"
            enter()
            sub_menu = gets.chomp().to_s
                    if sub_menu == "1"
                        puts "Choose Your Language\n1.Malagasy\t2.Français\t3.English"
                        enter()
                        your_language = gets.chomp().to_i
                        if your_language == 1
                            your_language = LANGUE[0]
                            if your_language == your_language_default
                                puts("Mbola #{your_language} hatrany ny teny ampiasainao.")
                                MG()
                            else
                                your_language_default = your_language
                                puts("Voaova #{your_language} soa aman-tsara ny teninao.")
                                MG()
                            end 
                        elsif your_language == 2
                            your_language = LANGUE[1]
                            if your_language == your_language_default
                                puts("Ton langue de choix est encore #{your_language}")
                                FR()
                            else
                                your_language_default = your_language
                                puts("La Langue est changée en #{your_language}")
                                FR()
                            end 
                        elsif your_language == 3
                            your_language = LANGUE[2]
                            if your_language == your_language_default
                                puts("Your language is still #{your_language}.")
                                EN()
                            else
                                your_language_default = your_language
                                puts("You language has changed into #{your_language}.")
                                EN()
                            end 
                        else 
                            puts "Nothing ..."
                        end

                        return false
                    elsif sub_menu == "2"
                        puts "Choose The places"
                        return false
                    # Choix de niveau or level choice
                    elsif sub_menu == "3"
                        puts "Choose Your level"
                        while true
                            puts "There are 3 levels in this game:"
                            puts "1.Easy\t2.Intermediate\t3.Difficult\t#.Back to the main menu"
                            enter()
                            sub_menu_level = gets.chomp.to_s
                            if sub_menu_level == "1"
                                your_level = LEVEL[0]
                                if your_level == your_level_default
                                    same_level(LEVEL[0])
                                else
                                    your_level_default = your_level
                                    changed(LEVEL[0])
                                end                            
                            elsif sub_menu_level == "2"
                                your_level = LEVEL[1]
                                if your_level == your_level_default
                                    same_level(LEVEL[1])
                                else
                                    your_level_default = your_level
                                    changed_level(LEVEL[1])
                                end
                            elsif sub_menu_level == "3"
                                your_level = LEVEL[2]
                                if your_level == your_level_default
                                    same_level(LEVEL[2])
                                else
                                    your_level_default = your_level
                                    changed_level(LEVEL[2])
                                end
                            elsif sub_menu_level == "#"
                                back("main")
                                break                            
                            else
                                puts "return entering"
                            end
                        end                       
                    elsif sub_menu == "#"
                        back("enter")
                        break
                    else
                        puts "Return again the entering"
                    end    
                end
        # To start a game     
        elsif menu == 2
            puts "The Game"
            if your_level_default == LEVEL[0]
                the_level(LEVEL[0])
                while true
                    puts "Answer These 15 questions"
                    run_test(easy_questions, 0)
                    puts ("Do you want to play it again?(y/n)")
                    enter()
                    playAgain = gets.chomp().to_s
                    if playAgain == "y"
                        puts("you want to do it again")
                    else
                        puts ("Good bye see you next time :-).")
                        break
                    end
                end

            elsif your_level_default == LEVEL[1]
                the_level(LEVEL[1])
                while true
                    puts "Answer These 15 questions"
                    break
                end
            else
                the_level(LEVEL[2])
                while true
                    puts "Answer These 15 questions"
                    break
                end
            end
            break
        # To get a help
        elsif menu == 3
            puts "Welcome to the Help"
            for key, val in Momba
                puts "#{key} : #{val}"
            end 
            break
        # To quit all the menu
        elsif menu == 4
            puts "Do you want really to quit?(y/n)"
            enter()
            quit = gets.chomp.to_s
            if quit == "y"
                puts "Successfully quit"
                break
            elsif quit == "n"
                puts "Welcome back"
                back("enter")            
            else
                puts "I don't know your choice\nSo I quit it by force"
                break            
            end
        else
            puts "You must choose 1 or 2 or 3 or 4"
        end 
    end
end