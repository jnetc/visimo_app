import 'package:flutter_visimo/models/customizable_visic.dart';
import 'package:flutter_visimo/models/island.dart';
import 'package:uuid/v4.dart';

const uuid = UuidV4();

class User {
  User({
    this.username = '',
    this.fullname,
    this.currentPos,
    this.localPos,
    this.description,
    this.skills,
    this.visic,
    this.island,
    this.portfolioLinks = const [],
  }) : id = uuid.generate();

  String id;
  String username;
  String? fullname;
  CurrentGeoLocation? currentPos;
  LocalGeoLocation? localPos;
  String? description;
  String? skills;
  List<String>? portfolioLinks;
  CustomizableVisic? visic;
  Island? island;
}

abstract class Location {
  Location({this.latitude, this.longitude});

  double? latitude;
  double? longitude;
}

class CurrentGeoLocation extends Location {
  CurrentGeoLocation({super.latitude, super.longitude, this.address});
  String? address;
}

class LocalGeoLocation extends Location {
  LocalGeoLocation(this.address,
      {required super.latitude, required super.longitude});
  String address;
}
