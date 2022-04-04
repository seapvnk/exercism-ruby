class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    
    rate = 0
    
    case @speed
    when 1..4
      rate = 1
    when 5..8
      rate = 0.9
    when 9
      rate = 0.8
    when 10
      rate = 0.77
    end

    (@speed * 221) * rate

  end

  def working_items_per_minute
    Integer(production_rate_per_hour / 60)  
  end
end
