import 'package:dartz/dartz.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nesscale_test/domain/model/customer_model/customer_model.dart';
import 'package:nesscale_test/domain/model/invoice_data_model/invoice_data_model.dart';
import 'package:nesscale_test/domain/model/invoice_model/invoice_model.dart';
import 'package:nesscale_test/domain/model/item_model/item_model.dart';

class AppLocalDb {
  static late final Box<CustomerModel> customerBox;
  static late final Box<ItemModel> itemBox;

  static initialize() async {
    await Hive.initFlutter();
    await _registerHiveAdapters();
    customerBox = await Hive.openBox<CustomerModel>('customer_box');
    itemBox = await Hive.openBox<ItemModel>('item_box');
  }
}

_registerHiveAdapters() async {
  if (!Hive.isAdapterRegistered(InvoiceDateModelAdapter().typeId)) {
    Hive.registerAdapter(InvoiceDateModelAdapter());
  }
  if (!Hive.isAdapterRegistered(InvoiceModelAdapter().typeId)) {
    Hive.registerAdapter(InvoiceModelAdapter());
  }
  if (!Hive.isAdapterRegistered(ItemModelAdapter().typeId)) {
    Hive.registerAdapter(ItemModelAdapter());
  }
  if (!Hive.isAdapterRegistered(CustomerModelAdapter().typeId)) {
    Hive.registerAdapter(CustomerModelAdapter());
  }
}
