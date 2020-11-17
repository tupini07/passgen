require "./interactive_handler"

module RandomGenerator
  # This method will generate
  def self.gen_random(user_opts : InteractiveHandler::PassOptions) : String
    distr = ('a'..'z').to_a +
            ('A'..'Z').to_a +
            "!@#$%^&*()_+~".chars +
            ('0'..'9').to_a

    res = (1..user_opts[:length]).map { distr.sample }

    res.join
  end
end
