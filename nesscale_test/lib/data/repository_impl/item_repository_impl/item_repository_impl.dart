import 'package:nesscale_test/core/text/text.dart';
import 'package:nesscale_test/data/db/item_db.dart';
import 'package:nesscale_test/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:nesscale_test/domain/model/item_model/item_model.dart';
import 'package:nesscale_test/domain/respository/items_repository/items_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ItemsRepository)
class ItemReposrtoryImpl implements ItemsRepository {
  @override
  Future<Either<bool, AppFailure>> createNewItem(
      ItemModel customerModel) async {
    try {
      final result = await ItemDB.createItem(customerModel);
      return Left(result);
    } catch (e) {
      return const Right(AppFailure(message: AppMessages.errorMessage));
    }
  }

  @override
  Future<Either<bool, AppFailure>> deleteItem(String id) async {
    try {
      final result = await ItemDB.deleteItem(id);
      return Left(result);
    } catch (e) {
      return const Right(AppFailure(message: AppMessages.errorMessage));
    }
  }

  @override
  Future<Either<List<ItemModel>, AppFailure>> getAllItems() async {
    try {
      final result = await ItemDB.getAllItems();
      return Left(result);
    } catch (e) {
      return const Right(AppFailure(message: AppMessages.errorMessage));
    }
  }
}
