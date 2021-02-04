class Patient

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end


  

  # def artists
  #   songs.map do |song|
  #     song.artist
  #   end
  # end

end
