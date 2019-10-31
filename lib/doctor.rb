class Doctor

    attr_accessor :doctor, :patient, :date, :name

    @@all=[]

    def initialize(name)
        @name = name
        @@all << self
    end 

    def new_appointment(patient, date)
        @patient =patient
        @date = date 
        Appointment.new(date, patient, self)
    end 

    def appointments
        Appointment.all.select {|ap| ap.doctor == self}
    end

    def patients
        appointments.map {|ap| ap.patient}.uniq
        # ap_with_patients=appointments
        # ap=[]
        # ap_with_patients.each{|appointment| appointment.patient
        # if !ap.include? @patient
        #     ap << patient
        # end }


    end 

    def self.all
        @@all

    end 


end 