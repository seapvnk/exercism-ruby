

class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError; end
  
  def self.calculate(a, b, operation)
    raise UnsupportedOperation.new unless ALLOWED_OPERATIONS.include? operation

    unless a.is_a?(Integer) and b.is_a?(Integer)
      raise ArgumentError.new
    end

    result = 0
    begin
      case operation
      when '+'
        result = a + b
      when '*'
        result = a * b
      when '/'
        result = a / b
      end
    rescue ZeroDivisionError
      return 'Division by zero is not allowed.'
    end
  
    "#{a} #{operation} #{b} = #{result}"

  end
end
