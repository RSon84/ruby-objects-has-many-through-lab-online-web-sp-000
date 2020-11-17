class Appointment

  attr_accessor :date, :patient, :doctor
  @@all = []

  def initialize(patient, date, doctor)
    @patient = patient
    @date = date
    @doctor = doctor
    @@all << self
  end

  def patient(doctor, date)
    @doctor = Doctor.new(doctor)
    @patient = Patient.new(patient)
    @date = @patient.new_appointment(date, doctor)
  end

  def self.all
    @@all
  end
end
