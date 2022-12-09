import 'package:nesscale_test/core/text/text.dart';
import 'package:nesscale_test/data/db/custemor_db.dart';
import 'package:nesscale_test/domain/model/customer_model/customer_model.dart';
import 'package:nesscale_test/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:nesscale_test/domain/respository/customer_repository/customer_repository.dart';
import "package:injectable/injectable.dart";

@LazySingleton(as: CustomerRepository)
class CustomerRepositoryImpl implements CustomerRepository {
  @override
  Future<Either<bool, AppFailure>> createNewCustomer(
      CustomerModel customerModel) async {
    try {
      final result = await CustomerDB.createNewCustomer(customerModel);
      return Left(result);
    } catch (e) {
      return const Right(AppFailure(message: AppMessages.errorMessage));
    }
  }

  @override
  Future<Either<bool, AppFailure>> deleteCustomer(String id) async {
    try {
      final result = await CustomerDB.deleteCustomer(id);
      return Left(result);
    } catch (e) {
      return const Right(AppFailure(message: AppMessages.errorMessage));
    }
  }

  @override
  Future<Either<List<CustomerModel>, AppFailure>> getAllCustomers() async {
    try {
      final result = await CustomerDB.getAllCustomer();
      return Left(result);
    } catch (e) {
      return const Right(AppFailure(message: AppMessages.errorMessage));
    }
  }
}
