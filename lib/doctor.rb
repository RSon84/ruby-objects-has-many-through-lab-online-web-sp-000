class Doctor
  attr_accessor :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end
end
