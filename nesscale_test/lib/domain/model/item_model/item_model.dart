// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive_flutter/adapters.dart';
part 'item_model.g.dart';

@HiveType(typeId: 4)
class ItemModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String code;
  @HiveField(3)
  final double rate;
  ItemModel({
    required this.id,
    required this.name,
    required this.code,
    required this.rate,
  });
}
