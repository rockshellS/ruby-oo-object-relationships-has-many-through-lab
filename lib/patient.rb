require_relative 'appointment.rb'
require_relative 'doctor.rb'
require 'pry'

class Patient
    attr_accessor :name


@@all = []
def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end


# The `Patient` class needs an instance method, `#new_appointment`, that takes
# in a date and an instance of the `Doctor` class *in this order* and creates a
# new `Appointment`. The `Appointment` should know that it belongs to the
# patient.
def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
end



# The `Patient` class needs an instance method, `#appointments`, that iterates
# through the `Appointment`s array and returns `Appointment`s that belong to the
# patient.

def appointments
    Appointment.all.find_all do |appointment_instance|
        appointment_instance.patient == self
    end
end

# - The `Patient` class needs an instance method, `#doctors`, that iterates over
#   that patient's `Appointment`s and collects the doctor that belongs to each
#   `Appointment`.

def doctors
    appointments.collect do |appointment|
    appointment.doctor
   end
end



end




