class Patient
	attr_accessor :name, :appointment, :doctor
@@all = []
	def initialize(name)
		@name = name
    @@all << self
		@appointment = []
	end

  def self.all
    @@all
  end

	def new_appointment(appointment, doctor)
    appointment = Appointment.new(appointment, self, doctor)
    @appointment << appointment
		appointment.patient = self
	end

	def appointments
		@appointment
	end

	def doctors
		self.appointments.collect { |appointment| appointment.doctor }
	end
end
