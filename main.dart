void main() {
  // Erstelle Instanzen für jede Sub-Klasse
  Milk milk = Milk(
    name: 'Milch',
    manufacturer: 'Müller',
    weight: 1.0,
    price: 1.50,
  );

  Butter butter = Butter(
    name: 'Butter',
    manufacturer: 'Alpenmilch',
    weight: 0.25,
    price: 2.00,
  );

  // Rufe die Methode displayInfo auf
  print('\n--- Milch Info ---');
  milk.displayInfo();

  print('\n--- Butter Info ---');
  butter.displayInfo();
}

class Grocery {
  String name;
  String manufacturer;
  double weight;
  double price;

  // Konstruktor
  Grocery({
    required this.name,
    required this.manufacturer,
    required this.weight,
    required this.price,
  });

  // Eine Methode in der Superklasse
  void displayInfo() {
    print('Name: $name');
    print('Hersteller: $manufacturer');
    print('Gewicht: $weight kg');
    print('Preis: ${price.toStringAsFixed(2)} €');
  }
}

class Milk extends Grocery {
  Milk({
    required String name,
    required String manufacturer,
    required double weight,
    required double price,
  }) : super(
         name: name,
         manufacturer: manufacturer,
         weight: weight,
         price: price,
       );

  // Methode überschreiben (override)
  @override
  void displayInfo() {
    super.displayInfo();
    print('Das ist ein Milchprodukt.\n');
  }
}

class Butter extends Grocery {
  Butter({
    required String name,
    required String manufacturer,
    required double weight,
    required double price,
  }) : super(
         name: name,
         manufacturer: manufacturer,
         weight: weight,
         price: price,
       );

  // Methode überschreiben (override)
  @override
  void displayInfo() {
    super.displayInfo();
    print('Das ist ein Butterprodukt.\n');
  }
}
