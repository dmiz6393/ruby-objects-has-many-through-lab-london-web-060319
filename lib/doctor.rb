class Doctor 
    attr_accessor :name 
    @@all=[] 

    def initialize(name)
    @name=name 
    @@all<<self 
    end 

    def self.all
        @@all 
    end 

    def new_appointment(patient,date)
    Appointment.new(patient,date,self)
    end

    def appointments 
    Appointment.all.select {|appointments| self==appointments.doctor}
    end 

    def patients
    appointments.collect {|appointments| appointments.patient}
    end 

end 