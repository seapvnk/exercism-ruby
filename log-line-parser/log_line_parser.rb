class LogLineParser
  def initialize(line)
    @line = line

  end

  def message
    get_message @line
  end

  def log_level
    level = get_level @line
    level.downcase
  end

  def reformat
    message = get_message @line
    level = get_level @line
    
    "#{message} (#{level.downcase})"
  end

  private
  def get_level(line)
    line_array = line.split ':'
    level = line_array[0]

    level.gsub(/(\[|\])/, '').strip
  end

  def get_message(line)
    line_array = line.split ':'
    message = line_array[1]

    message.strip
  end

end
