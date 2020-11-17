class Appointment
  attr_accessor :doctor, :patient, :name

  def initialize(name, patient, doctor)
    @name = name
    self.patient = patient
    patient.add_appointment(self)
  end
end
