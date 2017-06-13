class Calendar
  attr_accessor :hours, :hours_finaly
  def initialize(date)
    @date = date
    @hours = Array.new
    @current_hour = Array.new
    @hours_finaly = Array.new
  end

  def next_hour
    if @current_hour.length == 0
      create_day
    end

    if @hours.length > 0
      hr = @hours.first
      @current_hour = hr
      @hours.shift
      return hr[:time_start]
    else
      return nil
    end
  end

  def add(appointment = nil)
    if appointment == nil
      @hours_finaly.push(@current_hour)
    else
      @current_hour[:available] = appointment[:available]
      @current_hour[:name] = appointment[:name]
      @current_hour[:email] = appointment[:email]
      @hours_finaly.push(@current_hour)
    end
  end

  private
    def create_day
      insert_hour('9:00','10:00')
      insert_hour('10:00','11:00')
      insert_hour('11:00','12:00')
      insert_hour('12:00','13:00')
      insert_hour('13:00','14:00')
      insert_hour('14:00','15:00')
      insert_hour('15:00','16:00')
      insert_hour('16:00','17:00')
      insert_hour('17:00','18:00')
    end

    def insert_hour(t_start, t_end)
      hour = { :available => true, :name => '', :email => '', :date => @date, :time_start => t_start.to_s, :time_end => t_end.to_s }

      @hours.push(hour)
    end

end