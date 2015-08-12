require('rspec')
require('vehicle')

describe('Vehicle') do

  describe('#make') do
    it('returns the make of the vehicle') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      # test_vehicle.save()
      expect(test_vehicle.make()).to(eq("Toyota"))
    end
  end



end
