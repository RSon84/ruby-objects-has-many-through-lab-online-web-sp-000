class Patient
	attr_accessor :name

	def initialize(name)
		@name = name
		@appointments = []
	end

	def new_appointment(doctor, appointment)
		@appointments << appointment
		appointment.patient = self
	end

	def appointments
		@appointments
	end

	def doctors
		self.appointments.collect { |appointment| appointment.doctor }
	end
end
