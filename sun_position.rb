class SunPosition

  # Epoch refers to 2010 January 0.0

  attr_reader :julian_date

  def initialize datetime=nil
    jdate = datetime ? datetime : DateTime.now
    @julian_date = jdate.ajd.to_f
  end


  # longitude of the Sun
  def longitude #λ₀
    (n + ec + εg) % 360
  end

  private

  def ec
    mean_anomaly_in_radians = mean_anomaly * Math::PI / 180
    (360 / Math::PI) * e * Math.sin(mean_anomaly_in_radians)
  end


  # If the Earth moves in a circle around the Earth at a Constant speed, rather
  # than an ellipse, this is the angle (M₀, mean anomaly) the Sun would have moved
  # since it passed through perigee

  def mean_anomaly
    mean_anomaly = n + εg - ώg
    mean_anomaly < 0 ? mean_anomaly + 360 : mean_anomaly
  end

  def n
    ((360 / 365.242191) * days_since_epoch) % 360
  end

  def days_since_epoch
    julian_date - 2455196.5
  end

  # ecliptic longitude at epoch 2010.0
  def εg
    279.557208
  end

  # ecliptic longitude of perigee at epoch 2010.0
  def ώg
    283.112438
  end

  # eccentricity of orbit at epoch 2010.0
  def e
    0.016705
  end
end

