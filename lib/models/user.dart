import 'package:flutter_visimo/models/customizable_visic.dart';
import 'package:flutter_visimo/models/island.dart';
import 'package:uuid/v4.dart';

const uuid = UuidV4();

class User {
  User(
    this.fullname,
    this.currentPos,
    this.localePos,
    this.description,
    this.skills,
    this.visic,
    this.island, {
    required this.username,
    this.portfolioLinks = const [],
  }) : id = uuid.generate();

  final String id;
  final String username;
  final String fullname;
  final CurrentGeoLocation currentPos;
  final LocalGeoLocation localePos;
  final String description;
  final String skills;
  final List<String> portfolioLinks;
  final CustomizableVisic visic;
  final Island island;
}

abstract class Location {
  Location({required this.latitude, required this.longitude});

  final double latitude;
  final double longitude;
}

class CurrentGeoLocation extends Location {
  CurrentGeoLocation({required super.latitude, required super.longitude});
}

class LocalGeoLocation extends Location {
  LocalGeoLocation(this.address,
      {required super.latitude, required super.longitude});
  final String address;
}
