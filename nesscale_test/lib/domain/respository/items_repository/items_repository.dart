import 'package:dartz/dartz.dart';
import 'package:nesscale_test/core/failures/failure.dart';
import 'package:nesscale_test/domain/model/customer_model/customer_model.dart';
import 'package:nesscale_test/domain/model/item_model/item_model.dart';

abstract class ItemsRepository {
  Future<Either<bool, AppFailure>> createNewItem(ItemModel customerModel);
  Future<Either<bool, AppFailure>> deleteItem(String id);
  Future<Either<List<ItemModel>, AppFailure>> getAllItems();
}
