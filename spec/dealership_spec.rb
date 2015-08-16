require('rspec')
require('dealership')

describe(Dealership) do

  describe('#name') do
    it('returns name of dealership') do
      test_dealership = Dealership.new("Bob's Used Cars")
      expect(test_dealership.name()).to(eq("Bob's Used Cars"))
    end
  end

  describe('#id') do
    it('returns id of dealership') do
      test_dealership = Dealership.new("Bob's Cars")
      expect(test_dealership.id()).to(eq(1))
    end
  end












end
