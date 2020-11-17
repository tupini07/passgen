require "./interactive_handler"

module RandomGenerator
  # This method will generate
  def self.gen_random(user_opts : InteractiveHandler::PassOptions) : String
    len = user_opts[:length]

    distr = [] of Char

    distr += ('a'..'z').to_a if user_opts[:use_lowercase]
    distr += ('A'..'Z').to_a if user_opts[:use_uppercase]
    distr += ('0'..'9').to_a if user_opts[:use_numbers]
    distr += "!@#$%^&*()_+~".chars if user_opts[:use_symbols]

    if distr.empty?
      puts "Error: Must enable at least one character source".colorize(:red)
      exit 1
    end

    res = (1..len).map { distr.sample }

    res.join
  end
end
