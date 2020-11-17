class Doctor
  @@all=[]

  def self.all
    @@all
  end

  attr_accessor :name, :appointments, :patient

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

def new_appointment(date, patient)
  appointment = Appointment.new(patient, date, self)
  @appointments << appointment
  appointment
end
end
