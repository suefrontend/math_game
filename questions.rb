#  How to generate questions?

def question
    answer = 8
    puts "What does 2 plus 6 equals?"
    player_answer = gets.chomp.to_i

    # Check answer
    if answer === player_answer
        puts "YES! You are correct."
    else
        puts "Seriously? No!"
    end
end
