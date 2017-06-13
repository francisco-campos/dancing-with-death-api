class ToolsCalendar
  def self.convert_hour(hour)
    return (hour.sub! ':','').to_i
  end

  def self.convert_hour_to_s(hour)
    return hour.to_s
  end

  def self.convert_date(date_str)
    return Date.parse(date_str)
  end

  def self.convert_date_to_s(date)
    return date.to_s
  end
end