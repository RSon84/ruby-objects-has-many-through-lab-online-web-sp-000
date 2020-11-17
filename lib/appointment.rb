class Appointment
  attr_accessor :date, :doctor, :patient

  @@all = Array.new

  def initialize(date, doctor, patient)
    @date = date#.strftime("%A, %B %d")
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end
end
