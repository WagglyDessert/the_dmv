require 'spec_helper'

RSpec.describe Facility do
  before(:each) do
    @facility_1 = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
    @facility_2 = Facility.new({name: 'DMV Northeast Branch', address: '4685 Peoria Street Suite 101 Denver CO 80239', phone: '(720) 865-4600'})
    @cruz = Vehicle.new({vin: '123456789abcdefgh', year: 2012, make: 'Chevrolet', model: 'Cruz', engine: :ice} )
    @bolt = Vehicle.new({vin: '987654321abcdefgh', year: 2019, make: 'Chevrolet', model: 'Bolt', engine: :ev} )
    @camaro = Vehicle.new({vin: '1a2b3c4d5e6f', year: 1969, make: 'Chevrolet', model: 'Camaro', engine: :ice} )
  end
  
  it 'can add service' do
    @facility_1.add_service('Vehicle Registration')
    expect(@facility_1.services).to eq(['Vehicle Registration'])
   end

  it 'can check registration date' do
    expect(@cruz.registration_date).to eq(nil)
  end

  it 'can collect fees' do
    expect(@facility_1.collected_fees).to eq(0)
  end

  it 'can register a cruz' do
    @facility_1.register_vehicle(@cruz)
    expect(@registered_vehicles).to eq([@cruz])
    expect(@cruz.registration_date).to eq(Time.now)
    expect(@cruz.plate_type).to eq(:regular)
    expect(@facility_1.registered_vehicles).to eq(@cruz)
    expect(@facility_1.collected_fees).to eq(100)
  end

  xit 'can register a Camaro' do

  end
end
#require 'pry';binding.pry