abstract class PositionOnMap {
  PositionOnMap({required this.x, required this.y});
  final double x;
  final double y;
}

enum IslandName {
  sound,
  design,
  technology,
  animation,
  beauty,
  taste,
  feather,
}

class Island extends PositionOnMap {
  Island({
    required this.name,
    required super.x,
    required super.y,
  });

  final IslandName name;
}
