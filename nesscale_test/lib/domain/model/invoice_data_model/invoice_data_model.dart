import 'package:hive_flutter/adapters.dart';
import 'package:nesscale_test/domain/model/customer_model/customer_model.dart';
import 'package:nesscale_test/domain/model/item_model/item_model.dart';
part 'invoice_data_model.g.dart';

@HiveType(typeId: 2)
class InvoiceDateModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final CustomerModel custemor;
  @HiveField(2)
  final List<ItemModel> items;

  InvoiceDateModel({
    required this.id,
    required this.custemor,
    required this.items,
  });
}
