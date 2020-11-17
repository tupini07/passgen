require "colorize"

module InteractiveHandler
  DEFAULT_LENGTH = 8_i64

  alias PassOptions = NamedTuple(
    length: Int64,
    use_lowercase: Bool,
    use_uppercase: Bool,
    use_numbers: Bool,
    use_symbols: Bool,
  )

  private def self.ask_length : Int64
    print "Length for password? [#{DEFAULT_LENGTH}] ".colorize(:green)
    if res = (gets || "8")
      res.to_i64? || DEFAULT_LENGTH
    else
      DEFAULT_LENGTH
    end
  end

  private def self.ask_bool(question : String) : Bool
    print question.colorize(:green)
    if res = (gets || "y")
      res == "" || res.downcase == "y"
    else
      true
    end
  end

  # Asks for questions and returns a PassOptions named tuple filled with the user's
  # responses or default values
  def self.ask_questions : PassOptions
    {
      length:        ask_length(),
      use_numbers:   ask_bool("Numbers (0..1)? [n/Y] "),
      use_lowercase: ask_bool("Lowercase (a..z)? [n/Y] "),
      use_uppercase: ask_bool("Uppercase (A..Z)? [n/Y] "),
      use_symbols:   ask_bool("Symbols (!@#$%^&*()_+~)? [n/Y] "),
    }
  end
end
