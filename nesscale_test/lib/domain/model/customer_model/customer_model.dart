// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:hive_flutter/adapters.dart';
part 'customer_model.g.dart';

@HiveType(typeId: 1)
class CustomerModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final int mobileNum;
  @HiveField(3)
  final String email;
  CustomerModel({
    required this.id,
    required this.name,
    required this.mobileNum,
    required this.email,
  });
}
