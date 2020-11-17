require "colorize"

require "./interactive_handler"
require "./ran_gen"

user_opts : InteractiveHandler::PassOptions = InteractiveHandler.ask_questions()

puts
puts "\t#{RandomGenerator.gen_random(user_opts)}".colorize(:cyan)
puts
