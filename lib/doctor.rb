class Doctor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select { |appointment| appointment.doctor == self }
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        patient_list = self.appointments.map { |appointment| appointment.date }
        patient_list.uniq
    end

end