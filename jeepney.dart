class Jeepney {
  String route;
  int capacity;

  double _fare;

  Jeepney(this.route, this.capacity, this._fare);

  double getFare() {
    return _fare;
  }
  void setFare(double newFare) {
    if (newFare > 0) {
      _fare = newFare;
      print('Updated fare to: ₱$_fare');
    } else {
      print('Error: Invalid fare amount.');
    }
  }
  void startTrip(int passengers) {
    if (passengers <= capacity) {
      print('Jeepney on route $route is now moving with $passengers passengers.');
    } else {
      print('Warning: Over capacity! Max capacity is $capacity.');
    }
  }
}

void main() {
  Jeepney jeep1 = Jeepney('Monumento - EDSA', 20, 13.0);
  Jeepney jeep2 = Jeepney('Baclaran - Quiapo', 18, 15.0);

  jeep1.startTrip(15);
  jeep2.startTrip(22);

  print('Original fare for Jeep 1: ₱${jeep1.getFare()}');
  jeep1.setFare(15.0);
  print('\n----------------------------------------\n');

  List<Jeepney> jeepneyFleet = [jeep1, jeep2];

  print('Iterating through the Jeepney Fleet List:');
  for (int i = 0; i < jeepneyFleet.length; i++) {
    print('Jeep ${i + 1} Route: ${jeepneyFleet[i].route}, Current Fare: ₱${jeepneyFleet[i].getFare()}');
  }
}