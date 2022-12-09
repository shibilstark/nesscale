import 'package:dartz/dartz.dart';
import 'package:nesscale_test/core/failures/failure.dart';
import 'package:nesscale_test/domain/model/customer_model/customer_model.dart';

abstract class CustomerRepository {
  Future<Either<bool, AppFailure>> createNewCustomer(
      CustomerModel customerModel);
  Future<Either<bool, AppFailure>> deleteCustomer(String id);
  Future<Either<List<CustomerModel>, AppFailure>> getAllCustomers();
}
