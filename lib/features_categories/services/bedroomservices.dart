class Bedroom_Service {
  final String name;
  final String image;
  final String description;
  final String rating;

  Bedroom_Service(
    this.name,
    this.image,
    this.description,
    this.rating,
  );

  static List<Bedroom_Service> bedroomservice = [
    Bedroom_Service('BRIMNES', 'assets/images/design.jpg',
        'This is a description of the service that is provided.', "5.0"),
    Bedroom_Service('GURSKEN', 'assets/images/design.jpg',
        'This is a description of the service that is provided.', "4.8"),
    Bedroom_Service('HAUGA', 'assets/images/design.jpg',
        'This is a description of the service that is provided.', "3.0"),
    Bedroom_Service('HEMNES', 'assets/images/design.jpg',
        'This is a description of the service that is provided.', "3.5"),
    Bedroom_Service('IDANAS', 'assets/images/design.jpg',
        'This is a description of the service that is provided.', "4.5"),
    Bedroom_Service('MALM', 'assets/images/design.jpg',
        'This is a description of the service that is provided.', "4.9"),
    Bedroom_Service('NORDLI', 'assets/images/design.jpg',
        'This is a description of the service that is provided.', "2.5"),
  ];
}
