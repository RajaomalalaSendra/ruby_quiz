# Creation of the level menu
def  enter()
    print "> "
end
def back(name)
    print"Back to the #{name} menu"
end

LEVEL = ["Easy","Intermediate","Difficult"]
your_level_default = LEVEL[0]

while true
    puts "There are 3 levels in this game:"
    puts "1.Easy\t2.Intermediate\t3.Difficult\t#.Back to the main menu"
    enter()
    sub_menu_level = gets.chomp.to_s
    if sub_menu_level == "1"
        your_level = LEVEL[0]
        if your_level == your_level_default
            puts "You are already in the easy mode"
        else
            your_level_default = your_level
            puts "Your level has been changed into easy mode"
        end 
    return false                           
    elsif sub_menu_level == "2"
        your_level = LEVEL[1]
        if your_level == your_level_default
            puts "You are already in the intermediate mode"
        else
            your_level_default = your_level
            puts "Your level has been changed into intermediate mode"
        end
    return false
    elsif sub_menu_level == "3"
        your_level = LEVEL[2]
        if your_level == your_level_default
            puts "You are already in the difficult mode"
        else
            your_level_default = your_level
            puts "Your level has been changed into difficult mode"
        end
    return false
    elsif sub_menu_level == "#"
        back("main")
        break                            
    else
        puts "return entering"
    end
end