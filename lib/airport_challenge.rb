class AirportController
  WEATHER = rand(5)
  DEFAULT_CAPACITY = 3

  def takeoff_planes(particular_plane)
    if empty? 
      fail 'No planes at the airport' 
    elsif weather_status?
      fail 'Cannot takeoff due to weather conditions'
    elsif !@planes.include?(particular_plane)
      fail 'the plane is not at the Airport'
    end
    print "plane #{particular_plane} is no longer at the airport"
    @planes.delete_at(@planes.index(particular_plane))
  end

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @weather = WEATHER
    @planes = []   
  end

  def airport(plane)
    if full?
      fail 'Airport is full'
    elsif weather_status?
      fail 'Cannot land due to weather conditions'
    end
    print "plane #{plane} is at the airport"
    @planes << plane
  end

  def weather_status?
    if @weather == 1
      return true
    end

    return false
  end

  def full?
    if @planes.count >= @capacity
      return true
    end

    return false
  end

  def empty?
    if @planes == []
      return true
    end

    return false
  end
  
  attr_reader :planes

  end
