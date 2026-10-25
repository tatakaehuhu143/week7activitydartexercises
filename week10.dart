// 1. Add a mixin using 'mixin' keyword
mixin Maintenance {
  void checkEngine() {
    print('Routine maintenance check: Engine is running smoothly.');
  }
}

// 2. Add an abstract class or interface defining a contract
abstract class FareCalculator {
  double computeTotalFare(int distanceInKm);
}

// 3. Base class
class Vehicle {
  String route;
  int capacity;
  double _fare; // Encapsulation

  Vehicle(this.route, this.capacity, this._fare);

  double getFare() => _fare;

  void startTrip(int passengers) {
    if (passengers <= capacity) {
      print('Vehicle on route $route is moving with $passengers passengers.');
    } else {
      print('Warning: Over capacity!');
    }
  }
}

// 4. Derived class 1
class TraditionalJeepney extends Vehicle implements FareCalculator {
  TraditionalJeepney(String route, int capacity, double fare)
      : super(route, capacity, fare);

  @override
  void startTrip(int passengers) {
    print('Traditional Jeepney rumbling down $route with $passengers passengers.');
  }

  @override
  double computeTotalFare(int distanceInKm) {
    return _fare + (distanceInKm * 2.0);
  }
}

// 4. Derived class 2 (Gumagamit ng 'with' para sa mixin at 'implements' para sa abstract class)
class ModernJeepney extends Vehicle with Maintenance implements FareCalculator {
  bool hasAircon;

  ModernJeepney(String route, int capacity, double fare, this.hasAircon)
      : super(route, capacity, fare);

  @override
  void startTrip(int passengers) {
    print('Modern Aircon Jeepney smoothly cruising along $route with $passengers passengers.');
  }

  @override
  double computeTotalFare(int distanceInKm) {
    return _fare + (distanceInKm * 2.5);
  }
}

void main() {
  TraditionalJeepney tradJeep = TraditionalJeepney('Monumento', 20, 13.0);
  ModernJeepney modernJeep = ModernJeepney('PITX - Fairview', 24, 15.0, true);

  tradJeep.startTrip(15);
  print('Traditional Fare Calculation: ₱${tradJeep.computeTotalFare(5)}');

  print('----------------------------------------');

  modernJeep.startTrip(20);
  print('Modern Fare Calculation: ₱${modernJeep.computeTotalFare(5)}');

  // Calling the Mixin method
  modernJeep.checkEngine();
}