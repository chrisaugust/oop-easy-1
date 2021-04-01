class Banner
  def initialize(message)
    @message = message
    @char_sizing = @message.length + 2
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    rule = "+"
    @char_sizing.times { rule << "-" }
    rule << "+"
  end

  def empty_line
    spaces = ""
    @char_sizing.times { spaces << " " }
    "|#{spaces}|"
  end

  def message_line
    "| #{@message} |"
  end
end

# Complete this class so that the test cases shown below work as intended. 
# You are free to add any methods or instance variables you need. However, do 
# not make the implementation details public.

# Test Cases
banner = Banner.new('To boldly go where no one has gone before.')
puts banner
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
#
banner = Banner.new('')
puts banner
# +--+
# |  |
# |  |
# |  |
# +--+
