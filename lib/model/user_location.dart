import 'location_cordinate.dart';
import 'location_street.dart';

class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinate coordinates;

  UserLocation({
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.street,
    required this.coordinates,
  });

  factory UserLocation.fromMap(Map<String, dynamic> json) {
    final street = LocationStreet.fromMap(json['street']);

    final coordinates = LocationCoordinate.fromMap(json['coordinates']);

    return UserLocation(
        city: json['city'],
        country: json['country'],
        state: json['state'],
        postcode: json['postcode'].toString(),
        street: street,
        coordinates: coordinates);
  }
}
