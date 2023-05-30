class Game

    attr_accessor :player1, :player2

    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @is_player1 = true
        @current_player = @player1
    end
    
    def start_game
        puts "Start a game"
        new_question(@current_player)
    end

    def new_question(player)
        @num1 = rand(10)
        @num2 = rand(10)
        puts "#{player.name}: What does #{@num1} plus #{@num2} equals?"
        @answer = gets.chomp.to_i

        if @num1 + @num2 === @answer
            puts "#{player.name}: YES! You are correct."
            puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
        else
            puts "#{player.name}: Seriously? No!"
            player.lives -= 1
            puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
        end

        show_result
    end

    def show_result
        if @current_player.lives > 0
            @is_player1 = !@is_player1

            if @is_player1
                @current_player = @player1
            else
                @current_player = @player2
            end

            puts "---- NEW TURN ----"           
            new_question(@current_player)

        else
            winner = @current_player == @player1 ? @player2 : @player1
            puts "#{winner.name} wins with a score of #{winner.lives}/3"
            puts "---- GAME OVER ----"
            puts "Good bye!"
        end
    end

end
