// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive_flutter/adapters.dart';
import 'package:nesscale_test/domain/model/invoice_data_model/invoice_data_model.dart';
part 'invoice_model.g.dart';

@HiveType(typeId: 3)
class InvoiceModel {
  @HiveField(0)
  final DateTime date;
  @HiveField(1)
  final String id;
  @HiveField(2)
  final List<InvoiceDateModel> datas;
  @HiveField(3)
  InvoiceModel({
    required this.id,
    required this.datas,
    required this.date,
  });
}
