import 'package:nesscale_test/data/db/db.dart';
import 'package:nesscale_test/domain/model/customer_model/customer_model.dart';

class CustomerDB {
  static final _box = AppLocalDb.customerBox;

  static Future<bool> createNewCustomer(CustomerModel model) async {
    await _box.add(model);
    return true;
  }

  static Future<bool> deleteCustomer(String id) async {
    final customers = _box.values.toList();
    customers.removeWhere((element) => element.id == id);
    await _box.clear();
    await _box.addAll(customers);
    return true;
  }

  static Future<List<CustomerModel>> getAllCustomer() async {
    final customers = _box.values.toList();
    return customers;
  }
}
