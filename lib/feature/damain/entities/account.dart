

import 'package:equatable/equatable.dart';

class Account extends Equatable{
 final  int id;
 final String name;
 final  double amount;

  const Account({
    required this.id,
    required this.name,
    required this.amount
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    id,
    name,
    amount
  ];
}