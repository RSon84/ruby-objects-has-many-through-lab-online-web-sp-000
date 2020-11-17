class Patient
	attr_accessor :name, :date, :doctor
@@all = []
	def initialize(name)
		@name = name
    @@all << self
		@date = []
	end

  def self.all
    @@all
  end

	def new_appointment(doctor, date)
		@date << date
		date.patient = self
	end

	def appointments
		@date
	end

	def doctors
		self.appointments.collect { |appointment| appointment.doctor }
	end
end
