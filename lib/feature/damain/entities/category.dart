import 'package:equatable/equatable.dart';

class Category extends Equatable{
  final int id;
  final String categoryName;
  final double categoryAmount;
  final String categoryDate;
  final String image;


  const Category( {
    required this.id,
    required this.categoryName,
    required this.categoryAmount,
    required this.image,
    required this.categoryDate
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    id,
    categoryName,
    categoryAmount,
    image,
    categoryDate
  ];

}