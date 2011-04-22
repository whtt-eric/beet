module Beet
  module Interaction
    # Print text to the console
    #
    # ==== Example
    #
    #   say("This is the default. You probably shouldn't change it.")
    #
    def say(string)
      log '', string
    end

    # Get a user's input
    #
    # ==== Example
    #
    #   answer = ask("Should I freeze the latest Rails?")
    #   freeze! if ask("Should I freeze the latest Rails?") == "yes"
    #
    def ask(string)
      say(string)
      print '> '
      STDIN.gets.strip
    end

    # Helper to test if the user says yes(y)?
    #
    # ==== Example
    #
    #   freeze! if yes?("Should I freeze the latest Rails?")
    #
    def yes?(question)
      answer = ask(question).downcase
      answer == "y" || answer == "yes"
    end

    # Helper to test if the user does NOT say yes(y)?
    #
    # ==== Example
    #
    #   capify! if no?("Will you be using vlad to deploy your application?")
    #
    def no?(question)
      !yes?(question)
    end
  end
end
