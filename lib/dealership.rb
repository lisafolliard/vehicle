class Dealership
  @@dealerships = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@dealerships.length().+(1)
    # cars array will contain all of the vehicle objects for a Dealership instance
    @cars = []
  end

  define_method(:name) do
    @name
  end

  define_method(:id) do
    @id
  end

  define_method(:cars) do
    @cars
  end

  define_method(:save) do
    @@dealerships.push(self)
  end

# takes a vehicle object as an argument and pushes it into the dealership's @cars array property
  define_method(:add_vehicle) do |vehicle|
    @cars.push(vehicle)
  end

  define_singleton_method(:all) do
    @@dealerships
  end

  define_singleton_method(:clear) do
    @@dealerships = []
  end

  define_singleton_method(:find) do |id|
    found_dealership = nil
    @@dealerships.each() do |dealership|
      if dealership.id().eql?(id)
        found_dealership = dealership
      end
    end
    found_dealership
  end




end
