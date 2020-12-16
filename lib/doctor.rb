require_relative 'appointment.rb'
require_relative 'patient.rb'
require 'pry'

class Doctor
    attr_accessor :name


@@all = []
def initialize(name)
     @name = name
    @@all << self
end

def self.all
    @@all
end

def new_appointment(date, patient)
    Appointment.new(date, patient, self)
end

def appointments
    Appointment.all.find_all do |appointment_instance|
        appointment_instance.doctor == self
    end
end

def patients
    appointments.collect do |doctor_appointment|
        doctor_appointment.patient
    end
end





end

