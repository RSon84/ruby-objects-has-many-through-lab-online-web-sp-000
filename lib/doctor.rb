class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    appointment = Appointment.all.select {|appointment| appointment.doctor == self}
    appointment
  end

  def patients
    appointments.map {|appointment| appointment.patient, appointment.doctor}
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end

end
