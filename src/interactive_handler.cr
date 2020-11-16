require "colorize"

module InteractiveHandler

  alias PassOptions = NamedTuple(length: Int64)
  DEFAULT_LENGTH = 8_i64

  private def self.ask_length : Int64
    print "Length for password? [#{DEFAULT_LENGTH}] ".colorize(:green)
    len = if res = (gets || "8")
            res.to_i64? || DEFAULT_LENGTH
          else
            DEFAULT_LENGTH
          end
  end

  # Asks for questions and returns a PassOptions named tuple filled with the user's
  # responses or default values
  def self.ask_questions : PassOptions
    {
      length: ask_length(),
    }
  end
end
