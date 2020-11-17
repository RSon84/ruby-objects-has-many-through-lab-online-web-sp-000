class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def add_appointment(appointment)
    @appointments << appointment
  end

  def appointments
    Appointment.doctor.all
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end
end
