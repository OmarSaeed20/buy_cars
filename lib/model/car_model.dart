import "package:buy_cars/index.dart";

class CarsModel extends Equatable {
  final String image;
  final String name;
  final String? destanc;
  final String? price;
  final String? buildTime;
  final String? privacy;

  const CarsModel({
    required this.image,
    required this.name,
    this.destanc,
    this.price,
    this.buildTime,
    this.privacy,
  });

  @override
  List<Object?> get props => [image, name, destanc, price, buildTime, privacy];
}
