# Ask name and store it in a variable called name.
puts "Hi friend! What is your name?"
name = gets 

puts "Are you a boy or girl?"
gender = gets

puts "How old are you?"
age = gets

puts "Great! Let's play."

word_bank = ["YELLOW", "BLUE", "RED"]

game_options = ["A","B"]

puts "\e[H\e[2J"  #clear the user's screen
puts "

The word bandit mixed up all of the words in the dictionary. Can you unmix them?


                A  EASY
                B  HARD


"

opening_screen_choice = gets.chomp.upcase
first_problem = word_bank.last
scrambled_first_problem = first_problem.split(//).sort_by{rand}.join
      #^^Scrambles the letters of the last member of word_bank array
word_bank.pop
      #^^removes the last member of the word_bank array


  if !game_options.include?(opening_screen_choice)
    puts "\e[H\e[2J"
    print "
    That's too easy. Let me choose for you:  B.    Unscramble this:
    #{scrambled_first_problem}
    "
    elsif opening_screen_choice == "A"
      puts "\e[H\e[2J"
      print "
      That's too easy.  Try B.  Unscramble this:
      #{scrambled_first_problem}
      "
    elsif opening_screen_choice == "B"
      puts "\e[H\e[2J"
      print "
      Yep!  Unscramble this:
      #{scrambled_first_problem}
      "
  end

first_unscramble_response = gets.chomp #user's response of unscrambled word
first_unscramble_response1 = first_unscramble_response.upcase #This puts response in all caps

  if
    first_problem == first_unscramble_response1 #respose and original word
    puts "\e[H\e[2J"
    print "
    You got it right!

    YAY!!!


    Type A for easy, B to be hard


    "
    second_problem_choice = gets.chomp.upcase
    second_problem = word_bank.last
    scrambled_second_problem = second_problem.split(//).sort_by{rand}.join
    word_bank.pop

      if !game_options.include?(second_problem_choice)
        puts "\e[H\e[2J"
        print "
        Let's try B.
        Unscramble this:   #{scrambled_second_problem}

        "
        second_unscramble_response = gets.chomp.upcase
      elsif second_problem_choice == "A"
        puts "\e[H\e[2J"
        print "
        Great job, let's try a harder one
        Unscramble this:   #{scrambled_second_problem}

        "
        second_unscramble_response = gets.chomp.upcase
      else
        puts "\e[H\e[2J"
        print "
        Yipee!!!
        Now, solve this:   #{scrambled_second_problem}

        "
        second_unscramble_response = gets.chomp.upcase
      end

    second_unscramble_response1 = second_unscramble_response.upcase
    third_problem = word_bank.last
    scrambled_third_problem = third_problem.split(//).sort_by{rand}.join
    word_bank.pop

      if
        second_problem == second_unscramble_response1
        puts "\e[H\e[2J"
        print "
        Yay, you're so smart!


        This is the hardest one, you can do it!!:


        Unscramble this:  #{scrambled_third_problem}



        "
        third_unscramble_response = gets.chomp.upcase
          if third_problem == third_unscramble_response.upcase
            puts "\e[H\e[2J"
            print "

    YOU DID IT!!!!

You unscrambled #{first_problem},
... and then #{second_problem}
... and finally #{third_problem}


              "

          else
            puts "\e[H\e[2J"
            print "


            Ouch.
            You must have a case of the #{third_problem}s, because the word bandit tricked to spell 
            #{third_unscramble_response} to unscramble #{scrambled_third_problem}

        Next time!!
"

          end

      else
        puts "\e[H\e[2J"
        print "

        Put your thinking cap on.  Because you thought #{second_unscramble_response} was
        the unscrambled word #{scrambled_second_problem}.

        You must read and study your colors:  #{second_problem}

        Try again later


        "
      end


  else
    puts "\e[H\e[2J"
    print "

    Want to try again?


      Type A to try again
      Type B to quit

    "

    try_again_choice = gets.chomp.upcase
    if try_again_choice == "A"
      puts "\e[H\e[2J"
      print "
      So proud of you!

      Let's do this:

      #{scrambled_first_problem}

      "
      first_unscramble_response = gets.chomp #user's response of unscrambled word
      first_unscramble_response1 = first_unscramble_response.upcase #This puts response in all caps

        if
          first_problem == first_unscramble_response1 #response and original word
          puts "\e[H\e[2J"
          print "
          You go it!

    YES!!!


Type A for easy, B to be hard



          "
          second_problem_choice = gets.chomp.upcase
          second_problem = word_bank.last
          scrambled_second_problem = second_problem.split(//).sort_by{rand}.join
          word_bank.pop

            if !game_options.include?(second_problem_choice)
              puts "\e[H\e[2J"
              print "
              Try Again...  Let's try to B.
              Unscramble this:   #{scrambled_second_problem}

              "
              second_unscramble_response = gets.chomp.upcase
            elsif second_problem_choice == "A"
              puts "\e[H\e[2J"
              print "
              Good job! That's too easy, here's a harder one:
              Unscramble this:   #{scrambled_second_problem}

              "
              second_unscramble_response = gets.chomp.upcase
            else
              puts "\e[H\e[2J"
              print "
              Wonderful.  
              Now, unscramble this:   #{scrambled_second_problem}

              "
              second_unscramble_response = gets.chomp.upcase
            end

          second_unscramble_response1 = second_unscramble_response.upcase
          third_problem = word_bank.last
          scrambled_third_problem = third_problem.split(//).sort_by{rand}.join
          word_bank.pop

            if
              second_problem == second_unscramble_response1
              puts "\e[H\e[2J"
              print "
              You're AWESOME


             This is the hardest one:


              Unscramble this:  #{scrambled_third_problem}



              "
              third_unscramble_response = gets.chomp.upcase
                if third_problem == third_unscramble_response.upcase
                  puts "\e[H\e[2J"
                  print "


              You Defeated the Word Bandit!!!

                     You unscrambled #{first_problem},
                     ... and then #{second_problem}
                     ... and finally #{third_problem}

                    "

                else
                  puts "\e[H\e[2J"
                  print "

      Ahh man try again, the Word Bandit must be stopped!
      The Bandit have given you a case of the #{third_problem}s, because you thought
      #{third_unscramble_response} was how to unscramble #{scrambled_third_problem}

                    "
                end

            else
              puts "\e[H\e[2J"
              print "


              Ahh man try again, the Word Bandit must be stopped!
              The Bandit have given you a case of the #{third_problem}s, because you thought
              #{third_unscramble_response} was how to unscramble #{scrambled_third_problem}

  
              "
            end
          end

    else
      puts "\e[H\e[2J"
      print You are the greatest!
    end
end

