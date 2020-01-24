import 'package:jsonplaceholder_offline/models/base.dart';

class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  User(
      {this.name,
      this.address,
      this.company,
      this.email,
      this.id,
      this.phone,
      this.username,
      this.website});

  // @override
  // User fromJson(Map<String, dynamic> json) {
  //   return User(
  //       email: json['email'],
  //       id: json['id'],
  //       name: json['name'],
  //       username: json['username'],
  //       phone: json['phone'],
  //       website: json['website'],
  //       address: Address.fromJson(json['address']),
  //       company: Company.fromJson(json['company']));
  // }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        email: json['email'],
        id: json['id'],
        name: json['name'],
        username: json['username'],
        phone: json['phone'],
        website: json['website'],
        address: Address.fromJson(json['address']),
        company: Company.fromJson(json['company']));
  }
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final GeoLocation geo;

  Address({this.city, this.geo, this.street, this.suite, this.zipcode});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      city: json['city'],
      suite: json['suite'],
      zipcode: json['zipcode'],
      geo: GeoLocation.fromJson(json['geo']),
    );
  }
}

class GeoLocation {
  final String lat;
  final String lng;

  GeoLocation({this.lat, this.lng});

  factory GeoLocation.fromJson(Map<String, dynamic> json) {
    return GeoLocation(lat: json['lat'], lng: json['lng']);
  }
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({this.bs, this.catchPhrase, this.name});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
        name: json['name'], catchPhrase: json['catchPhrase'], bs: json['bs']);
  }
}
