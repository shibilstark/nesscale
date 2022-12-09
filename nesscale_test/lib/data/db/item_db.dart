import 'package:nesscale_test/data/db/db.dart';
import 'package:nesscale_test/domain/model/item_model/item_model.dart';

class ItemDB {
  static final _box = AppLocalDb.itemBox;

  static Future<bool> createItem(ItemModel model) async {
    await _box.add(model);
    return true;
  }

  static Future<bool> deleteItem(String id) async {
    final items = _box.values.toList();
    items.removeWhere((element) => element.id == id);
    await _box.clear();
    await _box.addAll(items);
    return true;
  }

  static Future<List<ItemModel>> getAllItems() async {
    final customers = _box.values.toList();
    return customers;
  }
}
