class Doctor

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

  def new_appointment
    Appointment.new(date, patient)
  end
  #   Song.all.select do |song|
  #     song.genre == self
  #   end
  # end

  # def artists
  #   songs.map do |song|
  #     song.artist
  #   end
  # end

end
