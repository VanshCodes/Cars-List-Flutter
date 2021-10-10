class Car {
  final String name;
  final double price;
  final String path;
  final String color;
  final String gearBox;
  final String fuel;
  final String brand;

  Car({
    required this.name,
    required this.price,
    required this.path,
    required this.color,
    required this.gearBox,
    required this.fuel,
    required this.brand,
  });
}

CarsList allCars = CarsList(cars: [
  Car(
      name: 'Honda Civic 2018',
      price: 123,
      color: 'Grey',
      gearBox: '4',
      fuel: '4L',
      brand: 'Honda',
      path: 'assets/car1.jpg'),
  Car(
      name: 'Land Rover Evoque 2016',
      price: 223,
      color: 'Grey',
      gearBox: '6',
      fuel: '19L',
      brand: 'Land Rover',
      path: 'assets/car2.jpg'),
  Car(
      name: 'Mercedes Benz SLS 2019',
      price: 203,
      color: 'Red',
      gearBox: '5',
      fuel: '6L',
      brand: 'Mercedes',
      path: 'assets/car3.jpg'),
  Car(
      name: 'Audi A6 2018',
      price: 190,
      color: 'Grey',
      gearBox: '5',
      fuel: '6L',
      brand: 'Audi',
      path: 'assets/car4.jpg'),
  Car(
      name: 'Jaguar XF 2019',
      price: 200,
      color: 'White',
      gearBox: '6',
      fuel: '10L',
      brand: 'Jaguar',
      path: 'assets/car5.jpg'),
  Car(
      name: 'Jaguar XF 2019',
      price: 200,
      color: 'White',
      gearBox: '6',
      fuel: '10L',
      brand: 'Jaguar',
      path: 'assets/car5.jpg'),
  Car(
      name: 'Jaguar XF 2019',
      price: 200,
      color: 'White',
      gearBox: '6',
      fuel: '10L',
      brand: 'Jaguar',
      path: 'assets/car5.jpg'),
  Car(
      name: 'Jaguar XF 2019',
      price: 200,
      color: 'White',
      gearBox: '6',
      fuel: '10L',
      brand: 'Jaguar',
      path: 'assets/car5.jpg'),
  Car(
      name: 'Jaguar XF 2019',
      price: 200,
      color: 'White',
      gearBox: '6',
      fuel: '10L',
      brand: 'Jaguar',
      path: 'assets/car5.jpg'),
  Car(
      name: 'Jaguar XF 2019',
      price: 200,
      color: 'White',
      gearBox: '6',
      fuel: '10L',
      brand: 'Jaguar',
      path: 'assets/car5.jpg'),
  Car(
      name: 'Jaguar XF 2019',
      price: 200,
      color: 'White',
      gearBox: '6',
      fuel: '10L',
      brand: 'Jaguar',
      path: 'assets/car5.jpg'),
  Car(
      name: 'BMW E-1 2018',
      price: 123,
      color: 'Grey',
      gearBox: '6',
      fuel: '6L',
      brand: 'BMW',
      path: 'assets/car6.jpg'),
]);

class CarsList {
  List<Car> cars;

  CarsList({required this.cars});
}
