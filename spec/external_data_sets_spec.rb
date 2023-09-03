require 'spec_helper'

RSpec.describe Facility do
  before(:each) do
    wa_ev_registrations = DmvDataService.new.wa_ev_registrations
    @factory = VehicleFactory.new
  end

  it 'can initialize' do
    expect(@factory).to be_an_instance_of(VehicleFactory)
  end

  it 'can find vehicle data using washington dmv api' do
    #require 'pry';binding.pry
    #expect(@factory.create_vehicles(wa_ev_registrations).first).to eq(Vehicle:0x000000012d3812f0 @engine=:ev, @make="TOYOTA", @model="Prius Plug-in", @plate_type=nil, @registration_date=nil, @vin="JTDKN3DP8D", @year="2013")
  end

end

wa_ev_registrations = DmvDataService.new.wa_ev_registrations
@factory = VehicleFactory.new
@factory.create_vehicles(wa_ev_registrations)