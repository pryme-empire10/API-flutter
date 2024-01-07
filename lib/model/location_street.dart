class LocationStreet {
  final String name;
  final String number;

  LocationStreet({
    required this.name,
    required this.number,
  });

  factory LocationStreet.fromMap(Map<String, dynamic> json) {
    return LocationStreet(
      name: json['name'],
      number: json['number'].toString(),
    );
  }
}
