class Doctor
  attr_accessor :name, :appointment, :patient

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def appointments
    Appointment.all.select do |apt|
      apt.doctor == self
      #binding.pry
    end
  end

  def patients
    appointments.collect { |apt| apt.patient }
  end
end
