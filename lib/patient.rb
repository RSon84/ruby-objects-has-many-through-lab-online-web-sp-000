class Patient
  attr_accessor :name#, :doctor, :appointment

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end

  def appointments
    Appointment.all.select { |apt| apt.patient == self }
  end

  def doctors
    appointments.collect { |apt| apt.doctor }
  end

end
