require "colorize"

require "./interactive_handler"
require "./ran_gen"

user_opts : InteractiveHandler::PassOptions = InteractiveHandler.ask_questions()

puts (RandomGenerator.gen_random(user_opts)).colorize(:cyan)
