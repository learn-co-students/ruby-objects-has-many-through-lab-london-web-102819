class Patient 

    attr_accessor :patient, :doctor, :date

    @@all=[]

    def initialize(name)
        @name=name
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end
    
    def appointments
        Appointment.all.select {|ap| ap.patient == self }
    end 

    def doctors
        appointments.map {|ap| ap.doctor}.uniq
    #     artists_songs = songs
    #     g_songs=[]
    #     artists_songs.each {|song| song.genre
    #     if !g_songs.include? genre
    #        g_songs << genre
    #     end 
    # }
    end 

end 