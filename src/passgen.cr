require "./interactive_handler"
require "colorize"

# This method will generate
def gen_random(num : Int64) : String
  ppp = ('a'..'z').to_a +
        ('A'..'Z').to_a +
        "!@#$%^&*()_+~".chars +
        ('0'..'9').to_a

  res = (1..num).map { ppp.sample }

  res.join
end

user_opts = InteractiveHandler.ask_questions()

puts (gen_random user_opts[:length]).colorize(:cyan)
